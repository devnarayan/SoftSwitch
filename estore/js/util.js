
// Retrieves the value, converting EU formatted input into US formatted input.
// NOTE: US formatted input is required for JavaScript
function getNumericValue( field, strFormat ) {
	field = "" + field; //make sure field is of type string
	var strValue = field;
	switch( strFormat ) {
		case "EU":
			strValue = field.replace( /\./g, "" ).replace( /,/g, "." );
			break;

		default:
			strValue = field.replace( /\,/g, "" ).replace( /,/g, "" );
			break;
	}
	return new Number( strValue );
}

// Returns a string in the specified format
// NOTE: toLocaleString is not used to allow for testing EU in NA
function formatNumericValueString( strValue, strFormat ) {
	var strTemp = strValue;

	if( strValue == null ) {
		strTemp == "0.00";
	}

	if( typeof( strValue ) == 'undefined' ) {
		strTemp == "0.00";
	}

	// convert the value to a string
	if( typeof( strValue ) == "number" ) {
		strTemp = strValue.toString(); // NOT toLocaleString!
	}

	switch( strFormat ) {
		case "EU":
			return strTemp.replace( /\./g, "," );
			break;

		default:
			return strTemp;
			break;
	}
}



// Trims leading / trailing spaces from a string
function trimString( str ) {
	if( typeof( str ) == "undefined" ) {
		return '';
	}
	var strReturn = str.replace( /^\s+/g, '' );
	return strReturn.replace( /\s+$/g, '' );
}

// creates a unique file name
function createTempFileName() {
	if( typeof( fso ) == "undefined" ) {
		// use the fso object if already defined
		var fso = new ActiveXObject("Scripting.FileSystemObject");
	}
   var tfolder = fso.GetSpecialFolder(2);
   var tname = fso.GetTempName();
	return( tfolder.path + '\\' + tname );
}


// Converts the string to a number
function toNumber( str ) {
	var strNum;
	switch( typeof(str) ) {
		case 'String':
			strNum = str.replace( /[\$, %]/, '' );
			var nbr = parseFloat( strNum ).toFixed( 2 );
			return nbr;

		case 'undefined':
			return "0.00";

		default:
			var nbr = str.toFixed( 2 );
			return nbr;
	}
	return nbr;
}

// loads a text file from a local disk
function loadFromDisk( strName ) {
	var fso = new ActiveXObject( "Scripting.FileSystemObject" );
	f = fso.OpenTextFile( strName , 1, false );
	str = f.ReadAll();
	f.Close();
	return str;
}

function formatNumber( strNumber, nLength ) {	
	var i = 0;
	var strReturn = '';
	var nZerosNeeded = nLength - strNumber.length;

	for( i = 0; i < nZerosNeeded; i++ ) {
		strReturn += '0';
	}
	strReturn += strNumber;
	return strReturn;
}

// converts CCYY-MM-DD into a date Object
function dtFromString( strDate ) {
	var aTokens = strDate.split( /-/ );
	if( aTokens.length < 3 )
//		throw new Error( 109, 'Invalid date format: ' + strDate  );
		throw new Error( 109, tp.getText('InvalidDateFormat', strDate) );
	var dt = new Date( aTokens[0], parseInt(aTokens[1])-1, aTokens[2] );
	return dt;
}


// Just what you think, save the specified string to the specified file name
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

// Creates a DOM object, sets appropriate properties, and loads the specified file.
function loadXMLFile( strFileName ) {
	//var xml = new ActiveXObject("MSXML2.DOMDocument.4.0");
	var xml = createActiveXObject("MSXML2.DOMDocument.4.0");
	xml.resolveExternals = 0;
	xml.validateOnParse = 0;
	// xml.setProperty( "SelectionLanguage", "XPath" );
	if( !xml.load( strFileName ) ) {
		var strError = "";
		var facility = xml.parseError.errorCode>>16 & 0x1FFF;
		var code = xml.parseError.errorCode & 0xFFFF;
		strError += xml.parseError.reason;
		strError += "Facility: " + facility + " Code: " + code + "\r\n";
		strError += xml.parseError.srcText + "\r\n";
		strError += xml.parseError.url + "\r\n";
		strError += "Line: " + xml.parseError.line +  " Postion: " + xml.parseError.linepos + "\r\n";
		throw new Error( xml.parseError.errorCode, strError );
	}
	return xml;
}

// Retrieves a web page, with a 2 minute time-out
// Note, you will typically call getWebPageXML, not this function

// If an attributes array is passed to the function, they are posted to the page.
// This allows the function to 'spoof' form submit functionality.

function getWebFormResults( strURL, aAttributes ) {
	var whr = new ActiveXObject( "WinHttp.WinHttpRequest.5"); 
	var nTimeOut = 120000;
	whr.SetTimeOuts( 0, nTimeOut, nTimeOut, nTimeOut * 4 );

	if( aAttributes ) {
		var strSubmit = '';
		for( key in aAttributes ) {
			if( strSubmit.length > 0 ) {
				strSubmit += '&' + key + '=' + escape( aAttributes[key] );
			} else {
				strSubmit += key + '=' + escape( aAttributes[key] );
			}
		}
		whr.Open( "POST", strURL, false );
		whr.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded" )
		whr.SetRequestHeader( "User-Agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)" );
		whr.Send( strSubmit );
	} else {
		whr.Open( "GET", strURL );
		whr.SetRequestHeader( "User-Agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)" );
		whr.Send();
	}

	if( whr.Status != 200 ) {
		var e =  new Error( whr.Status, 'Error downloading ' + strURL + ' ' + whr.StatusText );
		if( strSubmit )
			e.description += '\r\nPosted data: ' + strSubmit;
		var errLog = new objErrorLog( e );
		throw e;
	}
	return whr.ResponseText;
}

function httpGetXML( strURL, aAttributes ) {
	var whr = new ActiveXObject( "WinHttp.WinHttpRequest.5"); 
	var nTimeOut = 120000;
	whr.SetTimeOuts( 0, nTimeOut, nTimeOut, nTimeOut * 4 );

	if( aAttributes ) {
		var strSubmit = '';
		for( key in aAttributes ) {
			if( strSubmit.length > 0 ) {
				strSubmit += '&' + key + '=' + escape( aAttributes[key] );
			} else {
				strSubmit += '?' + key + '=' + escape( aAttributes[key] );
			}
		}
		strURL += strSubmit + '&';
	}

	strPosition = 'httpGetXML:BuiltAttributes';
	whr.Open( "GET", strURL, false );
	strPosition = 'httpGetXML:Open';
	whr.Send(); 

	strPosition = 'httpGetXML:Send';
	if( whr.Status != 200 ) {
		strPosition = 'httpGetXML:not200';
		var e =  new Error( whr.Status, 'Error downloading ' + strURL + ' ' + whr.StatusText );
		var errLog = new objErrorLog( e );
		throw e;
	}

	var xmlReturn = newXMLDocument();
	strPosition = 'httpGetXML:newXML';
	if( !xmlReturn.loadXML( whr.ResponseText ) ) {
		var strErrMsg = 'Error loading XML <br/>';
		strErrMsg += "Reason: " + xmlReturn.parseError.reason + "<br/>";
		strErrMsg += "Source: " + xmlReturn.parseError.srcText + "<br/>";
		strErrMsg += "Line: " + xmlReturn.parseError.line + "<br/>";
		strErrMsg += "Position: " + xmlReturn.parseError.linepos + "<br/>";
		throw new Error( xmlReturn.parseError.errorCode, strErrMsg );
	}
	strPosition = 'httpGetXML:returnXML';
	return xmlReturn;
}


