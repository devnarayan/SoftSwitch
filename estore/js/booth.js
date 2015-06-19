


function run() {

	try {	
		//alert("yoohoo");
		var cs_id = csid.innerHTML;
		var url = baseurl.innerHTML;
		var t = refresh.innerHTML;
		xml = newXMLDocument();
		xml.loadXML("<root/>");
		xml.documentElement.setAttribute("cs_id", cs_id);
		countDown(url, t);
			
	} catch (e) {
		delete e;
	}
}

function countDown(url, time) {
	//alert("from div: " + test.XMLDocument.xml);
	var strFunc = "publishDate( resXML );";
	asynchPostXMLTransaction( xml, url + "/CallShopWebService.aspx", strFunc );
	setTimeout("countDown('"+ url +"'," + time + ")", time );
}

function publishDate(resXML) {

	var dt = resXML.documentElement.getAttribute("dt");
	test.XMLDocument.loadXML( resXML.xml );	
	refreshDisplay(resXML);

}

function refreshDisplay(xml) {
	
	try {
		//alert("test");				
		for (var i=1; i< (24+1) ; i++) {
			var ndBooth = xml.selectSingleNode("//booths/booth[@i='" + i + "']");
			if (ndBooth == null) {
				eval("td" +  i + ".className ='box_off';");
				continue;
			}
			
			var bActive = ndBooth.getAttribute("active") == "1";
			if (bActive) {				
				eval("td" +  i + ".className ='box_on';");				
			} else {
				eval("td" +  i + ".className ='box_off';");
			}
			
			var ndCall = ndBooth.selectSingleNode("call");
			
			var timemsg = "";
			var costmsg = "";
			
			if (ndCall != null) {
				var cur = currency.innerHTML;
				var dur = parseInt( ndCall.getAttribute("duration"));
				var hour = Math.floor( dur / 3600 );
				var min = Math.floor( (dur - (hour * 3600) ) / 60 );
				var sec = dur - (hour * 3600 + min * 60);
				var cost = ndCall.getAttribute("cost");
				timemsg = pad2(hour) + ":" + pad2(min) + ":" + pad2(sec);
				costmsg = cur + cost;					
			}						
			eval("img" + i + "_div_time.innerHTML = '" + timemsg + "';");
			eval("img" + i + "_div_cost.innerHTML = '" + costmsg + "';");						
		}
	} catch (e) {

		//alert("Critical error: " + e.description);
	}		
}

function pad2(x) {

	var y = "" + x;
	if (y.length == 1)
		return "0" + y;
	return y;	
}

function openBooth(obj) {	
	var cs_id = csid.innerHTML;
	var user_lang = userlang.innerHTML;
	var booth_no = obj.id.replace('td','');
	var Statement = 'BoothAction.aspx?cs_id=' + cs_id + '&booth_no=' + booth_no + '&user_lang=' + user_lang;
	OpenForm(Statement,'BoothAction','BoothAction');
}

function setVisibility(id, visibility) {
	document.all[id].style.display = visibility;
}