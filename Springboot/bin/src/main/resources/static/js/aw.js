function addRow3()
{
    //Create an input type dynamically.
var xfirstname = document.createElement("input");
var xlastname = document.createElement("input");
var relationship = document.createElement("select");
var option = document.createElement("option");
var option1 = document.createElement("option");
var option2 = document.createElement("option");
var option3 = document.createElement("option");
var option4 = document.createElement("option");

//Assign different attributes to the element.
xfirstname.setAttribute("type", "text");
xfirstname.setAttribute("name", "xfirstname");
xlastname.setAttribute("type", "text");
xlastname.setAttribute("name", "xlastname");
relationship.setAttribute("name", "relationship");
option.text = "Mother"; option.value = "mother";
relationship.appendChild(option);
option1.text = "Father"; option1.value = "father";
relationship.appendChild(option1);
option2.text = "Wife"; option2.value = "wife";
relationship.appendChild(option2);
option3.text = "Son"; option3.value = "son";
relationship.appendChild(option3);
option4.text = "Daughter"; option4.value = "daughter";
relationship.appendChild(option4);

      
      // get the html table
      // 0 = the first table
      var table = document.getElementsByTagName('table')[4];
      
      // add new empty row to the table
      // 0 = in the top 
      // table.rows.length = the end
      // table.rows.length/2+1 = the center
      var newRow = table.insertRow(table.rows.length);
      
      // add cells to the row
      var cel1 = newRow.insertCell(0);
      var cel2 = newRow.insertCell(1);
      var cel3 = newRow.insertCell(2);
      
      // add values to the cells
      cel1.appendChild(xfirstname);
      cel2.appendChild(xlastname);
      cel3.appendChild(relationship);
      
}


function addRow4()
{
    //Create an input type dynamically.
var incentivename = document.createElement("input");
var amount = document.createElement("input");
var periodical = document.createElement("select");
var option = document.createElement("option");
var option1 = document.createElement("option");

//Assign different attributes to the element.
incentivename.setAttribute("type", "text");
incentivename.setAttribute("name", "incentivename");
amount.setAttribute("type", "text");
amount.setAttribute("name", "amount");
option.text = "Monthy"; option.value = "month";
periodical.appendChild(option);
option1.text = "Bi-monthly"; option1.value = "bimonth";
periodical.appendChild(option1);

      
      // get the html table
      // 0 = the first table
      var table = document.getElementsByTagName('table')[3];
      
      // add new empty row to the table
      // 0 = in the top 
      // table.rows.length = the end
      // table.rows.length/2+1 = the center
      var newRow = table.insertRow(table.rows.length);
      
      // add cells to the row
      var cel1 = newRow.insertCell(0);
      var cel2 = newRow.insertCell(1);
      var cel3 = newRow.insertCell(2);
      
      // add values to the cells
      cel1.appendChild(incentivename);
      cel2.appendChild(amount);
      cel3.appendChild(periodical);
      
}

$("#tpinput").hide();
$(document).ready(function(){
	  $("#tpbutton").click(function(){
		$("#teamId").attr("name","teamId");
		$("#projectId").attr("name","projectId");
	    $("#tpinput").show();
	    $("#tpbutton").hide();
	  });
	});

$("#workinput").hide();
$(document).ready(function(){
	  $("#workbutton").click(function(){
		$("#workstation").attr("name","workstation");
		$("#username").attr("name","username");
	    $("#workinput").show();
	    $("#workbutton").hide();
	  });
	});