// returns a string;
function httpGet( strURL, aAttributes ) {
	var whr = new ActiveXObject( "WinHttp.WinHttpRequest.5"); 
	var nTimeOut = 120000;
	whr.SetTimeOuts( 0, nTimeOut, nTimeOut, nTimeOut * 4 );

	if( aAttributes ) {
		var strSubmit = '';
		for( key in aAttributes ) {
			if( strSubmit.length > 0 ) {
				strSubmit += '&' + key + '=' + escape( aAttributes[key] );
			} else {
				strSubmit += '?' + key + '=' + escape( aAttributes[key] );
			}
		}
		strURL += strSubmit + '&';
	}

	whr.Open( "GET", strURL, false );
	strPosition = 'httpGetXML:Open';
	whr.Send(); 

	if( whr.Status != 200 ) {
		strPosition = 'httpGetXML:not200';
		var e =  new Error( whr.Status, 'Error downloading ' + strURL + ' ' + whr.StatusText );
		var errLog = new objErrorLog( e );
		throw e;
	}

	return whr.ResponseText;
}



function getWebFormResultsXML( strURL, aAttributes ) {
	//var xml = new ActiveXObject("MSXML2.DOMDocument.4.0");
	var xml = createActiveXObject("MSXML2.DOMDocument.4.0");
	xml.resolveExternals = 0;
	xml.validateOnParse = 0;
	xml.setProperty( "SelectionLanguage", "XPath" );

	var strHTML = getWebFormResults( strURL, aAttributes );
	var strXML =  convertToXML( trimHTML( strHTML ) );
	// saveFile( Server.MapPath( "\\database\\lastrequest.html"), strHTML );
	// saveFile( Server.MapPath( "\\database\\lastrequest.xml"), strXML );
	if( !xml.loadXML( strXML )  ) {
		throw new Error( 100, xml.parseError.reason );
	}
	return xml;
}

function getWebPage( strURL, aAttributes ) {
	var whr = new ActiveXObject( "WinHttp.WinHttpRequest.5"); 

	var nTimeOut = 120000;
	whr.SetTimeOuts( 0, nTimeOut, nTimeOut, nTimeOut * 4 );

	if( aAttributes ) {
		var strSubmit = '';
		for( key in aAttributes ) {
			if( strSubmit.length > 0 ) {
				strSubmit += '&' + key + '=' + escape( aAttributes[key] );
			} else {
				strSubmit += key + '=' + escape( aAttributes[key] );
			}
		}

		whr.Open( "POST", strURL, false );
		whr.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded" )
		whr.SetRequestHeader( "User-Agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)" );
		whr.Send( strSubmit );
	} else {
		whr.Open( "GET", strURL );
		whr.SetRequestHeader( "User-Agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)" );
		whr.Send();
	}

	if( whr.Status != 200 ) {
		var e =  new Error( whr.Status, 'Error downloading ' + strURL + ' ' + whr.StatusText );
		if( strSubmit )
			e.description += '\r\nPosted data: ' + strSubmit;
		var errLog = new objErrorLog( e );
		throw e;
	}
		
	var strXML =  convertToXML( trimHTML( whr.ResponseText ) );
	// saveFile( Server.MapPath( "\\database\\lastrequest.html"), whr.ResponseText );
	// saveFile( Server.MapPath( "\\database\\lastrequest.xml"), strXML );
	return strXML;
}

function getWebCSV( strURL ) {
	var whr = new ActiveXObject( "WinHttp.WinHttpRequest.5"); 

	var nTimeOut = 120000;
	whr.SetTimeOuts( 0, nTimeOut, nTimeOut, nTimeOut * 4 );

	whr.Open( "GET", strURL );
	whr.SetRequestHeader( "User-Agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)" );
	whr.Send();

	if( whr.Status != 200 ) {
		var e =  new Error( whr.Status, 'Error downloading ' + strURL + ' ' + whr.StatusText );
		var errLog = new objErrorLog( e );
		throw e;
	}

	return whr.ResponseText;
}


function getWebPageXML( strURL ) {
	//var xml = new ActiveXObject("MSXML2.DOMDocument.4.0");
	var xml = createActiveXObject("MSXML2.DOMDocument.4.0");
	xml.resolveExternals = 0;
	xml.validateOnParse = 0;
	xml.setProperty( "SelectionLanguage", "XPath" );
	var strXML = getWebPage( strURL );
	if( !xml.loadXML( strXML )  ) {
		throw new Error( 100, xml.parseError.reason );
	}
	return xml;
}

// Wrapper that returns null if the specified text is not found
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


