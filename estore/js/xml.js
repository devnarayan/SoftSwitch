

//-----------------------------------------------------------------------------
// Creates a DOM document, with the proper parameters set, version 1.1
//-----------------------------------------------------------------------------
function newXMLDocument() {
	var xml = createActiveXObject("MSXML2.FreeThreadedDOMDocument.4.0");
	// var xml = createActiveXObject("MSXML2.DOMDocument.4.0");
	xml.setProperty( "SelectionLanguage", "XPath" ); // i.e. not XSLT
	xml.resolveExternals = 0;
	xml.validateOnParse = 0;
	// xml.preserveWhiteSpace = true;

	try {
		// configure the document to allow for Microsoft extensions within XPath
		xml.setProperty("SelectionNamespaces", "xmlns:ms='urn:schemas-microsoft-com:xslt' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'" );
		xml.setProperty("NewParser", true ); // 2 - 4x performance improvement, NO async, NO DTD validation
	} catch (e) {
		delete e;
	}	
		
	return xml;
}

// creates the XML HTTP Object.  Creates a ServerXMLHTTP is possible, 
// otherwise returns a XMLHTTP (for Windows '98).
function newXMLHTTP( strMethod, strURL ) {
		
	try {
		var bServerHTTP = false;
		var bOpen = false;

		if( typeof( cust ) != 'undefined' )
			var xml = cust.xml;
		else
			var xml = loadXML( 'cust.xml' );
						
		var ndSettings = xml.selectSingleNode( '//settings' );	

		/* 
			Originally, determine the HTTP object based on the Operating System
			Windows '98 didn't have an OS environment variable
			var WshShell = new ActiveXObject ("WScript.Shell");
			var WshSysEnv = WshShell.Environment("SYSTEM");
			if( WshSysEnv('OS' ) == '' ) {
				var xmlServerHttp =  new ActiveXObject("MSXML2.XMLHTTP.4.0" );
			} else {
				var xmlServerHttp = new ActiveXObject("Msxml2.ServerXMLHTTP.4.0");
				bServerHTTP = true;
			}
		*/

		// 11-7-2005 - Replace OS based procesing.  
		// Now, use the MSXML2.XMLHTTP (not ServerXMLHTTP), always, unless a proxy is specified.
		// Using MSXML2.XMLHTTP allows SmartCharge to use the same proxy settings as Internet Explorer
		if( ndSettings ) {
			if( ndSettings.getAttribute( 'useproxy' ) == "1" ) {
				//var xmlServerHttp = new ActiveXObject("Msxml2.ServerXMLHTTP.4.0");
				var xmlServerHttp = createActiveXObject("Msxml2.ServerXMLHTTP.4.0");
				bServerHTTP = true;
			} else {
				var xmlServerHttp = createActiveXObject("MSXML2.XMLHTTP.4.0" );
			}
		} else {
			var xmlServerHttp = createActiveXObject("MSXML2.XMLHTTP.4.0" );
		}	

	} catch( e ) {
		delete e;
		var xmlServerHttp = createActiveXObject("MSXML2.XMLHTTP.4.0" );
	}
	
	/*
	//nov-17-2005. Introduced to deal with XMLHTTP.Send Access Denied Error. 
	//For the European server, we use the WinHttp Control instead of using XMLHTTP control.
	var bServer = typeof(Server) != "undefined";
	if ( bServer ) {
		var oNet = new ActiveXObject("WScript.Network") 
		var machineName = oNet.ComputerName;
		//For Europe-based server use WinHttp control and not XmlHttp
		if (machineName == "INETC534")
			var xmlServerHttp = new ActiveXObject("WinHttp.WinHttpRequest.5.1" );
	}
	*/
	
	var xmlServerHttp = new ActiveXObject("WinHttp.WinHttpRequest.5.1" );

	// get the proxy settings, if any
	// load them from the cached cust object if possible, otherwise get them from the disk file
	var xml;
	try {
		try {

			if( bServerHTTP ) {
				if( ndSettings ) {
					if( ndSettings.getAttribute( 'useproxy' ) == "1" ) {
						// set the proxy server name, as provided on the settings screen
						xmlServerHttp.setProxy( 2, ndSettings.getAttribute( 'proxyserver' ), "" );
	
						xmlServerHttp.open( strMethod, strURL, false );
						bOpen = true;
	
						// set the proxy creditials, as provided on the settings screen
						// must occur after the connection is opened.
						xmlServerHttp.setProxyCredentials( ndSettings.getAttribute( 'proxyid' ), ndSettings.getAttribute( 'proxypw' ) );
					}
				}
			} 
		} catch( e ) {
			delete e;
		}

		if( !bOpen )
			xmlServerHttp.open( strMethod, strURL, false );

		// NOTE: set timeouts, and SSL validation flags after opening
		if( bServerHTTP ) {
			// if SSL, then turn off 
			if( strURL.search( /https:/i ) != -1 ) {
				var nUnknownCA = 256;
				var nWrongUsage = 512;
				// requested URL does not match the certificate URL.  Occurs when using a IP address instead of a name.
				var nHostMismatch = 4096; 

				// NOTE: It appears that the numbers are documented incorrectly, invalid date is actually host mismatch!
				var nInvalidDate = 8192;
				var nAllErrors = 13056; // Doesn't appear to work
				// WAW 8/16/2005 - Before fix, ignore date warnings
				// xmlServerHttp.setOption( 2 ) = xmlServerHttp.getOption(2) - nInvalidDate;
				// Now, as of  8/16/2005, ignore all warnings.
				xmlServerHttp.setOption( 2 ) = nAllErrors;
			}

			// 30 seconds to resolve and connect, 15 seconds to send & receive
			// NOTE: Increased time-out to account for dial-up users...
			var lResolve = 30  * 1000;
			var lConnect = 30 * 1000;
			var lSend = 60 * 1000;
			var lReceive = 60 * 1000;


			xmlServerHttp.setTimeouts(lResolve, lConnect, lSend, lReceive);
			// xmlServerHttp.setTimeouts(5, 5, 5, 5);
		}

		// NOTE: disable any cache or proxy for this item
		// BEWARE: without this, application updates may not be loaded from the server
		// instead they will be downloaded from th local proxy cache

		// This has only been tested with Microsoft ISA Server
		xmlServerHttp.setRequestHeader( 'cache-control', 'no-store' );

	} catch( e ) {
		delete e;
	}
	return xmlServerHttp;
}

