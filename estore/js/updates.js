
//var fso = new ActiveXObject( "Scripting.FileSystemObject" );

function showProgress(nPercent, filepath) {
    // ----------------------------------------
    // routine called with percent from 0 to 100
    // updates the progress indicator
    // ----------------------------------------
    var i;    
    var s = "<scr" + "ipt lang" + "uage='javas" + "cript'>";    
    Response.Write(s);
    Response.Write("try {");
    filepath = filepath.replace(/\\/g,"\\\\");
    Response.Write("filepath.innerHTML = filepath.innerHTML + '<br> " + filepath + "';");
    for (var i=1; i<21; i++) {    
        if ( 100 * (i / 20) <= nPercent) {
            Response.Write("document.pic" + i + ".src= 'images/blueblock.gif';");
        } else {
            Response.Write("document.pic" + i + ".src= 'images/transparentblock.gif';");
        }
    }    
    Response.Write("} catch (e) {delete e;}");
    Response.Write("</scr" + "ipt>");
    Response.Flush();
}


function backupFolderName() {

	var dt = new Date();
	var s = "backup_" + dt.getFullYear() + "_" + (dt.getMonth()+1) + "_" + dt.getDate() + "_" + dt.valueOf();
	return s;
	
}

function getFiles(fso, ndServerNode, xml, xpath, path, total) {
	try {		
		if (xpath == "") {
			//xpath = "folder[@name='" + ndServerNode.getAttribute("name") + "']";
			xpath = "folder[@name='" + xml.documentElement.getAttribute("name") + "']";
			path = ".";
		} else {	
			xpath += "/folder[@name='" + ndServerNode.getAttribute("name") + "']";
			path += "\\" + ndServerNode.getAttribute("name");
		}	
		var ndNodeList = ndServerNode.selectNodes("file");
		for (var i =0; i < ndNodeList.length; i++) 
		{
			var sname = ndNodeList[i].getAttribute("name");
			var ssize = ndNodeList[i].getAttribute("size");
			var sdate = ndNodeList[i].getAttribute("date");				
			var ndNode = xml.selectSingleNode(xpath + "/file[@name='" + sname + "']");
			if(path.indexOf('EmailTemplates')!= -1)
			{
			    continue;
			}
			getSingleFile(fso, path, ndNode, sname, ssize, sdate, total);
		}
		ndNodeList = ndServerNode.selectNodes("folder");
		for (var j =0; j < ndNodeList.length; j++) {		
			getFiles(fso, ndNodeList[j], xml, xpath, path, total);
		}
	
	} catch (e) {
		delete e;
	}
}

function getSingleFile(fso, path, ndNode, sname, ssize, sdate, total) {
		
	if (ndNode == null) {
		saveFile(fso, path, ndNode, sname, sdate, total);
	} else {
		var size = ndNode.getAttribute("size");
		var date = ndNode.getAttribute("date");
		if (sdate != date) {
			saveFile(fso, path, ndNode, sname, sdate, total);
		} 
		/*
		else {
			if (sdate == date && ssize != size)
				saveFile(fso, path, ndNode, sname, sdate, total);
		}
		*/	
	}
}

function saveFile(fso, path, ndNode, sname, sdate, total) {

	try {
		//URL = "http://localhost/testupdates/sendupdates.asp";
		URL = "http://www.ipsmarx.com/updates/sendupdates.asp";
		var xml = newXMLDocument();
		// call the service
		xml.loadXML( "<root service='getBinaryFile' account_type='not relevant'/>" );		
		xml.documentElement.setAttribute( "filename", path + "\\" + sname );			
		xml = postXMLTransaction( xml, URL );
		if( ! xml.selectSingleNode( "//error" ) ) {
			//var dir = "c:\\inetpub\\wwwroot\\testupdates\\" + path;
			var dir = "";
			var bu_dir = "";
			if (path == ".") {
				dir = Server.MapPath(".");
				bu_dir = Server.MapPath(".") + "\\" + BACKUP_FOLDER;
			} else {	
				dir = Server.MapPath(".") + "\\" + path.substring(2);
				bu_dir = Server.MapPath(".") + "\\" + BACKUP_FOLDER + "\\" + path.substring(2);
			}
			
			//check if dir exists, if not create it			
			createAllFolders(fso, dir);
			createAllFolders(fso, bu_dir);
			
			backupFile(dir, bu_dir, sname);
			
			counter++;
			showProgress(100 * (counter / total), dir + "\\" + sname );
			unwrapBinaryFile(xml.documentElement, dir + "\\" + sname )			
			//xml.save(dir + "\\" + sname);
			//fso.GetFile(dir + "\\" + sname).DateLastModified = new Date(parseInt(sdate));
			changeLastModifiedDate(dir, sname, sdate)
			
			
		}	
			

	} catch (e) {
		delete e;
	}	
}