function toUpperXPath( strInput ) {
	var xml = createActiveXObject("MSXML2.DOMDocument.4.0");
	xml.loadXML( "<xml/>" );
	var str = trimString( strInput );
	xml.documentElement.setAttribute( 'string', str.toUpperCase() );
	return xml.xml.split( /"/ )[1];
}

function toXPath( strInput ) {
	var xml = createActiveXObject("MSXML2.DOMDocument.4.0");
	xml.loadXML( "<xml/>" );
	var str = trimString( strInput );
	xml.documentElement.setAttribute( 'string', str );
	return xml.xml.split( /"/ )[1];
}

// Determines the version of the scripting engine that is in use.
function GetScriptEngineInfo() {
	var s = ""; // Build string with necessary info.
	s += ScriptEngine() + " Version ";
	s += ScriptEngineMajorVersion() + ".";
	s += ScriptEngineMinorVersion() + ".";
	s += ScriptEngineBuildVersion();
	s += "\r\n";
	return(s);
}


// Returns an array of Form Field values from the specified XHTML document and form name
function updateFormFromXML( xml, strFormName ) {
	var aFormFields = new Array();

	if( typeof( strFormName ) != 'undefined' ) {
		// use the specified form if one is supplied...
		var ndFormInputs = xml.selectNodes( '//form[@name="' + strFormName + '"]//input|//form[@name="' + strFormName + '"]//select' );
	} else {
		// just grab the first form (necessary since form name is not required.
		var ndFormInputs = xml.selectNodes( '//form//input|//form//select' );
	}
	var i;

	for( i = 0; i < ndFormInputs.length; i++ ) {
		switch( ndFormInputs(i).nodeName ) {
		case 'select':
		case 'select-one':
			var ndSelected = ndFormInputs(i).selectSingleNode( 'option[@selected]' );
			if( ndSelected ) {
				if( ndSelected.getAttribute( 'value' ) ) {
					aFormFields[ ndFormInputs(i).getAttribute( 'name' ) ] = ndSelected.getAttribute( 'value' );
				} else {
					aFormFields[ ndFormInputs(i).getAttribute( 'name' ) ] = ndSelected.text;
				}
			}
			break;

			

		case 'input':
			switch( ndFormInputs(i).getAttribute( 'type' ) ) {
				case 'checkbox':
				case 'radio':
					if( ndFormInputs(i).getAttribute( 'checked' ) ) {
						aFormFields[ ndFormInputs(i).getAttribute( 'name' ) ] = ndFormInputs(i).getAttribute( 'value' );
					}
					break;

				case 'submit':
				case 'reset':
					break;

				default: // all other inputs
					aFormFields[ ndFormInputs(i).getAttribute( 'name' ) ] = ndFormInputs(i).getAttribute( 'value' );
			}
			break;

		default:
			break;
		}
	}
	return aFormFields;
}


// Populates the specified XHTML form with the matching attribute values in the ndValues node
// This function is used before the form is loaded.
// See updateDocumentFromNode to update an existing document
function updateFormValuesFromNode( xml, strFormName, ndValues ) {

	if( typeof( strFormName ) != 'undefined' ) {
		// use the specified form if one is supplied...
		var ndFormInputs = xml.selectNodes( '//form[@name="' + strFormName + '"]//input|//form[@name="' + strFormName + '"]//select' );
	} else {
		// just grab the first form (necessary since form name is not required.
		var ndFormInputs = xml.selectNodes( '//form//input|//form//select' );
	}
	var i;

	for( i = 0; i < ndFormInputs.length; i++ ) {
	try {
		// first, try to find the attribute value
		var strValue = ndValues.getAttribute( ndFormInputs(i).getAttribute( 'name' ) );
		if( strValue == null ) {
				continue; // this attribute is not on the form
			}

		switch( ndFormInputs(i).nodeName ) {
		case 'select':
		case 'select-one':
			var ndSelected = ndFormInputs(i).selectSingleNode( 'option[@value="' + strValue +'"]' );
			if( ndSelected ) {
				ndSelected.setAttribute( 'selected' , 1 );
			}
			break;

		case 'select-multiple':
			var aValues = strValue.split( /:/g );
			for( i =  0; i < aValues.length; i++ ) {
				strValue = aValues[i];
				var ndSelected = ndFormInputs(i).selectSingleNode( 'option[@value="' + strValue +'"]' );
				if( ndSelected ) {
					ndSelected.setAttribute( 'selected' , 1 );
				}
			}
			break;


		case 'input':
			switch( ndFormInputs(i).getAttribute( 'type' ) ) {
				case 'checkbox':
				case 'radio':
					if( ndFormInputs(i).getAttribute( 'value' ) == strValue ) {
						ndFormInputs(i).setAttribute( 'checked' , 1 );
					} else {
						ndFormInputs(i).removeAttribute( 'checked' );
					}
					break;

				case 'submit':
				case 'reset':
					break;

				default: // all other inputs
					ndFormInputs(i).setAttribute( 'value' , strValue );
			}
			break;

		default:
			break;
		}
	} catch( err ) {
		delete err; // don't yak if anything isn't found!
		continue;
	}
	}
}


// Sets the loaded document's valuds from the node attributes
function updateDocumentFromXML( ndValues ) {

	var ndAttributes = ndValues.selectNodes( '@*' );

	for( var i = 0; i < ndAttributes.length; i++ ) {
		try {
			var strName = ndAttributes( i ).nodeName;
			var strValue = ndAttributes( i ).text;

			var field;
			eval( 'field = document.all.' + strName );

			if( typeof( field ) == 'undefined' ) {
				continue;
			}

			switch( field.type ) {
				case 'hidden':
				case 'text':
				case 'password':
					if( field.float ) {
						field.value = formatNumericValueString( strValue, cust.strAccType );
					} else {
						field.value = strValue;
					}
					break;

				case 'select':
				case 'select-one':
					var bFoundOption = false;
					for( var j = 0; j < field.options.length; j++ ) {
						if( field.options[j].value == strValue ) {
							field.selectedIndex = j;
							bFoundOption = true;
						}
					}

					if( !bFoundOption ) {
						if( field.edit ) {
							field.options[0].value = strValue;
							field.options[0].text = strValue;
							field.selectedIndex = 0;
						}
					}
					break;

				case 'select-multiple':
					var aValues = strValue.split( /:/g ); 
					for( var k = 0; k < aValues.length; k++ ) {
						strValue = aValues[k];
						for( var j = 0; j < field.options.length; j++ ) {
							if( field.options[j].value == strValue ) {
								field.options[j].selected = true;
								// field.selectedIndex = j;
								bFoundOption = true;
							}
						}
					}
					break


				case "checkbox":				
				if( field.value == strValue ) {
					field.checked = true;
				}  else {
					field.checked = false;
				}
				break;
				case "radio":
					if( field.length > 0 ) {
						var f;
						for( f = 0; f < field.length; f++ ) {
							if( field[f].value == strValue ) {
								field[f].checked = true;
							} else {
								field[f].checked = false;
							}
						}
					}
					break;

				default:
					if( field.combo ) {
						field.code = strValue;

					}

					if( field.tagName == 'OBJECT' ) {
						field.value = strValue;
					}

					if( field.length > 0 ) {
						var f;
						for( f = 0; f < field.length; f++ ) {
							if( field[f].value == strValue ) {
								field[f].checked = true;
							} else {
								field[f].checked = false;
							}
						}
					}
					break;
			}
		} catch( err ) {
			delete err; // don't yak if anything isn't found!
		continue;
		}
	}
}


// 
// errlog.js
// for use in server error logging.
// creates an XML based error log, suitable for re-display
function objErrorLog( e, errAttributes ) {
	this.strFileName = Server.MapPath( '\\database\\errlog.xml' );

	this.addError = objErrorLog_addError;
	this.save = objErrorLog_save;

	try {
		this.xml = loadXML( this.strFileName );
	} catch( errlogload ) {
		this.xml = newXMLDocument();
		this.xml.loadXML( '<errorlog created="' + new Date() +'"/>' );
		var aVersion = new Array();
		aVersion['version'] = GetScriptEngineInfo();
		ndEngine = createNode( this.xml, 'scriptengine', aVersion );
		this.xml.documentElement.appendChild( ndEngine );
		this.save();
	}

	if( e ) {
		this.addError( e, errAttributes );
	}
}

function objErrorLog_save( e ) {
	this.xml.save( this.strFileName );
}

// Appends the error to the log
function objErrorLog_addError( e, aAttributes ) {
	if( typeof( aAttributes ) == 'undefined' ) {
		var aAttributes = new Array();
	}
	aAttributes['number'] = e.number;
	aAttributes['description'] = e.description;
	aAttributes['userid'] = Session( 'id' );  // record who had the error, in case we need to notify them of a fix
	aAttributes['dt'] = new Date();
	ndError = createNode( this.xml, 'error', aAttributes );
	this.xml.documentElement.appendChild( ndError );
	this.save();
}

function getErrMessage( e ) {
	var xml = loadXML( 'errmsg.xml' );
	var strXPath = '//msg[@nbr="' + e.number + '"]';
	var strMessage;
	ndMessage = xml.selectSingleNode( strXPath );
	if( !ndMessage ) {
		strXPath = '//msg[@nbr="default"]';
		ndMessage = xml.selectSingleNode( strXPath );
		return ndMessage.getAttribute( 'text' ) + ' ' + e.description;
	} else {
		return ndMessage.getAttribute( 'text' );
	}
}





// returns an associative array of the input tags from either a post or a get
function getInputArray() {
	var aForm = new Array();

	for(var Enum = new Enumerator(Request.QueryString); !Enum.atEnd(); Enum.moveNext() ) {
		// aForm['method'] = 'GET';
   	strItem=Enum.item();
		if( strItem != 'submit' ) {
   		aForm[strItem]=Request.QueryString(strItem).Item;
		}
	}	 

	for(var Enum = new Enumerator(Request.Form); !Enum.atEnd(); Enum.moveNext() ) {
		// aForm['method'] = 'POST';
		strItem=Enum.item();
   	if ( Request.Form(strItem).Count > 1) { 
   	   aForm[strItem]=Request.Form(strItem)(1);
   	   aForm[strItem]=Request.Form(strItem)(2);
   	} else {
			if( strItem != 'submit' ) {
   			aForm[strItem] = Request.Form(strItem).Item;
			}
		}
	}
	return aForm;
} 

// called at the start of every window, handles:
// header image swapping, and titles 
// logon and user security level validation
// feature logging
function startWindow( strWindow ) {
	docBody.style.cursor='';
	if( typeof( bolXML ) == 'undefined' ) {
			//next 8 lines added on april-7-2005

			var strDPGMLogo = "<img src='images/DHL_logo.gif' />";//alert("dpgm?");
			switch(cust.strAccType){
				case "EU": 
					var headerLogo = "<img src='images/DHL_logoDE.gif' />"; //alert("EU");
					break;
										
				case "UK": 
					//var common_tasks_doc = loadXML( 'common_tasks_menu_eu.htm' );
					if( cust.strCustNo != "delsoltn" ) {
						var headerLogo = "<img src='images/UKdhl_logo.gif' />";//alert("UK");
					}
					break;
				
				default :
					// var common_tasks_doc = loadXML( 'common_tasks_menu.htm' );	 
					if( user.lastLanguage == "DE" ) {
						var headerLogo = "<img src='images/DHL_logoDE.gif' />"; //alert("EU");
					} else {
						var headerLogo = "<img src='images/DHL_logo.gif' />";//alert("dpgm?");
					}
					break;
			}

			// Don't change, if it was changed already - WAW
			if( document.all.logoHeader.innerHTML == strDPGMLogo ) {
				document.all.logoHeader.innerHTML = headerLogo;
			}

			//
			// var quicklinksxsl = loadTranslatedXSL('quicklinksview.xsl');//13sep2005
			// var quicklinksxml = loadXML('quicklinksdata.xml');//13sep2005
			// var aParms = {"language" : tp.languagecode, "addAdminLinks" : 'no'};
    	// do the xslt transformation
			// quicklinksxml = transformXMLtoXML( quicklinksxml, quicklinksxsl, aParms );
			// replace the old table with this new one
			// document.all.quicklinks.innerHTML = quicklinksxml.xml;
      
			var common_tasks_doc = loadTranslatedXSL('localmenu.htm'); //13sep2005

			// Remove any customer specific items, not for this customer
			common_tasks_doc.selectNodes( "//tr[@custno][not(@custno = '" + cust.strCustNo + "')]" ).removeAll();


			try {
				document.all.commonTasks.innerHTML = common_tasks_doc.xml;
			} catch( err ) {
				alert( err.description );
			}

			if( strWindow != "Logon" ) {	
				if( !user.verifyLogon() ) {
					displayError( tp.getText('MustLogonError') );
					return false;
				}
			}	
	} else {
		return true;
	}

	try {	
		// load a random image, 1 - 22
		var nImage = parseInt( Math.random() * 24 ) + 5;
		document.all.headerimage.innerHTML = '<img class="whiteborder" src="images/w' + nImage + '.jpg"/>';
	} catch( imgerr ) {
		delete imgerr;
	}

	switch( strWindow ) {
		// prevent level 1 from these functions
		case 'listBOL':
		case 'closeBOL':
		case 'createBOL':
		case 'displayReport':
			if( user.level < 2 ) {
				throw new Error( 200, tp.getText("SorryIDNoAccess") );
			}
			break;

		// prevent level 2 from these functions
		case 'scaleConfig':
		case 'udflist':
		case 'settings':
		case 'removeAnAccount':
			if( user.level < 3 ) {
				throw new Error( 200, tp.getText("SorryIDNoAccess") );
			}
			break;

		default: 
			strCurrentWindow = strWindow;
			break;
	}

	// set the window title
	var strTitle = '';
	switch( strWindow ) {
		case 'logon':	strTitle = tp.getText('Logon'); break;
		case 'home':	strTitle = tp.getText('HomePage'); break;
		case 'listBOL':	strTitle = tp.getText('BOLListingPage'); break;
		case 'displayBOL':	strTitle = tp.getText('BOLListingPage'); break;
		case 'closeBOL':	strTitle = tp.getText('CloseBOL'); break;
		case 'createBOL':	 strTitle = tp.getText('CreateBOL'); break;
		case 'addItems':	 strTitle = tp.getText('EnterItems'); break;
		case 'scaleConfig':	 strTitle = tp.getText('ScaleConfigurationTitle'); break;
		case 'settings': strTitle = tp.getText('SettingsPage'); break;
		case 'udflist': strTitle = tp.getText('ManageUDFList'); break;
		case 'displayReport': strTitle = tp.getText('ReportsPage'); break;
		case 'userMaintenance': strTitle = tp.getText('UserMaintenance'); break;
		case 'removeAnAccount': strTitle = tp.getText('RemoveAnAccount'); break;
		default:
			strTitle = strWindow;
	}
	try {
		featureLog.recordNestedFeature( 'window', strWindow );
	} catch( e ) {
		delete e;
	}
	document.all.pageName.innerHTML = strTitle;
	return true;
}


// records usage of individual features in the software
function objFeatureLog() {
	this.strFileName = 'feature.xml';
	this.xml = newXMLDocument();
	this.recordFeature = objFeatureLog_recordFeature;
	this.recordNestedFeature = objFeatureLog_recordNestedFeature;
	this.recordNestedSetting = objFeatureLog_recordNestedSetting;
	this.save = objFeatureLog_save;
	try {
		this.xml = loadXML( this.strFileName );
	} catch( e ) {
		this.xml.loadXML( '<features/>' );
	}
}

function objFeatureLog_save() {
	this.xml.save( this.strFileName );
}

function objFeatureLog_recordFeature( strName ) {
	var aFields = new Array();
	aFields['desc'] = strName;
	var ndFeature = addUniqueChild( this.xml.documentElement, createNode( this.xml, 'feature', aFields ) );
	var nCount = ndFeature.getAttribute( 'count' );
	( nCount != null ) ? nCount++ : nCount = 1;
	ndFeature.setAttribute( 'count', nCount );
	ndFeature.setAttribute( 'dt', new Date().valueOf() );
	this.save();
}

function objFeatureLog_recordNestedFeature( strParent, strName ) {
	var aFields = new Array();
	aFields['desc'] = strParent;
	var ndFeature = addUniqueChild( this.xml.documentElement, createNode( this.xml, 'feature', aFields ) );
	aFields['desc'] = strName;
	var ndFeature = addUniqueChild( ndFeature, createNode( this.xml, 'item', aFields ) );
	var nCount = ndFeature.getAttribute( 'count' );
	( nCount != null ) ? nCount++ : nCount = 1;
	ndFeature.setAttribute( 'count', nCount );
	ndFeature.setAttribute( 'dt', new Date().valueOf() );
	this.save();
}

function objFeatureLog_recordNestedSetting( strParent, strName, strValue ) {
	var aFields = new Array();
	aFields['desc'] = strParent;
	var ndFeature = addUniqueChild( this.xml.documentElement, createNode( this.xml, 'feature', aFields ) );
	if( strValue != "" ) {
		setAttribute( ndFeature, strName, strValue );
		this.save();
	}
}

// converts every node from a UCT value to a local date (mm/dd/yyyy)
function valueToDate( ndList ) {
	for( var i = 0; i < ndList.length; i++ ) {
		
		var dt = new Date( parseInt(ndList(i).text ) );
		if( dt < new Date( '1/1/2000' ) ) {
			// converting dates that are not valid, all effective and expire dates should be > 1/1/2003.
			continue;
		}
		ndList(i).text = dt.getMonth() + 1 + '/' + dt.getDate() + '/' + dt.getFullYear();
	}
}

// converts every node from a local date (mm/dd/yyyy) to a UCT value
function dateToValue( ndList ) {
	for( var i = 0; i < ndList.length; i++ ) {
		var aTokens = ndList(i).text.split( /\//g );
		//if( aTokens.length ) {
		//aTokens is of length 1 is string doesn't have a / character in it
		if( aTokens.length > 1) {
			dt = new Date( aTokens[2], aTokens[0] - 1, aTokens[1] );
			ndList(i).text = dt.valueOf();
		}
	}
}

// performs a very casual obfuscation on an XML file
function objXMLEncode( xml ){	
	this.xml = xml;
	this.encode = objXMLEncode_encode;
	this.decode = objXMLEncode_decode;
}

function objXMLEncode_encode( strXPath ) {
	var ndNodes = this.xml.selectNodes( strXPath );
	for( var i = 0; i < ndNodes.length; i++ ) {
		// check that the node is not already encoded.
		if( ndNodes(i).getAttribute( 'enc' ) )
			continue;

		ndNodes(i).setAttribute( 'enc', '1' );

		// get all of the attributes
		var ndAttr = ndNodes(i).selectNodes( '@*' );
		for( var j = 0; j < ndAttr.length; j++ ) {
			var strName = ndAttr(j).nodeName;
			var strValue = ndAttr(j).nodeValue;
			var strNewValue = '';
			if( strName != 'notes' ) {
				for( var k = 0; k < strValue.length; k++ ) {
					strNewValue += String.fromCharCode( strValue.charCodeAt(k)+28-k );
				}
			}
			ndNodes(i).setAttribute( strName, strNewValue );
		}
	}
}

function objXMLEncode_decode( strXPath ) {
	var ndNodes = this.xml.selectNodes( strXPath );
	for( var i = 0; i < ndNodes.length; i++ ) {
		// check that the node is not already encoded.
		if( ndNodes(i).getAttribute( 'enc' ) == null )
			continue;

		// get all of the attributes
		var ndAttr = ndNodes(i).selectNodes( '@*' );
		for( var j = 0; j < ndAttr.length; j++ ) {
			var strName = ndAttr(j).nodeName;
			var strValue = ndAttr(j).nodeValue;
			var strNewValue = '';
			if( strName != 'notes' ) {
				for( var k = 0; k < strValue.length; k++ ) {
					strNewValue += String.fromCharCode( strValue.charCodeAt(k)-28+k );
				}
			}
			ndNodes(i).setAttribute( strName, strNewValue );
		}
		ndNodes(i).removeAttribute( 'enc' );
	}
}

function backupfiles() {
	try {
	// objDialog.Filter = "JPEG Files (*.jpg)|*.jpg|All Files (*.*)|*.*"
		alert( tp.getText("InsertFloppy") );
		var fso = new ActiveXObject("Scripting.FileSystemObject");
		fso.CopyFile ("c:\\Program Files\\SmartCharge\\cust.xml", "a:\\");
		fso.CopyFile ("c:\\Program Files\\SmartCharge\\dpgm.xml", "a:\\");
		fso.CopyFile ("c:\\Program Files\\SmartCharge\\tempbol.xml", "a:\\");
		fso.CopyFile ("c:\\Program Files\\SmartCharge\\callback.js", "a:\\");
		alert( tp.getText("BackupComplete") );
	} catch( e ) {
		alert( e.description );
	}
}

// converts decimal lbs to lbs & ozs
// returns an array, the first member is the lbs, the second is the ozs
function decimalToOZ( strWeight ) {
	var aWeight = new Array();
	var aTokens = strWeight.split( /\./g );
	aWeight['lbs'] = aTokens[0];
	aWeight['ozs'] = '0';
	if( aTokens.length > 1 ) {
		aWeight['ozs'] = new Number((aTokens[1] * 16.00)/Math.pow(10, aTokens[1].length)).toFixed(3);
		if( aWeight['ozs'] == 16 ) {
			aWeight['lbs'] = new Number( aWeight['lbs'] ) + 1;
			aWeight['ozs'] = 0;
		}
		if( isNaN( aWeight['ozs'] ) )
			aWeight['ozs'] = '0';
	}
	if( isNaN( aWeight['lbs'] ) )
		aWeight['lbs'] = '0';
	return aWeight;
}

function copyAttribute( ndSource, strSourceName, ndTarget, strTargetName ) {
	try {
		if( typeof( strTargetName ) == 'undefined' ) {
			strTargetName = strSourceName;
		}
		ndTarget.setAttribute( strTargetName, ndSource.getAttribute( strSourceName ) );
	} catch( e ) { delete e }
}

// added on march-30-2005
function outputShipmentName( strAccType ) {

	if ( typeof( strAccType ) == 'undefined' )
	   strAccType = cust.strAccType;	
	switch( strAccType ) {
		case "EU":
		case "UK":
			return "AWB";
		default:
			return "BOL";
	}				
}

/* entire objDate added on 31-march-2005 **/


function objDate() {
	// Methods
	this.formatDate = objDate_formatDate;
	this.formatTime = objDate_formatTime;
	this.formatReportDate = objDate_formatReportDate;
	this.formatRZBDate = objDate_formatRZBDate;
	this.formatMMDD = objDate_formatMMDD;
	this.formatCurrentMMDD = objDate_formatCurrentMMDD;
	this.formatNumber = objDate_formatNumber;
	this.formatCCYYMMDD = objDate_formatCCYYMMDD;
	this.formatMT = objDate_formatMT;
	this.formatHHMMSS = objDate_formatHHMMSS;
	this.getTimeStampString = objDate_getTimeStampString;
	this.format = objDate_format;
	this.formatUCT = objDate_formatUCT;
	this.ToDateTime = objDate_ToDateTime;
	this.reportDate = objDate_reportDate;
	this.utc = objDate_utc;
	this.hasDigit = objDate_hasDigit;
	this.compare = objDate_compare;
	this.noBreakString = objDate_noBreakString;
	this.dateToValue = objDate_dateToValue;
	//displays in lbs and ozs, ex: displays 6.5 lbs as 6 lbs 8 oz
	this.poundsAndOunces = objDate_poundsAndOunces;
	this.dispWeight = objDate_dispWeight;
	this.toFloat = objDate_toFloat;
	this.titleOfWeightColumn = objDate_titleOfWeightColumn;
	this.getLastYearsDate = objDate_getLastYearsDate;
	
	this.strAccType  = "DPGM"; //default
	this.strCombWeightDisp = "0";
	this.strUOM = "lbs";
}

//added on april-17-2005. Gets today's date in millisecond format
function objDate_getLastYearsDate() {
	var dt = new Date();
	var yearInMilSec = 31536000000; //365 * 24 * 60 * 60 * 1000
	return ( dt.valueOf() - yearInMilSec );
}

// display date only on a report
function objDate_formatReportDate( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}

	var dtIn = new Date( parseInt( strDate ) );
	var strYear = new String( dtIn.getYear() ).substr( 2 );
	switch ( this.strAccType ) {
			case "UK":
			case "EU":
				strReturn = dtIn.getDate() + "-" + parseInt(dtIn.getMonth() + 1) + "-" + strYear;
				break;
			default:
				strReturn = parseInt(dtIn.getMonth() + 1) + "-" + dtIn.getDate() + "-" + strYear;
		}
	return strReturn;
}

// Display Date
function objDate_formatDate( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}

	var dtIn = new Date( parseInt( strDate ) );
	var strYear = new String( dtIn.getYear() ).substr( 2 );
	switch ( this.strAccType ) {
		case "UK":
		case "EU":
			strReturn = dtIn.getDate() + "-" + parseInt(dtIn.getMonth() + 1);
			break;
		default:
			strReturn = parseInt(dtIn.getMonth() + 1) + "-" + dtIn.getDate();
	}
	return strReturn;
}

// Display Date
function objDate_formatTime( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}

	var dtIn = new Date( parseInt( strDate ) );
	var hour = dtIn.getHours();
	var AmPm = (hour < 12) ? 'am' : 'pm';
	if ( hour > 12)
		hour = hour % 12; 
	var minutes = dtIn.getMinutes();
	if ( minutes < 10)
		minutes = "0" + minutes; 
	return hour + ":" + minutes + " " + AmPm;
}


