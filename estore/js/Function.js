var LookupName = ""; // to keep track of current lookup for each page
var myLookup = null; // one lookup for each page at all times
var myProgress =null;
function GetWinFormat(FormType)
{// Use one of the pre-formatted window or use the user-defined window (add more as needed)
	var myFormat = FormType;
	if (FormType == "BaseWin") myFormat = "toolbar=no, width=840, height=550, left=160, top=60, status=yes, scrollbars=yes";
	else if (FormType == "FullWin") myFormat = "toolbar=no, width=1150, height=850, left=10, top=10, status=yes, scrollbars=yes";
	else if (FormType == "RptWin") myFormat = "toolbar=no, resize=yes, status=yes, scrollbars=yes";
	else if (FormType == "SubWin1") myFormat = "toolbar=no, width=855, height=507, left=158, top=182, status=yes, scrollbars=yes";
	else if (FormType == "SubWin2") myFormat = "toolbar=no, width=850, height=487, left=163, top=202, status=yes, scrollbars=yes";
	else if (FormType == "SubWin3") myFormat = "toolbar=no, width=845, height=467, left=168, top=222, status=yes, scrollbars=yes";
	else if (FormType == "SubWin4") myFormat = "toolbar=no, width=840, height=447, left=173, top=242, status=yes, scrollbars=yes";
	else if (FormType == "Lookup") myFormat = "toolbar=no, width=500, height=350, left=250, top=300, status=no, scrollbars=yes";
	else if (FormType == "ImportTariffs") myFormat = "toolbar=no, width=700, height=420, left=100, top=200, status=no, scrollbars=yes";
	else if (FormType == "CopyTariffs") myFormat = "toolbar=no, width=550, height=150, left=100, top=200, status=no, scrollbars=no";
	else if (FormType == "ManageClientPayment") myFormat = "toolbar=no, width=580, height=470, left=50, top=100, status=no, scrollbars=auto";
	else if (FormType == "ManageAgentPayment") myFormat = "toolbar=no, width=600, height=410, left=50, top=100, status=no, scrollbars=auto";
	else if (FormType == "ImportDialingPlan") myFormat = "toolbar=no, width=700, height=420, left=100, top=200, status=no, scrollbars=no";
	else if (FormType == "Calls") myFormat = "toolbar=no, width=500, height=150, left=50, top=50, status=no, scrollbars=no";
	else if (FormType == "CallshopPorts") myFormat = "toolbar=no, width=600, height=450, left=50, top=50, status=no, scrollbars=no";
	else if (FormType == "BoothAction") myFormat = "toolbar=no, width=280, height=280, left=50, top=50, status=no, scrollbars=no";
	
	return myFormat;
}
function document.oncontextmenu()
{
	var s = event.srcElement.tagName;
	
	  
	if (s && s != "INPUT" && s != "TEXTAREA" || event.srcElement.disabled || document.selection.createRange().text.length == 0)
	{
		//event.returnValue = false;
	}
}
function ConfirmDelete()
{
	if (confirm("Are you sure?")) document.getElementById("myParam").value = "delete";
}

function OpenForm(myURL, myWinName, myFormat)
{// myWinName is for both window-object and window-name (re-open when already opened)
	var Statement2 = myWinName + " = window.open(myURL, myWinName, GetWinFormat(myFormat));";
	eval(Statement2);
	Statement2 = myWinName + ".focus();";
	eval(Statement2);
}

function OpenForm2(myURL, myWinName, myFormat)
{// myWinName is for both window-object and window-name (set focus when already opened)
	var Statement = "if (!" + myWinName + " || " + myWinName + ".closed) " + myWinName + " = window.open(myURL, myWinName, GetWinFormat(myFormat));";
	eval(Statement);
	Statement = myWinName + ".focus();";
	eval(Statement);
}
function OpenLookup(myURL, myWinName, myFormat)
{// myWinName is to keep track of lookup-name
	var OpenIt = false;
	if (LookupName != myWinName) OpenIt = true;
	if (myFormat == "LookUp") myFormat = "toolbar=no, width=400, height=300, left=200, top=200, status=no, scrollbars=no, resize=no";
	if (!myLookup || myLookup.closed) OpenIt = true; 
	if (OpenIt) myLookup = window.open(myURL, "myLookup", myFormat);
	LookupName = myWinName;
	myLookup.focus();
}

function OpenCalendar(DateField)
{// open a javascript calendar window
	window.dateField = DateField;
	var calendar = window.open("../common/calendar.htm", "cal", "width=250, height=260, left=350, top=350");
}

function OpenCalendar2(DateField)
{// open a javascript calendar window
	window.dateField = DateField;
	var calendar = window.open("../common/calendar2.htm", "cal", "width=200, height=240, left=350, top=350");
}

function CloseForm(myWin)
{// close if exist and opened
	if (myWin)
	{
		if (!myWin.closed) myWin.close();
		myWin = null;
	}
}