// used to load a data island as an XML document
// replaces <xsl:include> references with fully qualified URLs
// BEWARE! XSLT includes that reference script may NOT run on some browsers! UGH! Back to the server!
function loadDataIsland( dataIslandXML ) {
	var xml = newXMLDocument();
	xml.loadXML( dataIslandXML.XMLDocument.xml );
	// merge in the include XSL files from the server
	var ndIncludes = xml.selectNodes( '//xsl:include' );
	for( var i = 0; i < ndIncludes.length; i++ ) {
		strBaseURL = document.location.href.replace( /(.*\/).*/, '$1' );
		strFile = strBaseURL + ndIncludes(i).getAttribute( 'href' );
		ndIncludes(i).setAttribute( 'href', strFile );
		alert( strFile );
	}
	return xml;
}

//-----------------------------------------------------------------------------
// loads XML from disk, returns a DOM document
//-----------------------------------------------------------------------------
function loadXML( strFileName ) {
	var xml = newXMLDocument();
	var strErrMsg = '';
	try {
		if( !xml.load( strFileName ) ) {
			strErrMsg += "<br/>Reason: " + xml.parseError.reason + "<br/>";
			strErrMsg += "Source: " + xml.parseError.srcText + "<br/>";
			strErrMsg += "Line: " + xml.parseError.line + "<br/>";
			strErrMsg += "Position: " + xml.parseError.linepos + "<br/>";
			throw new Error( xml.parseError.errorCode, strErrMsg );
		}
		
		//when MSXML's version is less than 4.0 and loadXML is called from a browser
		//we need to specify the full path (http://localhost/)
		if (xml.xml == "") {
			//if local, return
			var bNet = false;		
			try {	
				bNet = document.URLUnencoded.indexOf("http") == 0;
			} catch (er) {delete er;}
			
			//if called from a Browser
			if (bNet) {				
				var pname = document.URLUnencoded;				
				//url to post to
				var strFileName = pname.substring(0,pname.lastIndexOf("/")+1) + strFileName;
				if( !xml.load( strFileName ) ) {
					strErrMsg += "<br/>Reason: " + xml.parseError.reason + "<br/>";
					strErrMsg += "Source: " + xml.parseError.srcText + "<br/>";
					strErrMsg += "Line: " + xml.parseError.line + "<br/>";
					strErrMsg += "Position: " + xml.parseError.linepos + "<br/>";
					throw new Error( xml.parseError.errorCode, strErrMsg );
				}
				//if (strURL.indexOf("localhost") != -1)
				//	strURL = "http://localhost/dpgmws/bolpost.asp";
			}		
		}	
	} catch( e ) {
		//strErrMsg = "Error loading: " +strFileName + e.description;
		strErrMsg = translateErrorMsg( "Error loading", "ErrorLoading" ) + ": " +strFileName + e.description;		
		e.description = strErrMsg;
		throw e;
	}
	return xml;
}

function loadAndDetokenize(strFileName){
    var xsl = loadXML( strFileName );
    var name = "";
    try {
		//get xsl file's name (ex additems.xsl)		
		name = strFileName.substring(strFileName.lastIndexOf("\\")+1);
		//get xsl file's base name (ex additems)
		name = name.substring(0,strFileName.lastIndexOf("."));
	} catch(e) {delete e;}	
    tp.populateXML(xsl, name);  //tp is the global textprovidor object created in dpgm.hta and defined in textProvidor.obj.js
	return(xsl);	
}

//-----------------------------------------------------------------------------
// loads XML from disk, returns a DOM document
//-----------------------------------------------------------------------------
function loadTranslatedXSL( strFileName) {
	
    var xsl = loadAndDetokenize(strFileName);

		var runningLocally = (typeof(Request) != "object");
				
		//var ndptr = xsl.selectSingleNode("//xsl:include[@href='rep_common.xsl']");		
		//ndptr.setAttribute("href", 'trans_rep_common.xsl');
		
		//implement our own include						
		var ndIncludes = xsl.selectNodes( "//xsl:include" );
		//var aFiles = new Array(ndIncludes.length + 1);
		var aFiles = new Array(ndIncludes.length);
		for( var i = 0; i < ndIncludes.length; i++ ) {
				// first get the name.
				var eleInclude = ndIncludes[i];
				if (!runningLocally){
					aFiles[i] = Server.MapPath( eleInclude.getAttribute( "href" ) );
				} else {
					aFiles[i] = eleInclude.getAttribute( "href" );
				}
		}
		
		//aFiles[ ndIncludes.length] = fileName; // Don't use MapPath again...
		
		// Add in the MSXSL namespace, needed for the node set
		// Appears to actually add this as a namespace..?
		var ndRoot = xsl.selectSingleNode( "//xsl:stylesheet" );
		if (ndRoot == null){
			// we're probably dealing with HTML files in this case, so just return the translated file.
			return(xsl);  
		}
		try{
		ndRoot.setAttribute("xmlns:msxsl","urn:schemas-microsoft-com:xslt");
		} catch( e ) {
			// do nothing
		}						
		for( var i=0; i < ndIncludes.length; i++)  {
		
			var ndInclude = ndIncludes[i];
			// first get the name.
			var strIncludeName = ndInclude.getAttribute( "href" );
			ndInclude.parentNode.removeChild( ndInclude );
							
			// Load the include file from the disk and translate
			if (!runningLocally){			
				var includeDoc = loadAndDetokenize( Server.MapPath( strIncludeName ) );
			} else {
				var includeDoc = loadAndDetokenize( strIncludeName );
			}
							
			// go through each of the parama and template children node of stylesheet in common.xsl 
			// and copy it uniquely to the xml
			var ndNodes = includeDoc.selectNodes( "//xsl:stylesheet/xsl:param | //xsl:stylesheet/xsl:template | //xsl:stylesheet/xsl:decimal-format | //xsl:stylesheet/xsl:variable" );
						
			for( var j=0; j< ndNodes.length; j++ ) {
				var ndNode = ndNodes[j];
				var strXPath = getXPath( ndNode );
				var ndSibling = ndRoot.selectSingleNode( strXPath );
					if( ndSibling == null ) 
						ndRoot.appendChild( ndNode );
				}
		}
								
		return(xsl);
}

//-----------------------------------------------------------------------------
// loads XML from disk, translates it, saves it back to disk with a filename with a "trans_" prefix
//-----------------------------------------------------------------------------
function loadAndSaveTranslatedXSL( strFileName) {
	xsl = loadTranslatedXSL(strFileName);
	try{
		xsl.save("trans_" + strFileName);
	} catch (e){
		//alert("Temporary files could not be saved.  Login could not complete.");
		alert( translateErrorMsg( "Temporary files could not be saved.  Login could not complete.", "TemporaryFiles" ) );
	}
}



//-----------------------------------------------------------------------------
// saves XML to disk, returns a DOM document
//-----------------------------------------------------------------------------
function saveXML( strFileName, xml ) {

}

// returns true, if the attribute is missing, or empty
function emptyAttribute( nd, strName ) {
	var strValue = nd.getAttribute( strName );
	if( ( strValue == null ) || ( strValue  == "" ) ) {
		return true;
	}
	return false;
}