// display date only on a report
function objDate_formatMMDD( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}

	var dtIn = new Date( parseInt( strDate ) );
	var strYear = new String( dtIn.getYear() ).substr( 2 );
	strReturn = this.formatNumber(dtIn.getMonth() + 1, 2)  + this.formatNumber(dtIn.getDate(),2);
	return strReturn;
}


// Current date
function objDate_formatCurrentMMDD( ) {
	var dtIn = new Date( );
	var strYear = new String( dtIn.getYear() ).substr( 2 );
	strReturn = this.formatNumber(dtIn.getMonth() + 1, 2)  + this.formatNumber(dtIn.getDate(),2);
	return strReturn;
}

function objDate_formatNumber( n, nLength ) {	
	var i = 0;
	var strReturn = '';
	var strNumber = new String( n );
	var nZerosNeeded = nLength - strNumber.length;

	for( i = 0; i < nZerosNeeded; i++ ) {
		strReturn += '0';
	}
	strReturn += strNumber;
	return strReturn;
}


// display date in the format CCYYMMDD
function objDate_formatCCYYMMDD( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}
	var dtIn = new Date( parseInt( strDate ) );
	strReturn = this.formatNumber( dtIn.getYear(), 4) + this.formatNumber( dtIn.getMonth() + 1, 2 ) + this.formatNumber( dtIn.getDate(), 2 );
	return strReturn;
}