function backupFile(dir, bu_dir, sname) {
	try {		
		var source = dir + "\\" + sname;
		var destination = bu_dir + "\\" + sname;
		fso.CopyFile(source, destination);
	} catch (e) {
		delete e;
	}
}

function createAllFolders(fso, dir){
	var aPaths = dir.split("\\");
	var cur_dir = "";	
	for (var k=0; k < aPaths.length; k++) {	
		if (k==0)
			cur_dir = aPaths[k];
		else	
			cur_dir += "\\" + aPaths[k];
		if (!fso.FolderExists(cur_dir)) {	
			fso.CreateFolder(cur_dir);
		}		
	}
}

function changeLastModifiedDate(FolderPath, FileName, sdate)  {
        
        try {
			var dt = new Date(parseInt(sdate));
			var app = new ActiveXObject("Shell.Application");
			var folder = app.NameSpace(FolderPath);
			var file = folder.ParseName(FileName);
			var s = dt.getFullYear() + "-" + (dt.getMonth()+1) + "-" + dt.getDate() + " " + dt.toTimeString();
			s = s.substring(0, s.length - 3);			
			file.ModifyDate = s;
			
        } catch (e) {
			delete e;
        }
}

function scandir( ndNode , dir ){
    
    if (typeof(fso) == "undefined")
		fso = new ActiveXObject( "Scripting.FileSystemObject" );
	// Get Current Folder     	
	var srcFolder = fso.GetFolder( dir );
	
	var ndChild = null;
	if (ndNode.xml == "") {
		ndNode.loadXML("<folder/>");
		ndNode.documentElement.setAttribute("name", srcFolder.Name);
		ndChild = ndNode.documentElement;
    } else {
		var aFields = new Array();
		aFields["name"] = srcFolder.Name;		
		ndChild = createUniqueChild( ndNode, "folder", aFields );
	}
			
	//msg += "Folder: " + srcFolder.Name + "\n";
	
	// Get Files in current directory     
	var files = new Enumerator( srcFolder.files );
	    
	// Loop through files     
	for(; !files.atEnd(); files.moveNext() )   {             
				
		var aFields = new Array();
		aFields["name"] = files.item().Name;
					
		if ( ignoreExt(aFields["name"]) )
			continue;
				
		var ndTemp = createUniqueChild( ndChild, "file", aFields );
		ndTemp.setAttribute("size", files.item().Size);
		ndTemp.setAttribute("name", files.item().Name);
		ndTemp.setAttribute("date", new Date(files.item().DateLastModified).valueOf());
	}   
		
	var esub = new Enumerator( srcFolder.SubFolders );      
	
	for(; !esub.atEnd(); esub.moveNext() )   {      
		var f = fso.GetFolder( esub.item() );      
		scandir( ndChild, f );   
	}
}


 

function ignoreExt(name) {
	
	try {
		 
		name = "" + name;
		//ignore custom logo image
		if (name == "cust_toplogo.gif")
			return true;
		//ignore 	
		if (name.toLowerCase() == "payment_addon.xml")
			return true;	
				
		//only send the main dll, which is SipKernel.dll
		//if (name.toLowerCase() == "sipkernel.dll")
		//	return false;	
		var i = name.lastIndexOf(".");
		if (i == -1)
			return true;
					
		var ext = name.substring(i+1);
		switch (ext) {
		
			case "aspx":
			case "xml":
			case "htm":
			case "html":
			case "dll":
			case "jpg":
			case "jpeg":
			case "gif":
			case "js":
			case "css":
			case "es":
			case "fr":
				return false;
		}
		return true;
	
	} catch (e) {
		delete e;
		return true;
	}
}

function wrapBinaryFile( strFileName ) {

	var ado_stream = new ActiveXObject("ADODB.Stream");
	var xml = newXMLDocument();
	xml.loadXML("<file/>");
	xml.documentElement.setAttribute( "name", strFileName );
	xml.documentElement.setAttribute("xmlns:dt","urn:schemas-microsoft-com:datatypes");

	xml.documentElement.dataType = "bin.base64";
	ado_stream.Type = 1; // 1=adTypeBinary
	ado_stream.Open();
	ado_stream.LoadFromFile( strFileName );
	xml.documentElement.nodeTypedValue = ado_stream.Read(-1); // -1=adReadAll
	ado_stream.Close();
	return xml;
}


function unwrapBinaryFile(ndFile, strFileName ){
	var ado_stream = new ActiveXObject("ADODB.Stream");
	ndFile.dataType = "bin.base64";

	ado_stream.Type = 1; // 1=adTypeBinary
	ado_stream.Open();
	ado_stream.write( ndFile.nodeTypedValue );
	ado_stream.SaveToFile( strFileName, 2 );
	ado_stream.Close();	
}

function getBinaryFile( xml ) {

	var strFileName = xml.documentElement.getAttribute( "filename" );
	
	if (typeof(Server) != "undefined")
		strFileName = Server.MapPath( strFileName );
		
	return wrapBinaryFile( strFileName );
}

