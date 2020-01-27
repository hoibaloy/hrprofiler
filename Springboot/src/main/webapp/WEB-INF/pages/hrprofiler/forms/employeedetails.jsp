<fieldset id="employeeDetailsField">
	<h2>Employee Details</h2>
	<div ${action eq '/employeeinformation' ? 'class="hide"' : ''}>
		<input type="text" id="requestFormId" name="requestFormId" placeholder="Request Form ID">
		<p>Date Requested: </p>
		<input type="date" id="dateRequest" name="dateRequest" >
		<p>Date of Job Offer: </p>
		<input type="date" id="dateOffered" name="dateOffered"> 
		<p>Date Accepted: </p>
		<input type="date" id="dateAccepted" name="dateAccepted"> 
		<p>Date Onboarding: </p>
		<input type="date" id="dateOnboarded" name="dateOnboarded">
	</div>
		
		<input type="text" id="firstName" name="firstName" placeholder="First Name">
		<input type="text" id="middleName" name="middleName" placeholder="Middle Name">
		<input type="text" id="lastName" name="lastName" placeholder="Last Name">
		<input type="email" id="email" name="email" placeholder="Email Address">
		
		<select id="gender" name="gender" >
			<option value="1">Male</option>
			<option value="2">Female</option>
		</select>

		<p>Birthdate: </p>
		<input type="date" id="birthdate" name="birthdate">
		
		<input type="text" id="address" name="address" placeholder="House/Unit/Flr #, Bldg Name, Blk or Lot #"> 
		<input type="text" name="country" placeholder="Country"> 
		<input type="text" name="state" placeholder="State/Province">
		<input type="text" name="city" placeholder="City"> 
		<input type="text" name="barangay" placeholder="Town/Baranggay"> 
		<input type="number" name="zipcode" placeholder="Zip Code">
	
		<input type="number" id="cellNum" name="cellNum" placeholder="Cellphone Number">
		<input type="number" id="telNum" name=telNum " placeholder="Telephone Number">

		<input type="number" id="birNum" name="birNum" placeholder="BIR Number">
		<input type="number" id="tin" name="tin" placeholder="Tax Identification Number">
		<input type="number" id="philHealthNum" name="philHealthNum" placeholder="PhilHealth Number"> 
		<input type="number" id="hdmfNum" name="hdmfNum" placeholder="HDMF Number">
		<input type="number" id="bankNum" name="bankNum" placeholder="Bank Account Number">
	

		<input type="button" name="next" ${action eq '/updateemployee' ? 'class="update"' : 'class="next action-button"'} ${action eq '/updateemployee' ? 'value="Update"' : 'value="Next"'}/>
</fieldset>