// parses "2006-02-01T00:00:00" into a date
function objDate_formatMT( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}

	var aSplit = strDate.split( /[-T:]/g );
	var dtIn = new Date( aSplit[0],  parseInt(new Number(aSplit[1])) -1, aSplit[2], aSplit[3], aSplit[4], aSplit[5] );
	strReturn = dtIn.getMonth() + 1 + "/" + dtIn.getDate();
	return strReturn;
}


// display time in the format HHMMSS
function objDate_formatHHMMSS( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}
	var dtIn = new Date( parseInt( strDate ) );
	strReturn = this.formatNumber( dtIn.getHours(), 2) + this.formatNumber( dtIn.getMinutes() + 1, 2 ) + this.formatNumber( dtIn.getSeconds(), 2 );
	return strReturn;
}

function objDate_getTimeStampString( dtIn ) {
	if( !dtIn ) return "";
	var dtNow = new Date();
	// Display the time today.
	if((dtIn.getYear() == dtNow.getYear() ) && (dtIn.getMonth() == dtNow.getMonth() ) && (dtIn.getDate() == dtNow.getDate()) ) {
		/* var aTokens = dtIn.toLocaleString().split( /[, ]/ );
		var aTime = aTokens[aTokens.length - 2].split( /:/ );
		return  aTime[0] + ":" + aTime[1] + ' ' + aTokens[aTokens.length - 1] */
		var hour = dtIn.getHours();
		var AmPm = "";
		var minutes = dtIn.getMinutes();
		if ( minutes < 10)
			minutes = "0" + minutes; 

		switch( this.strAccType ) {
			case "UK":
			case "EU":
			return hour + ":" + minutes;
			break;

			default:
			AmPm = (hour < 12) ? 'am' : 'pm';
			if ( hour > 12)
				hour = hour % 12; 
			return hour + ":" + minutes + " " + AmPm;
			break;
		}



	} else {
		var strYear = new String( dtIn.getYear() ).substr( 2 );
		switch ( this.strAccType ) {
			case "UK":
			case "EU":
				strReturn = dtIn.getDate() + "-" + parseInt(dtIn.getMonth() + 1) + "-" + strYear;
				break;
			default:
				strReturn = parseInt(dtIn.getMonth() + 1) + "-" + dtIn.getDate() + "-" + strYear;
		}
		return strReturn;
		
	}
}