function getXMLValue( xml, strXPath ) {
	var strReturn;
	try {
		strReturn = xml.selectSingleNode( strXPath ).text;
	} catch( e ) {
		delete e;
		strReturn = "";
	}
	return strReturn;
}

function getXMLFloat( xml, strXPath ) {
	var dReturn = 0.00;
	try {
		dReturn = parseFloat( xml.selectSingleNode( strXPath ).text );
		if( isNaN( dReturn ) ) {
			return 0.00;
		}
	} catch( e ) {
		delete e;
		return 0.00;
	}
	return dReturn;
}

// uppercases Key XML elements to simplify comparison
function upperCaseElements( xml ) {
	try {
		var xslt = createActiveXObject("MSXML2.XSLTemplate.4.0");
		var xslProc;
		xslDoc = loadXML( "ls\\uppercase.xsl" );
		xslt.stylesheet = xslDoc;
		xslProc = xslt.createProcessor();
		xslProc.input = xml;
		xslProc.transform();
		xml.loadXML( xslProc.output );
	} catch( e ) {
		e.description += "Error transforming XML to uppercase.";
		throw e;
	}
	return xml;
}

function transformXMLtoString( xml, xsl, aParms ) {
	try {
							
		//added on march-31-2005
		dt = createDateObject( xsl, aParms );
	
		var xslt = createActiveXObject("MSXML2.XSLTemplate.4.0");
		var xslProc;
		xslt.stylesheet = xsl;
		xslProc = xslt.createProcessor();
		xslProc.input = xml;
		
		//added on march-31-2005
		xslProc.addObject( dt, "urn:my-scripts");	
		
		if( aParms ) {
			for( key in aParms ) {
			
				//if statement added so to be compatible with "standard" MSXML
				//(MSXML.4.0 addParameter could deal with "undefined", standard MSXML can't !! )
				if (typeof(aParms[key]) != "undefined")
					xslProc.addParameter( key, aParms[key] );
			}
		}
		xslProc.transform();
		return xslProc.output;
	} catch( e ) {
		e.description = "Error transforming XML: " + e.description;		
		
		if( aParms ) {
			e.description += '<br/>Transformation Parameters:';
			for( key in aParms ) {
				e.description += ' ' + key + ':' + aParms[key];
			}
		}
		throw e;
	}
}

//
function transformXMLtoXML( xml, xsl, aParms ) {
	try {
			
		//added on march-31-2005
		dt = createDateObject( xsl, aParms );
		
		var xslt = createActiveXObject("MSXML2.XSLTemplate.4.0");
		var xmlReturn = createActiveXObject("MSXML2.FreeThreadedDOMDocument.4.0");
		var xslProc;
		xslt.stylesheet = xsl;
		xslProc = xslt.createProcessor();
		xslProc.input = xml;
		
		//added on march-31-2005
		xslProc.addObject( dt, "urn:my-scripts");	
		
		if( aParms ) {
			for( key in aParms ) {
				//if statement added so to be compatible with "standard" MSXML
				//(MSXML.4.0 addParameter could deal with "undefined", standard MSXML can't !! )
				if (typeof(aParms[key]) != "undefined")
					xslProc.addParameter( key, aParms[key] );
			}
		}
		
		xslProc.transform();
		if( !xmlReturn.loadXML( xslProc.output ) ) {
			var strErrMsg = '';
			strErrMsg += "Reason: " + xmlReturn.parseError.reason + "<br/>";
			strErrMsg += "Source: " + xmlReturn.parseError.srcText + "<br/>";
			strErrMsg += "Line: " + xmlReturn.parseError.line + "<br/>";
			strErrMsg += "Position: " + xmlReturn.parseError.linepos + "<br/>";
			throw new Error( xmlReturn.parseError.errorCode, strErrMsg );
		}
		return xmlReturn;
	} catch( e ) {
		e.description = "Error transforming XML: " + e.description;
		throw e;
	}
}

// returns the specified value as quoted string
function quote( str ) {
	// return '"' + str + '"';
	// Don't quote loan ids for now
	return str;
}

// creates a properly formated error node
function addErrorNode( xmlDoc, dtNode, strCat, strCode, strMsg, strSeverity, strModule ) {
	// programtically generate the error condition node
	var errNode= xmlDoc.createElement( "ERRORCONDITION" );

	var errCat = xmlDoc.createElement( "ERRCATEGORY" );
	var errCode = xmlDoc.createElement( "ERRCODE" );
	var errMsg = xmlDoc.createElement( "ERRMSG" );
	var errSeverity = xmlDoc.createElement( "ERRSEVERITY" );
	var errSystem = xmlDoc.createElement( "ERRSYSTEM" );
	var errComponent = xmlDoc.createElement( "ERRCOMPONENT" );

	errCat.text = strCat;
	errCode.text = strCode;
	errMsg.text = strMsg;
	errSeverity.text = strSeverity
	errSystem.text = "OptNet";
	if( strModule )
		errComponent.text = strModule;

	dtNode.appendChild( errNode );
	errNode.appendChild( errCat );
	errNode.appendChild( errCode );
	errNode.appendChild( errMsg );
	errNode.appendChild( errSeverity );
	errNode.appendChild( errSystem );
	errNode.appendChild( errComponent );
}

function removeDTD( xml ) {
	var nStart = xml.xml.search( /<IFX>/ );
	xml.loadXML( xml.xml.substring( nStart ) );
	return xml;
}

function throwParseError( xml ) {
	var strMsg = "Document loading error: " + xml.parseError.reason;
	strMsg += "Source: " + xml.parseError.srcText + "\r\n";
	strMsg += "Line: " + xml.parseError.line + " Position:" + xml.parseError.linepos + "\r\n";
	strMsg += "DTD: " + xml.parseError.url + "\r\n";
	throw new Error( xml.parseError.errorCode, 	strMsg );
}

