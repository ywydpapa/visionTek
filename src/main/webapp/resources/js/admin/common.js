function onlyNumDecimalInput(){
	 var code = window.event.keyCode;
	  if ((code >= 48 && code <= 57) || (code >= 96 && code <= 105) || code == 110 || code == 190 || code == 8 || code == 9 || code == 13 || code == 46){
	  window.event.returnValue = true;
	   return;
	  }
	  window.event.returnValue = false;
}