function objDate_format( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}
	return this.getTimeStampString( new Date( strDate ) );
}

//function identical to format UTC (to match ToDateTime in .NET date object extension)
function objDate_ToDateTime( objNodeList ) {

	return this.formatUCT( objNodeList );
}

function objDate_formatUCT( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var nDate = parseInt( objNodeList(i).text );
	}
	return this.getTimeStampString( new Date( nDate ) );
}

function objDate_reportDate( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var nDate = parseInt( objNodeList(i).text );
	}
	return this.formatReportDate( new Date( nDate ) );
}

function objDate_utc( objNodeList ) {
	for( i = 0; i < objNodeList.length; i++ ) {
		var strDate = objNodeList(i).text;
	}
	var dt = new Date( strDate );
	return dt.valueOf();
}

function objDate_hasDigit( objNodeList ) {
	// returns true if the string has digits in it. 
	// used to eliminate legacy zones
	for( i = 0; i < objNodeList.length; i++ ) {
		var strValue = objNodeList(i).text;
	}
	if( strValue.search( /[0-9]/ ) != -1 ) {
		if( strValue.search( /1st/i ) != -1 ) {
			return false;
		}
		return true;
	}

	return false;

}

function objDate_compare( objNodeList, strText ) {
	for( i = 0; i < objNodeList.length; i++ ) {
		var strValue = objNodeList(i).text;
	}
	if( strValue.toUpperCase() == strText.toUpperCase() ) {
		return true;
	}
	return false;
}