// DTDToRelative
// modifies the DTD reference to a relative one "dtd/file.dtd"
// formats the DTD in a manner suitable for sending to a partner
function DTDToRelative( xml ) {
	if( !xml.doctype ) {return xml;}
	var aDTDParts = xml.doctype.xml.split( /["/\\.]/ );
	strDTDFile = aDTDParts[aDTDParts.length-3];
	xml.resolveExternals = 0;
	xml.validateOnParse = 0;
	var xmlReturn =  removeDTD( xml );
	strDTD = '<!DOCTYPE IFX SYSTEM "dtd/' + strDTDFile + '.dtd">';
	if( !xml.loadXML( strDTD + xmlReturn.xml ) )
		throwParseError( xml );  // not DTD errors
	return xml;
}

// DTDToRelativeVersion
// modifies the DTD reference to a relative one "dtd/file.dtd"
// formats the DTD in a manner suitable for saving on a web server
function DTDToRelativeVersion( xml ) {
	if( !xml.doctype ) {return xml;}
	var strVersion = xml.selectSingleNode( "//APPVER" ).text;
	var aDTDParts = xml.doctype.xml.split( /["/\\.]/ );
	strDTDFile = aDTDParts[aDTDParts.length-3];
	xml.resolveExternals = 0;
	xml.validateOnParse = 0;
	var xmlReturn =  removeDTD( xml );
	strDTD = '<!DOCTYPE IFX SYSTEM "dtd/' + strVersion + '/' + strDTDFile + '.dtd">';
	if( !xml.loadXML( strDTD + xmlReturn.xml ) )
		throwParseError( xml );  // not DTD errors
	return xml;
}

// DTDToAbsolute
// modifies the DTD reference to a relative one "c:\dtd\1.40.000\file.dtd"
// loads the xml document, and updates the relative DTD to use an absolute, 
// local dtd file that may be used for validation.
// Note, do not save the resulting document, since is cannot be viewed using
// with  a local dtd refrence
// returns an MSXML.Docmment object
function DTDToAbsolute( xml ) {
	if( !xml.doctype ) {return xml;}
	var strVersion = xml.selectSingleNode( "//APPVER" ).text;
	var aDTDParts = xml.doctype.xml.split( /["/\\.]/ );
	strDTDFile = aDTDParts[aDTDParts.length-3];
	xml.resolveExternals = 1;
	xml.validateOnParse = 1;
	var xmlReturn =  removeDTD( xml );
	strDTD = '<!DOCTYPE IFX SYSTEM "' + strDTDDir + '\\'  + strVersion + '\\' + strDTDFile + '.dtd">';
	if( !xml.loadXML( strDTD + xmlReturn.xml ) )
		throwParseError( xml );
	return xml;
}

// Used to format a # with a leading 0, used by GetCurrentDateString
function TimeFormat( nValue ) {
	if( nValue < 10 ) {
		return ( "0" + nValue.toString() );
	} 
	return ( nValue.toString() );
}

// returns the date in the format YYYY-MM-DDTHH:MM:SS.TT-GMT
function GetCurrentDateString() {
	var dt = new Date();
	strReturn = dt.getFullYear() + "-" + TimeFormat( dt.getMonth() + 1 ) + "-" + TimeFormat( dt.getDate() ) + "T" + TimeFormat(dt.getHours()) + ":" + TimeFormat( dt.getMinutes()) + ":" + TimeFormat(dt.getSeconds()) + "." + TimeFormat( dt.getMilliseconds() ) + "-" + ( dt.getTimezoneOffset() / 60 ) + ":00";
	return strReturn;
}

// returns the date in the format YYYY-MM-DD
function GetCurrentDate() {
	var dt = new Date();
	strReturn = dt.getFullYear() + "-" + TimeFormat( dt.getMonth() + 1 ) + "-" + TimeFormat( dt.getDate() );
	return strReturn;
}


// Same a POSTXML, without the requirement for cust.xml
function postXMLTransaction( xml, strURL ) { 	
	try {

		var xmlRec = newXMLDocument();
		var xmlhttp = newXMLHTTP( "POST", strURL );
		xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
		return httpRetrieveXML( xmlhttp, xml );

	} catch(e) {

		switch( e.number ) {
		case -2147012894:  // Time-out, ugh! retry with a greater time-out
			var xmlhttp = newXMLHTTP( "POST", strURL );
			xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
			setRetryTimeOut( xmlhttp );
			try {
				return httpRetrieveXML( xmlhttp, xml );
			} catch( retryerror ) {
				e = retryerror;
			}
			break;
		}

		// let the caller handle it
		//e.description += "\r\nError getting XML from " + strURL;
		e.description += "\r\n" + translateErrorMsg( "Error getting XML from", "ErrorGettingXML") + " " + strURL;
		throw( e );
		// let the caller handle it
		e.description += "Error posting to " + strURL;
		throw( e );
	}
}






function postXML( xml, strURL ) {	 
	try {
		var custXML = loadXML( 'cust.xml' );
		if( typeof( bForceTransfer ) == 'undefined' ) {
			var ndInternetConnection = custXML.selectSingleNode( '//settings[@connectiontype=2]' );
			if( ndInternetConnection == null ) {
				//throw new Error( 100, "Not configured to connect." );
				throw new Error( 100, translateErrorMsg( "Not configured to connect", "NotConfiguredToConnect" ) );
			}
		}

	// verify that we have a valid outbound XML
		if( !xml.xml ) {
			throw new Error( 100, "Attempting to post an empty XML document." );
		}
		var xmlRec = newXMLDocument();
		var xmlhttp = newXMLHTTP( "POST", strURL );
		xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
		return httpRetrieveXML( xmlhttp, xml );

	} catch(e) {

		switch( e.number ) {
		case -2147012894:  // Time-out, ugh! retry with a greater time-out
			var xmlhttp = newXMLHTTP( "POST", strURL );
			xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
			setRetryTimeOut( xmlhttp );
			try {
				return httpRetrieveXML( xmlhttp, xml );
			} catch( retryerror ) {
				e = retryerror;
			}
			break;
		}

		// let the caller handle it
		//e.description += "\r\nError getting XML from " + strURL;
		e.description += "\r\n" + translateErrorMsg( "Error getting XML from", "ErrorGettingXML") + " " + strURL;
		throw( e );
		// let the caller handle it
		e.description += "Error posting to " + strURL;
		throw( e );
	}
}

// retrieves an XML using the specified attributes, if any, appended to the URL
function getXML( strURL, aAttributes ) { 
	try {
		var strSubmit = '';
		for( key in aAttributes ) {
			if( strSubmit.length > 0 ) {
				strSubmit += '&' + key + '=' + escape( aAttributes[key] );
			} else {
				strSubmit += '?' + key + '=' + escape( aAttributes[key] );
			}
		}
		strURL += strSubmit;
		var xmlhttp = newXMLHTTP( "GET", strURL );
		return httpRetrieveXML( xmlhttp );
	} catch(e) {
		switch( e.number ) {
			case -2147012894:  // Time-out, ugh! retry with a greater time-out
			xmlhttp = newXMLHTTP( "GET", strURL );
			setRetryTimeOut( xmlhttp );
			try {
				return httpRetrieveXML( xmlhttp );
			} catch( retryerror ) {
				e = retryerror;
			}
			break;
		}
		// let the caller handle it
		//e.description += "\r\nError getting XML from " + strURL;
		e.description += "\r\n" + translateErrorMsg( "Error getting XML from", "ErrorGettingXML") + " " + strURL;
		throw( e );
	}
}

// WAW - Added for retry 9/29/05 
function setRetryTimeOut( xmlhttp ) {
	var lResolve = 120  * 1000;
	var lConnect = 120 * 1000;
	var lSend = 120 * 1000;
	var lReceive = 120 * 1000;
	try {
		xmlhttp.setTimeouts(lResolve, lConnect, lSend, lReceive);
	} catch( e ) {
		// only ServerXMLHTTP has a setTimeouts method.
		delete e;
	}
}

//nov-17-2005. Added to wrap XMLHTTP and WinHttp responseXML and ResponseText properties respectively
//returns a string which is the control's response
function httpGetResponseText( xmlhttp ) {
	var strXML = "";
	try {
		strXML = xmlhttp.responseXML.xml;
		if (strXML == "")
			strXML= xmlhttp.ResponseText;
	} catch (e) {
		delete e;
		strXML= xmlhttp.ResponseText;
	}
	return strXML;
}

// WAW - Added for retry 9/29/05 
// Processes the http request for both the GET and POST
function httpRetrieveXML( xmlhttp, xml ) {
	// Send the document, process any basic HTTP errors
		if( typeof( xml ) != 'undefined' ) {
			// postXML
			xmlhttp.send( xml );
		} else {
			// get
			xmlhttp.send( );
		}
		if( xmlhttp.status != 200 ) {
			// Catches 404, 403, 500, etc.
			throw new Error( xmlhttp.status, "HTTP Error: " + xmlhttp.status + " " + xmlhttp.statusText );
		}
		
		//nov-17-2005. added to work with new WinHttp control as well as XMLHttp		
		var strXML = httpGetResponseText( xmlhttp );
		
		var xml = newXMLDocument();
				
		if( !xml.loadXML( strXML ) ) {
			throw new Error( xml.parseError.errorCode, xml.parseError.reason );
		}
		return xml;
}


function saveFile( strFileName, strFileText ) {
	var objFSO, objFile, a;
	objFSO = createActiveXObject("Scripting.FileSystemObject");

	var ForWriting = 2;
	var ForAppending = 8; 

	try {
		if (objFSO.FileExists(strFileName)) {
			objFile = objFSO.OpenTextFile(strFileName, ForWriting, false);
		}
		else {
			objFile = objFSO.CreateTextFile(strFileName, true);
		}
		objFile.WriteLine(strFileText);
		objFile.Close();
	} catch ( e ) {
		delete e;
		objFile.Close();
	}
}

function fileExists( strFileName ) {
	var objFSO = createActiveXObject("Scripting.FileSystemObject");
	try {
		if (objFSO.FileExists(strFileName)) {
			return true;
		}
		return false;
	} catch ( e ) {
		delete e;
	}
}



function deleteFile( strFileName ) {
	try {
		var objFSO = createActiveXObject("Scripting.FileSystemObject");
		var objFile = objFSO.GetFile( strFileName );
		objFile.Delete();
	} catch( e ) {
		var strDesc = "Error deleting " + strFileName + "\r\n" + e.description;
		var nErrNbr = e.number;
		delete e;
		throw new Error( nErrNbr, strDesc );
	}
}

function loadFromDisk( strName ) {
	var fso = createActiveXObject( "Scripting.FileSystemObject" );
	f = fso.OpenTextFile( strName , 1, false );
	str = f.ReadAll();
	f.Close();
	return str;
}


// Determines the version of the scripting engine that is in use.
function GetScriptEngineInfo() {
	var s;
	s = ""; // Build string with necessary info.
	s += ScriptEngine() + " Version ";
	s += ScriptEngineMajorVersion() + ".";
	s += ScriptEngineMinorVersion() + ".";
	s += ScriptEngineBuildVersion();
	s += "\r\n";
	s += "Server Name: " + Request.ServerVariables( "SERVER_NAME" ) + "\r\n";
	s += "Server Software: " + Request.ServerVariables( "SERVER_SOFTWARE" ) + "\r\n";
	return(s);
}

// Retrieves values from the registry
function getRegValue( RegObj, strValue ) {
	var RegBase = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Freddie Mac\\OptNet\\" 
	var RegKey = RegBase + strValue;
	var strReturn = RegObj.RegRead( RegKey );

	if( strReturn == "" )
		throw new Error( 0, "Invalid registry value for " + RegKey ); 
	return strReturn;
}


function logException( e ) {
	if( e.description == "" )
		return;

	var strFileName, fileRoot;
	// var aspError = Server.GetLastError();

	try {
		strFileName = Server.MapPath( "optrecv\\optrecv_err.log" );
	  
		var objFSO, objFile, a;
		objFSO = createActiveXObject("Scripting.FileSystemObject");
		var strError;
	  
		if (objFSO.FileExists(strFileName)) {
			objFile = objFSO.OpenTextFile(strFileName, ForAppending, false);
		}
		else {
			objFile = objFSO.CreateTextFile(strFileName, true);
			objFile.WriteLine( GetScriptEngineInfo() );
		}
	
		var date = new Date();

		var facility = e.number>>16 & 0x1FFF;
		var code = e.number & 0xFFFF;

		strError = "Exception Caught " + date + "\r\n";
		strError += "Facility: " + facility + " Code: " + code + "\r\n";
		strError += e.description + "\r\n";
		if( strTranType )
			strError += "File: " + strTranType + strTranID + ".xml\r\n";
		objFile.WriteLine(strError);
		if( strTranType ) {
			eMailError( strError, Server.MapPath( "optrecv\\" + strTranType + strTranID + ".xml" ) );
		} else {
			eMailError( strError );
		}
		objFile.Close();
	}
	catch( e ) {
		throw( e );
	}
}

// logs the transaction
function logTran( xmlRequest, xmlResponse ) {
	var strFileName;
	var strLog = "";
	var dtNode;

	try {
		var date = new Date();
		strLog += date  + "\r\n";
		strLog += "Post from: " + Request.ServerVariables( "REMOTE_ADDR" ) + "\r\n";
		strFileName = Server.MapPath( "optrecv\\" );
		strFileName = strFileName + "\\optrecv_tran.log";
	  
		var objFSO, objFile, a;
		objFSO = createActiveXObject("Scripting.FileSystemObject");
		var strError;
	  
		if (objFSO.FileExists(strFileName)) {
			objFile = objFSO.OpenTextFile(strFileName, ForAppending, false);
		}
		else {
			objFile = objFSO.CreateTextFile(strFileName, true);
			objFile.WriteLine( GetScriptEngineInfo() );
		}
	
		if( dtNode = xmlRequest.selectSingleNode("//TRNUID") ) {
			strLog += "TRNUID: " + dtNode.text + "\r\n";
		} else {
			strLog += "Unknown TRNUID\r\n";
		}

		if( dtNode = xmlRequest.selectSingleNode("//TRANSACTIONTYPE") ) {
			strLog += "TRANSACTIONTYPE: " + dtNode.text + "\r\n";
		} 

		if( dtNode = xmlRequest.selectSingleNode("//LOANAPPID") ) {
			strLog += "LOANAPPID: " + dtNode.text + "\r\n";
		}

		objFile.WriteLine(strLog);
		objFile.Close();
	}
	catch( e ) {
		throw( e );
	}
}

function verifyResponse( xmlRec ) {
	var dtNode;

// Check for bad acknowledgement, log any NACK...
	if( dtNode = xmlRec.selectSingleNode("//ERRORCONDITION") ) {
		var strError = "Server error information...\r\n";

		if( dtNode = xmlRec.selectSingleNode( "//ERRCODE" ) ) {
			strError += "Error Code: " + dtNode.text + "\r\n";
		}

		if( dtNode = xmlRec.selectSingleNode( "//ERRMSG" ) ) {
			strError += "Error Message: " + dtNode.text + "\r\n";
		}

		if( dtNode = xmlRec.selectSingleNode( "//ERRSEVERITY" ) ) {
			strError += "Error Severity: " + dtNode.text + "\r\n";
		}

		if( dtNode = xmlRec.selectSingleNode( "//ERRSYSTEM" ) ) {
			strError += "Error System: " + dtNode.text + "\r\n";
		}

		if( dtNode = xmlRec.selectSingleNode( "//ERRCOMPONENT" ) ) {
			strError += "Error Component: " + dtNode.text + "\r\n";
		}
		throw new Error( 101, strError );
	}
}

// Wrapper for creating an object, naming the object if it fails 
// Only used as wrapper, there is no difference between 
// Server.CreateObject an new ActiveXObject 
function createActiveXObject( strObjectName ) {
	try {
		//trying to create MSXML 4.0 Object (MSXML2.XSLTemplate.4.0, MSXML2.FreeThreadedDOMDocument.4.0 etc)						
		if (strObjectName.search("MSXML2") != -1 &&  
			strObjectName.search("4.0") != -1) {						
			try {				
				//if global variable MSXML_VERSION was never set to "3" (indicating MSXML 4.0 is not supported)
				if (typeof(MSXML_VERSION) == "undefined") {
					//try MSXML 4.0 first
					objReturn = new ActiveXObject( strObjectName );
				} else {
					//otherwise try "standard" MSXML
					strObjectName = strObjectName.replace(".4.0","");
					objReturn = new ActiveXObject( strObjectName );
				}	
			} catch (ee) {
				delete ee;
				//global variable to refrain from having to try to create MSXML 4.0 object (create "standard" MSXML instead)
				MSXML_VERSION = "3";				
				//otherwise try "standard" MSXML
				strObjectName = strObjectName.replace(".4.0","");
				objReturn = new ActiveXObject( strObjectName );
			}		
		} else {			
			//not dealing with MSXML Object
			objReturn = new ActiveXObject( strObjectName );		
		}	
		return objReturn;
	} catch( e ) {
		e.description = "Error creating: " + strObjectName + "\r\n" + e.description;
		throw e;
	}
}

function setAttribute( ndNode, strAttribute, strValue ) {
	try {
		if( strValue == null ) {
			return;
		}
		if( typeof( strValue ) != 'undefined' ) {
			if( typeof( strValue ) == 'string' ) {
				ndNode.setAttribute( strAttribute, trimString( strValue ) );
			} else {
				ndNode.setAttribute( strAttribute, strValue ); // needed for date objects
			}
		}
	} catch( setAttributeError ) {
		delete setAttributeError;
	}
}

// sets all of the attributes in the specified node.
function setNodeAttributes( ndNode, aAttributes ) {
	// first, remove any existing attributes
	ndAtt = ndNode.selectNodes( '@*' );
	if( ndAtt )
		ndAtt.removeAll();

	// add in all of the specified attributes
	for( key in aAttributes ) {
		setAttribute( ndNode, key, aAttributes[key] );
	}
}

// Creates a node from the specified attributes
function createNode( xml, strName, aAttributes ) {
	try {
		var ndNode = xml.createNode( 1, strName, '' );
	} catch( e ) {
		// we likely have a node specified, use the owner document
		var ndNode = xml.ownerDocument.createNode( 1, strName, '' );
	}
	setNodeAttributes( ndNode, aAttributes );
	return ndNode;
}

// Copies a node value from the source to the target
function copyNodeValue( ndSource, strSourceXPath, ndTarget, strTargetXPath ) {	

	// if the target XPath is not specified, use the source...
	if( typeof( strTargetXPath ) == "undefined" ) {
		var strTargetXPath = strSourceXPath;
	}

	try {
		ndSourceValue = ndSource.selectSingleNode( strSourceXPath );
		ndTargetValue = ndTarget.selectSingleNode( strTargetXPath );
		ndTargetValue.text = ndSourceValue.text;
	} catch( e ) {
		delete e;
	}
}

// Copies the specified value to the target node
function setNodeValue( ndTarget, strTargetXPath, strValue ) {
	try {
		ndTargetValue = ndTarget.selectSingleNode( strTargetXPath );
		ndTargetValue.text = strValue;
	} catch( e ) {
		delete e;
	}
}

// returns an XPath statement, describing the node that was input
function getXPath( ndNode, aFields ) {
	var ndAttributes = ndNode.selectNodes( '@*' );
	var i;
	var strXPath = ndNode.nodeName;
	for( i = 0; i < ndAttributes.length; i++ ) {
		// added 4/16, only use specified attributes
		if( typeof( aFields ) != 'undefined' ) {
			if( arrayContains( aFields, ndAttributes(i).nodeName ) == false )
				continue;
		}
		strXPath += '[@' + ndAttributes(i).nodeName + '="' + ndAttributes(i).nodeValue + '"]';
	}
	return strXPath;
}

// Returns true if the the specified string is in the associative array
function arrayContains( aArray, str ) {
	var bRetun = false
	for( var i = 0; i < aArray.length; i++ ) {
		if( aArray[i] == str ) 
			return true;
	}
	return false;
}

// returns the specified child node within the parent, if any
function findChild( ndParent, ndChild, aFields ) {
	var strXPath = getXPath( ndChild, aFields );
	var ndFound = ndParent.selectSingleNode( strXPath );
	return ndFound;
}

// returns the specified node from the name and attributes
// NOTE: prefix strNodeName with "//" to search the entire document
function findNode( ndParent, strNodeName, aFields ) {
	var strXPath = strNodeName;
	for( key in aFields ) {
		strXPath += '[@' + key + '="' + aFields[key] + '"]';
	}
	var ndFound = ndParent.selectSingleNode( strXPath );
	return ndFound;
}

// adds a child, only if no other identical child is present
// Copies Child nodes of the ndChild
//NOTE: aFields is NOT an associtive array, but an index array aFields = ["attrib1","attrib2","attrib3"]
function addUniqueChild( ndParent, ndChild, aFields ) {
	var ndSibling = findChild( ndParent, ndChild, aFields );
	if( ndSibling ) {
		// already there, return
		return ndSibling;
	}
	return ndParent.appendChild( ndChild.cloneNode( true ) );
}

// adds a child, only if no other identical child is present
// NOTE: THIS FUNCTION DOES NOT COPY CHIlD NODES of the ndChild, 
// which is what addUniqueChild does...
function addUniqueNode( ndParent, ndChild ) {
	var ndSibling = findChild( ndParent, ndChild );
	if( ndSibling ) {
		// already there, return
		return ndSibling;
	}
	return ndParent.appendChild( ndChild.cloneNode( false ) );
}

// creates a new node, only if an identical node doesn't already exist
function createUniqueChild( ndParent, strNodeName, aFields ) {
	var ndChild = createNode( ndParent, strNodeName, aFields );
	return addUniqueChild( ndParent, ndChild );
}

// returns the string resulting XSLT function result.
// for example to get the total of a series of nodes
// NOTE: the function is also useful for using XSLT numeric formatting

// NOTE: use / when matching a xmlInput is a document, 
// use the name of node, when xmlImput is a node

function getXSLTResult( xmlInput, strMatch, strXPath ) {
	// first create the XSL dynamically
	var strXSL = '<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:output method="xml"/><xsl:template match="/"><result><xsl:value-of select="."/></result></xsl:template></xsl:stylesheet>';
	var xsl = newXMLDocument();
	xsl.loadXML( strXSL );

	// add in the strMatch to the match attribute
	var ndMatch = xsl.selectSingleNode( '//@match' );
	ndMatch.text = strMatch;

	// add in the strXPath to the select statement
	var ndSelect = xsl.selectSingleNode( '//@select' );
	ndSelect.text = strXPath;

	// perform the transformation
	var xml = transformXMLtoXML( xmlInput, xsl );
	var strResult = getXMLValue( xml, '//result' );
	return strResult;
}


//added on  march-31-2005
//creates and sets a date objects and removes date.xsl from xsl docs
function createDateObject( xsl, aParms ) {

	var dt = new objDate();
	if ( typeof(aParms) != 'undefined' && typeof(aParms['acctype']) != 'undefined' )
		dt.strAccType = aParms['acctype'];
		
	if ( typeof(aParms) != 'undefined' && typeof(aParms['uom']) != 'undefined' )
		dt.strUOM = aParms['uom'];	
	
	if ( typeof(aParms) != 'undefined' && typeof(aParms['comb_weight_disp']) != 'undefined' )
		dt.strCombWeightDisp = aParms['comb_weight_disp'];	
			
	xsl.setProperty("SelectionNamespaces", "xmlns:ms='urn:schemas-microsoft-com:xslt' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'" );
	var nd = xsl.selectSingleNode( "//xsl:include[@href='date.xsl']" );
	if ( nd ) {
		try {
			var root = xsl.documentElement;
			root.removeChild( nd );
		} catch (e) {}	
	}
	
	return dt;	
}

//dec-14-2005. return a translation of textcode if text providor exists, or
//strError if it doesn't
function translateErrorMsg( strError, textcode ) {
	try {
		if (typeof(tp) == "undefined")
			return strError;
		return tp.getText( textcode );	
	
	} catch (e) {
		delete e;
		return strError;
	}
}


/*** Asynchronous posting ***/


// Same as asynchPostXML, without the requirement for cust.xml
function asynchPostXMLTransaction( xml, strURL, strFunc ) { 	
	try {

		var xmlRec = newXMLDocument();
		var xmlhttp = asynchNewXMLHTTP( "POST", strURL );
		xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
		
		//ASYNCH !!!!
		xmlhttp.onreadystatechange = function () {
			if (xmlhttp.readyState == 4) { // completed					
				if (xmlhttp.status == 200) { // server "OK" response code 							
					//nov-17-2005. added to work with new WinHttp control as well as XMLHttp		
					var strXML = httpGetResponseText( xmlhttp );
					
					var resXML = newXMLDocument();
					if( !resXML.loadXML( strXML ) ) {
						throw new Error( resXML.parseError.errorCode, resXML.parseError.reason );
					}
					
					//alert("back from server ..."); //!!!
					//call function
					if (typeof(strFunc) != "undefined") {
						eval( strFunc );
					}
					
				} else {
					// Catches 404, 403, 500, etc.
						//throw new Error( xmlhttp.status, "HTTP Error: " + xmlhttp.status + " " + xmlhttp.statusText );
						
						//only if working ONLINE  (not OFFLINE)
						//if ( navigator.onLine ) 
							//alert("There appears to be no internet connection. To Continue processing mail click 'File' tab in the browser and check \"Work Offline\". Whenever asked whether to connect or stay offline, choose \"Stay Offline\".");
						return;
				}
			}		
		}
		
		xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
		return asynchHttpRetrieveXML( xmlhttp, xml );																		

	} catch(e) {

		switch( e.number ) {
		case -2147012894:  // Time-out, ugh! retry with a greater time-out
			var xmlhttp = newXMLHTTP( "POST", strURL );
			xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
			setAsynchRetryTimeOut( xmlhttp );
			try {
				return asynchHttpRetrieveXML( xmlhttp, xml );
			} catch( retryerror ) {
				e = retryerror;
			}
			break;
		}

		// let the caller handle it
		//e.description += "\r\nError getting XML from " + strURL;
		e.description += "\r\n" + translateErrorMsg( "Error getting XML from", "ErrorGettingXML") + " " + strURL;
		throw( e );
		// let the caller handle it
		e.description += "Error posting to " + strURL;
		throw( e );
	}
}

//post xml asynchroniously and then calls strFunc function (example of strFunc: "foo( xml )" )
function asynchPostXML( xml, strURL, strFunc ) {	 
	try {
		var custXML = loadXML( 'cust.xml' );
		if( typeof( bForceTransfer ) == 'undefined' ) {
			var ndInternetConnection = custXML.selectSingleNode( '//settings[@connectiontype=2]' );
			if( ndInternetConnection == null ) {
				//throw new Error( 100, "Not configured to connect." );
				throw new Error( 100, translateErrorMsg( "Not configured to connect", "NotConfiguredToConnect" ) );
			}
		}

	// verify that we have a valid outbound XML
		if( !xml.xml ) {
			throw new Error( 100, "Attempting to post an empty XML document." );
		}
		var xmlRec = newXMLDocument();
		var xmlhttp = asynchNewXMLHTTP( "POST", strURL );
		
		//ASYNCH !!!!
		xmlhttp.onreadystatechange = function () {
			if (xmlhttp.readyState == 4) { // completed					
				if (xmlhttp.status == 200) { // server "OK" response code 							
					//nov-17-2005. added to work with new WinHttp control as well as XMLHttp		
					var strXML = httpGetResponseText( xmlhttp );
					
					var resXML = newXMLDocument();
					if( !resXML.loadXML( strXML ) ) {
						throw new Error( resXML.parseError.errorCode, resXML.parseError.reason );
					}
					//call function
					if (typeof(strFunc) != "undefined") {
						eval( strFunc );
					}
					
				} else {
					// Catches 404, 403, 500, etc.
						throw new Error( xmlhttp.status, "HTTP Error: " + xmlhttp.status + " " + xmlhttp.statusText );
				}
			}		
		}
		
		xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
		return asynchHttpRetrieveXML( xmlhttp, xml );

	} catch(e) {

		switch( e.number ) {
		case -2147012894:  // Time-out, ugh! retry with a greater time-out
			var xmlhttp = newXMLHTTP( "POST", strURL );
			xmlhttp.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
			setAsynchRetryTimeOut( xmlhttp );
			try {
				return asynchHttpRetrieveXML( xmlhttp, xml );
			} catch( retryerror ) {
				e = retryerror;
			}
			break;
		}

		// let the caller handle it
		//e.description += "\r\nError getting XML from " + strURL;
		e.description += "\r\n" + translateErrorMsg( "Error getting XML from", "ErrorGettingXML") + " " + strURL;
		throw( e );
		// let the caller handle it
		e.description += "Error posting to " + strURL;
		throw( e );
	}
}


// creates the XML HTTP Object.  Creates a ServerXMLHTTP is possible, 
// otherwise returns a XMLHTTP (for Windows '98).
function asynchNewXMLHTTP( strMethod, strURL ) {
		
	try {
		var bServerHTTP = false;
		var bOpen = false;

		if( typeof( cust ) != 'undefined' )
			var xml = cust.xml;
		else
			var xml = loadXML( 'cust.xml' );
						
		var ndSettings = xml.selectSingleNode( '//settings' );	
		
		// 11-7-2005 - Replace OS based procesing.  
		// Now, use the MSXML2.XMLHTTP (not ServerXMLHTTP), always, unless a proxy is specified.
		// Using MSXML2.XMLHTTP allows SmartCharge to use the same proxy settings as Internet Explorer
		if( ndSettings ) {
			if( ndSettings.getAttribute( 'useproxy' ) == "1" ) {
				//var xmlServerHttp = new ActiveXObject("Msxml2.ServerXMLHTTP.4.0");
				var xmlServerHttp = createActiveXObject("Msxml2.ServerXMLHTTP.4.0");
				bServerHTTP = true;
			} else {
				var xmlServerHttp = createActiveXObject("MSXML2.XMLHTTP.4.0" );
			}
		} else {
			var xmlServerHttp = createActiveXObject("MSXML2.XMLHTTP.4.0" );
		}	

	} catch( e ) {
		delete e;
		var xmlServerHttp = createActiveXObject("MSXML2.XMLHTTP.4.0" );
	}
	
	//nov-17-2005. Introduced to deal with XMLHTTP.Send Access Denied Error. 
	//For the European server, we use the WinHttp Control instead of using XMLHTTP control.
	var bServer = typeof(Server) != "undefined";
	if ( bServer ) {
		var oNet = new ActiveXObject("WScript.Network") 
		var machineName = oNet.ComputerName;
		//For Europe-based server use WinHttp control and not XmlHttp
		if (machineName == "INETC534")
			var xmlServerHttp = new ActiveXObject("WinHttp.WinHttpRequest.5.1" );
	}

	// get the proxy settings, if any
	// load them from the cached cust object if possible, otherwise get them from the disk file
	var xml;
	try {
		try {

			if( bServerHTTP ) {
				if( ndSettings ) {
					if( ndSettings.getAttribute( 'useproxy' ) == "1" ) {
						// set the proxy server name, as provided on the settings screen
						xmlServerHttp.setProxy( 2, ndSettings.getAttribute( 'proxyserver' ), "" );
	
						//set to asynchronous true
						xmlServerHttp.open( strMethod, strURL, true );
						bOpen = true;
	
						// set the proxy creditials, as provided on the settings screen
						// must occur after the connection is opened.
						xmlServerHttp.setProxyCredentials( ndSettings.getAttribute( 'proxyid' ), ndSettings.getAttribute( 'proxypw' ) );
					}
				}
			} 
		} catch( e ) {
			delete e;
		}

		if( !bOpen )
			//set to asynchronous true
			xmlServerHttp.open( strMethod, strURL, true );

		// NOTE: set timeouts, and SSL validation flags after opening
		if( bServerHTTP ) {
			// if SSL, then turn off 
			if( strURL.search( /https:/i ) != -1 ) {
				var nUnknownCA = 256;
				var nWrongUsage = 512;
				// requested URL does not match the certificate URL.  Occurs when using a IP address instead of a name.
				var nHostMismatch = 4096; 

				// NOTE: It appears that the numbers are documented incorrectly, invalid date is actually host mismatch!
				var nInvalidDate = 8192;
				var nAllErrors = 13056; // Doesn't appear to work
				// WAW 8/16/2005 - Before fix, ignore date warnings
				// xmlServerHttp.setOption( 2 ) = xmlServerHttp.getOption(2) - nInvalidDate;
				// Now, as of  8/16/2005, ignore all warnings.
				xmlServerHttp.setOption( 2 ) = nAllErrors;
			}

			// 30 seconds to resolve and connect, 15 seconds to send & receive
			// NOTE: Increased time-out to account for dial-up users...
			var lResolve = 30  * 1000;
			var lConnect = 30 * 1000;
			var lSend = 60 * 1000;
			var lReceive = 60 * 1000;


			xmlServerHttp.setTimeouts(lResolve, lConnect, lSend, lReceive);
			// xmlServerHttp.setTimeouts(5, 5, 5, 5);
		}

		// NOTE: disable any cache or proxy for this item
		// BEWARE: without this, application updates may not be loaded from the server
		// instead they will be downloaded from th local proxy cache

		// This has only been tested with Microsoft ISA Server
		xmlServerHttp.setRequestHeader( 'cache-control', 'no-store' );

	} catch( e ) {
		delete e;
	}
	return xmlServerHttp;
}


function setAsynchRetryTimeOut( xmlhttp ) {
	var lResolve = 3600  * 1000;
	var lConnect = 3600 * 1000;
	var lSend = 3600 * 1000;
	var lReceive = 3600 * 1000;
	try {
		xmlhttp.setTimeouts(lResolve, lConnect, lSend, lReceive);
	} catch( e ) {
		// only ServerXMLHTTP has a setTimeouts method.
		delete e;
	}
}

// Processes the http request for both the GET and POST
function asynchHttpRetrieveXML( xmlhttp, xml ) {
	// Send the document, process any basic HTTP errors
		if( typeof( xml ) != 'undefined' ) {
			// postXML
			xmlhttp.send( xml );
		} else {
			// get
			xmlhttp.send( );
		}		
}







