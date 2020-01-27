
//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

$(".next").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 300, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".previous").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 300, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

var edCount=1;
var workCount=1;
var certCount=1;

//----------------------Adding new elements on button click------------------------------------

$("#educationAddBtn").click(function(){
    edCount++;
	 //Create an input type dynamically.
    var schoolname = document.createElement("input");
    var schooladdress = document.createElement("input");
    var yeargraduated = document.createElement("input");

    //Assign different attributes to the element.
    schoolname.setAttribute("type", "text");
    schoolname.setAttribute("name", "schoolName");
    schoolname.setAttribute("id", "schoolName"+edCount);
    schooladdress.setAttribute("type", "text");
    schooladdress.setAttribute("name", "schoolAddress");
    schooladdress.setAttribute("id", "schoolAddress"+edCount);
    yeargraduated.setAttribute("type", "number");
    yeargraduated.setAttribute("name", "dateGraduated");
    yeargraduated.setAttribute("id", "dateGraduated"+edCount);

              
              // get the html table
              // 0 = the first table
              var table = document.getElementsByTagName('table')[0];
              
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
              cel1.appendChild(schoolname);
              cel2.appendChild(schooladdress);
              cel3.appendChild(yeargraduated);
});

$("#workAddBtn").click(function(){
	workCount++;
    //Create an input type dynamically.
	var companyname = document.createElement("input");
	var companyaddress = document.createElement("input");
	var yearresigned = document.createElement("input");

	//Assign different attributes to the element.
	companyname.setAttribute("type", "text");
	companyname.setAttribute("name", "companyName");
	companyname.setAttribute("id", "companyName"+workCount);
	companyaddress.setAttribute("type", "text");
	companyaddress.setAttribute("name", "companyAddress");
	companyaddress.setAttribute("id", "companyAddress"+workCount);
	yearresigned.setAttribute("type", "number");
	yearresigned.setAttribute("name", "dateResigned");
	yearresigned.setAttribute("id", "dateResigned"+workCount);
	      
	      // get the html table
	      // 0 = the first table
	      var table = document.getElementsByTagName('table')[1];
	      
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
	      cel1.appendChild(companyname);
	      cel2.appendChild(companyaddress);
	      cel3.appendChild(yearresigned);
});

$("#certAddBtn").click(function(){
	certCount++;
    //Create an input type dynamically.
var certificatename = document.createElement("input");
var tookfrom = document.createElement("input");
var yearacquired = document.createElement("input");

//Assign different attributes to the element.
certificatename.setAttribute("type", "text");
certificatename.setAttribute("name", "certificateName");
certificatename.setAttribute("id", "certificateName"+certCount);
tookfrom.setAttribute("type", "text");
tookfrom.setAttribute("name", "tookFrom");
tookfrom.setAttribute("id", "tookFrom"+certCount);
yearacquired.setAttribute("type", "number");
yearacquired.setAttribute("name", "dateAcquired");
yearacquired.setAttribute("id", "dateAcquired"+certCount);

      
      // get the html table
      // 0 = the first table
      var table = document.getElementsByTagName('table')[2];
      
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
      cel1.appendChild(certificatename);
      cel2.appendChild(tookfrom);
      cel3.appendChild(yearacquired);
      
})

//---------------------------Submit Employee details--------------------------------------

$(".submit").click(function(){
	//var myData=[{"id":1,"employeeId":1,"schoolAddress":"nbacalso","schoolName":"cit"}];
	
	$(this).parent().hide();
	$.ajax({
		url:"/employees/add",
		type:"get",
		data:$("#employeeDetailsField").serialize()+"&"+$("#companyDetailsField").serialize(),
		success:function(id){
			var edData=[];
			var workData=[];
			var certData=[];
			for(var i=0;i<edCount;i++){
				edData.push({"employeeId":id,"schoolAddress":$("#schoolAddress"+(i+1)).val(),"schoolName":$("#schoolName"+(i+1)).val()});
			}
			for(var i=0;i<workCount;i++){
				workData.push({"employeeId":id,"companyName":$("#companyName"+(i+1)).val(),"companyAddress":$("#companyAddress"+(i+1)).val(),"dateResigned":$("#dateResigned"+(i+1)).val()});
			}
			for(var i=0;i<certCount;i++){
				certData.push({"employeeId":id,"certificateName":$("#certificateName"+(i+1)).val(),"tookFrom":$("#tookFrom"+(i+1)).val(),"dateAcquired":$("#dateAcquired"+(i+1)).val()});
			}
				$.ajax({
					url:"/employees/education/add",
					type:"post",
					contentType:'application/json',
					data:JSON.stringify(edData),
					success:function(data){
						alert("education success");
					},
					error:function(){
						alert("education error");
					}
				});
				$.ajax({
					url:"/employees/work/add",
					type:"post",
					contentType:'application/json',
					data:JSON.stringify(workData),
					success:function(data){
						alert("work success");
					},
					error:function(){
						alert("work error");
					}
				});
				$.ajax({
					url:"/employees/certificate/add",
					type:"post",
					contentType:'application/json',
					data:JSON.stringify(certData),
					success:function(data){
						alert("certificate success");
					},
					error:function(){
						alert("certificate error");
					}
				});
		},
		error:function(){
			alert("employee detail error");
		}
	});
	document.querySelector('.poparea').style.display = 'flex';
});

$("#companyNextBtn").click(function(){
	$("#revDateOffered").val($("#dateOffered").val());
	$("#revDateRequest").val($("#dateRequest").val());
	$("#revDateAccepted").val($("#dateAccepted").val());
	$("#revDateOnboarded").val($("#dateOnboarded").val());
	$("#revFirstName").val($("#firstName").val());
	$("#revMiddleName").val($("#middleName").val());
	$("#revLastName").val($("#lastName").val());
	$("#revGender").val($('#gender option:selected').val());
	$("#revBirthdate").val($("#birthdate").val());
	$("#revAddress").val($("#address").val());
	$("#revCellNum").val($("#cellNum").val());
	$("#revTelNum").val($("#telNum").val());
	$("#revBirNum").val($("#birNum").val());
	$("#revTin").val($("#tin").val());
	$("#revPhilHealthNum").val($("#philHealthNum").val());
	$("#revHdmfNum").val($("#hdmfNum").val());
	$("#revBankNum").val($("#bankNum").val());
	
	$("#revCategory").val($("#category option:selected").val());
	$("#revRole").val($("#role option:selected").val());
	$("#revLevel").val($("#level option:selected").val());
	$("#revBuId").val($("#buId option:selected").val());
	$("#revSalary").val($("#salary").val());
	$("#revTeamId").val($("#teamId option:selected").val());
	$("#revProjectId").val($("#projectId option:selected").val());
	$("#revUsername").val($("#username").val());
	$("#revWorkstation").val($("#workstation").val());
});

document.querySelector('.close').addEventListener('click',
				function() {
					document.querySelector('.poparea').style.display = 'none';
					window.location.href="/employees";
		});