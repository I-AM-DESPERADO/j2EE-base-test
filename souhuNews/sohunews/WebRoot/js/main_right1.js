function eidtRow(rowId){
	var tab=getObj("nw");   
      getObj("name").value=tab.rows(i).cells(0).innerText;  
      getObj("add").value=tab.rows(i).cells(1).innerText;   
      document.getElementById("Insert").style.display="none";  
      document.getElementById("Save").style.display="block";  
      document.getElementById("CurrentRow").value=rowId;
	//var row=document.getElementById(rowId).rowIndex;
	//var col=document.getElementById(rowId).cells;
	//var textare=col[1].innerHTML;
	//col[1].innerHTML="<input type='text' value='"+textare+"'>";	
}
function delRow(rowId){
	var row=document.getElementById(rowId).rowIndex;
	document.getElementById("orders").deleteRow(row);
}