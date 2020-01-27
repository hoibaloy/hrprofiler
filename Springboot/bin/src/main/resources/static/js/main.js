function testButton() {
	alert("HI!");
}

function updateCustomer() {
	$.ajax({
		type: "post",
		url : $("#customerFrm").attr("action"),
	    data: $("#customerFrm").serialize(),
		success: function(result) {
			//logic after update
			if(result) {
				$("#message").text("Update is successful.");
			} else {
				$("#message").text("Update is not successful.");
			}
		}
	});
}