// outputs the string replacing spaces with the non-breaking space
function objDate_noBreakString( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strString = objNodeList(i).text;
	}
	var aTokens = strString.split( / /ig );
	var strReturn = aTokens[0];
	for( var i = 1; i < aTokens.length; i++ ) {
		strReturn += '&#160;';
		strReturn += aTokens[i];
	}
	return strReturn;
}

// converts every node from a local date (mm/dd/yyyy) to a UCT value
function objDate_dateToValue( objNodeList ) {
	if( !objNodeList.length ) return "";
	for( i = 0; i < objNodeList.length; i++ ) {
		var strString = objNodeList(i).text;
	}

	var aTokens = strString.split( /\//g );
	if( aTokens.length ) {
		dt = new Date( aTokens[2], aTokens[0] - 1, aTokens[1] );
		return  dt.valueOf();
	}
	return 0;
}

//if number is natural and dispAsNatural='true' display as is, otherwise display as float with 'n' figures after the decimal point
function objDate_toFloat( number, n, dispAsNatural ) {

	if ( number == null  || typeof(number) == "NaN" || typeof( number ) == "undefined")
		return 0;	
	
	var intPart = parseInt( number );
	if ( intPart == number && dispAsNatural )
		return intPart;
		
	return parseFloat( number ).toFixed( n );
	
}

// auxiliary function for objDate_poundsAndOunces
function objDate_dispWeight( strWeight ) {

	if ( this.strCombWeightDisp == "0")
		return this.toFloat( strWeight, 2, false );
		 
	if ( strWeight && strWeight != "" && typeof( strWeight ) != undefined )
		var weight = parseFloat( strWeight ) ;
	else
		return "0 lbs";	
	var pounds = parseInt( weight );
	var strOz = "";
	if (weight != pounds ) {
		var oz = this.toFloat( (weight - pounds) * 16 , 2, true) ;
		strOz = " " + oz + " ozs";
	}
	return pounds + " lbs" + strOz;
}


function objDate_poundsAndOunces( objNodeList ) {

	if ( typeof( objNodeList) == "number" )
		return this.dispWeight( objNodeList );
	/*	
	if( !objNodeList.length ) return "";
		
	var doc  = newXMLDocument();
	doc.loadXML( '<root/>');
	ndRoot = doc.selectSingleNode("//root");
		
	for( i = 0; i < objNodeList.length; i++ ) {
		var aAttributes = new Array();
		aAttributes['lbs'] = this.dispWeight( objNodeList.item(i).value );
		ndRoot.appendChild( createNode( doc, 'i', aAttributes) );
	}*/
	
	return this.dispWeight( objNodeList.item(0).value );//ndRoot.selectNodes("//i");
}

function objDate_titleOfWeightColumn() {
	
	if (this.strUOM == 'kg' || this.strUOM == 'kgs')
		return "Kg";
	if ( this.strCombWeightDisp == "0")
		return "Lbs";
	return "Weight";	
}


// display date only on a report
function objDate_formatRZBDate( objNodeList ) {
 if( !objNodeList.length ) return "";
 for( i = 0; i < objNodeList.length; i++ ) {
  var strDate = objNodeList(i).text;
 }
 
 var dtIn = new Date( parseInt( strDate ) );
 var strYear = new String( dtIn.getYear() );
 switch ( this.strAccType ) {
   case "UK":
   case "EU":
    strReturn = dtIn.getDate() + "." + parseInt(dtIn.getMonth() + 1) + "." + strYear;
    break;
   default:
    strReturn = parseInt(dtIn.getMonth() + 1) + "/" + dtIn.getDate() + "/" + strYear;
  }
 return strReturn;
}



//if bGetURLFromWS=false then aqcuire URL from web service, otherwise acquire from cust.xml
//if path is not "undefined" use this path to find cust.xml 
function getDefaultURL( path, bGetURLFromWS ) {

	var DHL_URL = "https://webtools.globalmail.com/smartcharge";
	var EU_DHL_URL = "http://www.dhlsmartcharge.com";
	
	var url = DHL_URL;
	try {
		var strCustPath = "cust.xml";
		if (typeof(path) != "undefined")
			strCustPath = path + "\\" + strCustPath;
			
		var custDoc = loadXML( strCustPath );
		
		//pick url from server node		
		var ndServer = custDoc.documentElement.selectSingleNode("server");
		if (ndServer) {
			url = ndServer.getAttribute("url");
			url = url.substring(0, url.indexOf("/bolpost.asp"));
		} else
			throw new Error( 109, "server element in cust.xml missing" );	
						
		if (bGetURLFromWS != false) {	
			//get url from web-service (European server). null if url could not be determined.
			var urlFromWS = getURLFromWebService( custDoc );
			//if url from web-mojo could be determined (not null) and is different than url as found in cust.xml
			if (urlFromWS != null && (url+"/bolpost.asp" != urlFromWS)) {
				//update cust.xml
				ndServer.setAttribute("url",urlFromWS);
				custDoc.save(strCustPath);
				//update url
				url = urlFromWS;
				url = url.substring(0, url.indexOf("/bolpost.asp"));
			}
		}
		
		/**
		//if European account exists
		//if (custDoc.selectNodes("//customer[@acctype='EU' or @acctype='UK']").length > 0) {
		//	url = EU_DHL_URL;
		//	ndServer.setAttribute("url",EU_DHL_URL);
		//	custDoc.save(strCustPath);
		//}
		*/		
			
	} catch (e) {
		var desc = e.description;
		delete e;
		throw new Error( 109, "Error getting server url: " +  desc);
	}
	return url;	

}

//get URL from web-service (on web-mojo). Returns null if URL could not be determined.
function getURLFromWebService( custDoc ) {

	try {
		//get Account type
		var ndCustomer = custDoc.selectSingleNode("//customer");
		//if cust doesn't have any accounts: when customer first installs
		if (ndCustomer == null)
			return null;
		var strAcctype = ndCustomer.getAttribute("acctype");
		if (strAcctype == null)
			strAcctype == "DPGM";
		
		var custno = ndCustomer.getAttribute("custno");	
	
		var xml = newXMLDocument();
		var strURL = "http://www.dhlsmartcharge.com/getscurl.asp";
		//var strURL = "http://localhost/dpgmws/getscurl.asp";		

   		xml.loadXML( "<root service='geturl'/>" );
   		xml.documentElement.setAttribute( "acctype", strAcctype );
   		xml.documentElement.setAttribute( "custno", custno );
   		var xmlRec = postXML( xml, strURL );
   		if( xmlRec.selectSingleNode( "//error" ) )			
			return null;
			
		return xmlRec.documentElement.getAttribute( "url");
			
	} catch(e) {
		return null;
	}

}

//return a name description for baseurl
function getServerDesc( url ) {

	try {
		var baseurl = url;
		if (url.lastIndexOf(".asp") != -1)
			baseurl = url.substring(0, url.lastIndexOf("/"));
		 
		switch (baseurl) {			
			case "http://localhost/dpgmws":
				return "LOCAL";
			case "http://www.wcg-itx.com/smartcharge":
			case "https://www.wcg-itx.com/smartcharge":
				return "CINDER";
			break;
			case "https://webtools.globalmail.com/smartcharge":
			case "https://webtools.globalmail.com":
			case "http://webtools.globalmail.com/smartcharge":
			case "http://webtools.globalmail.com":			
				return "US";
			case "https://webtools.dhlglobalmail.com/smartcharge":
			case "https://webtools.dhlglobalmail.com":
			case "http://webtools.dhlglobalmail.com/smartcharge":
			case "http://webtools.dhlglobalmail.com":
				return "US AT";	
			case "http://www.dhlsmartcharge.com":
			case "https://www.dhlsmartcharge.com":
			case "http://81.27.96.143":
				return "EUROPE";
			default:
				throw new Error( 109, "Unknown server url " + url );
				return "ERROR: UNKNOWN SERVER";
			break;
		
		}
	} catch (e) {
		throw new Error( 109, "Unknown server url " + url );
	}

}

//if bGetURLFromWS NOT false then aqcuire URL from web service, otherwise acquire from cust.xml
function getDomainURL( path, bGetURLFromWS ) {
	
	var WshShell = createActiveXObject("WScript.Shell");
	var WshSysEnv = WshShell.Environment("PROCESS");	

	//defined in util.js
	var strDefaultServer = getDefaultURL( path, bGetURLFromWS );

	// use the default, unless re-defined by the NEWSMART environment variable
	var strServer = WshSysEnv("NEWSMART");
	if( strServer.length > 0 )
		return strServer;
				
	return  strDefaultServer;	

}

//get the application server machine name
//(in Herndon it was APPS-03, in Atlanta it's slated to be ATL-WEB1)
function getAPPSMachineName() {
	try {
		var xml = loadXML( Server.MapPath( "servershierarchy.xml") );
		var domain = getServerDomain();
		var ndAppsServer = xml.selectSingleNode("//server[@domain='" + domain + "']/appsserver");
		return ndAppsServer.getAttribute("name");
	} catch (e) {
		delete e;
		//default to Herndon
		return "IAD-APPS03";
	}
}

//get the server domain name
function getServerDomain() {
	try {
		var domain  = "" + Request.ServerVariables("SERVER_NAME");
		//if running locally or on dhlsmartcharge, return default domain
		if (domain.indexOf("webtools") == -1) {
			var xml = loadXML( Server.MapPath( "servershierarchy.xml") );		
			var ndAppsServer = xml.selectSingleNode("//server[@default]");
			return ndAppsServer.getAttribute("domain");
		}
			
		domain = domain.replace("www.","");
		return domain;				
	} catch (e) {
		delete e;
		//default to Herndon
		return "webtools.dhlglobalmail.com";
	}
}


//compare  weight/pieces in DESCENDING order
function numberCompare( aData1, aData2 ) {
	try {
		var data1 = new Number(aData1[1]);
		var data2 = new Number(aData2[1]);
		if ( data1 < data2 )
			return 1;
		if ( data1 > data2 )	
			return -1;
		return 0;	
	} catch (e) {
		delete e;
		return 0;
	}
}

//pad numerical str value with leading zeros for a total of len digits
function padStrValue( custno, len ) {

	var s = "" + custno;
	//all digits
	if (s.search(/D/) == -1) {
		var length = len - s.length;
		if (length > 0) {
			for (var i=0; i<length; i++) {
				s = "0" + s;
			}
		}		
	}
	return s;

}



