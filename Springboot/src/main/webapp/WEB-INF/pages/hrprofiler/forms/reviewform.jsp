<fieldset>
	<!-- Form 1 -->
	<h2>Employee Details</h2>
	
	<small>Date of Job Offer: </small>
	<input id="revDateOffered" type="date" disabled>
	
	<small>Date Accepted: </small>
	<input id="revDateAccepted" type="date" disabled>
	
	<small>Date Onboarding: </small>
	<input id="revDateOnboarded" type="date" disabled>
	
	<input type="text" id="revFirstName" placeholder="First Name" disabled>
	<input type="text" id="revMiddleName" placeholder="Middle Name" disabled>
	<input type="text" id="revLastName" placeholder="Last Name" disabled>
	<input type="email" id="revemail" placeholder="Email Address" disabled>
	
	<select id="revGender" disabled>
		<option value="1">Male</option>
		<option value="2">Female</option>
	</select>
	
	<small>Birthdate: </small>
	<input id="revBirthdate" type="date" disabled>
	
	<input id="revAddress" type="text" placeholder="House/Unit/Flr #, Bldg Name, Blk or Lot #" disabled>
	<input type="text" placeholder="Country" disabled>
	<input type="text" placeholder="State/Province" disabled>
	<input type="text" placeholder="City" disabled>
	<input type="text" placeholder="Town/Baranggay" disabled>
	<input type="number" placeholder="Zip Code" disabled>
	
	<input id="revCellNum" type="number" placeholder="Cellphone Number" disabled>
	<input id="revTelNum" type="number" placeholder="Telephone Number" disabled>
	
	<input id="revBirNum" type="number" placeholder="BIR Number" disabled>
	<input id="revTin" type="number" placeholder="Tax Identification Number" disabled>
	<input id="revPhilHealthNum" type="number" placeholder="PhilHealth Number" disabled>
	<input id="revHdmfNum" type="number" placeholder="HDMF Number" disabled>
	<input id="revBankNum" type="number" placeholder="Bank Account Number" disabled>
	
	<!-- Form 2 -->
	<h2>Educational Attainment</h2>
	<table>
		<thead>
			<tr>
				<th>School</th>
				<th>Address</th>
				<th>Year Graduated</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th><input type="text" disabled></th>
				<th><input type="text" disabled></th>
				<th><input type="number"disabled></th>
			</tr>
			<tr>
				<th><input type="text" disabled></th>
				<th><input type="text" disabled></th>
				<th><input type="number" disabled></th>
			</tr>
			<tr>
				<th><input type="text" disabled></th>
				<th><input type="text" disabled></th>
				<th><input type="number" disabled></th>
			</tr>
		</tbody>
	</table>

	<h2>Work Experiences</h2>
	<table>
		<thead>
			<tr>
				<th>Company</th>
				<th>Address</th>
				<th>Year Resigned</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th><input type="text" disabled></th>
				<th><input type="text" disabled></th>
				<th><input type="number" disabled></th>
			</tr>
		</tbody>
	</table>
	
	<h2>Trainings/Certificates</h2>
	<table>
		<thead>
			<tr>
				<th>Training/Certificate</th>
				<th>Company</th>
				<th>Year Acquired</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th><input type="text" disabled></th>
				<th><input type="text" disabled></th>
				<th><input type="number" disabled></th>
			</tr>
		</tbody>
	</table>
	
	<!-- Form 3 -->
	<h2>Company Details</h2>
	
	<small>Category</small>
	<select id="revCategory" disabled>
		<option value="fg">Fresh Graduate</option>
		<option value="ne">New Experience</option>
		<option value="re">Returnee</option>
	</select>
	
	<small>Type</small>
	<select id="revRole" disabled>
		<option value="1">HR</option>
		<option value="2">Non HR</option>
	</select>
	
	<small>Level</small>
	<select id="revLevel" disabled>
		<option value="1">Technical Specialist</option>
		<option value="2">Associate Technical Specialist</option>
		<option value="3">Senior Technical Specialist</option>
		<option value="4">Supervisor</option>
		<option value="5">Manager</option>
	</select>	
	
	<small>Business Units</small>
	<select id="revBuId" disabled>
		<option value="1">Japan Originated Companies</option>
		<option value="2">Alliance Software Japan</option>
		<option value="3">Rest of the World</option>
	</select>
	
	<small>Salary</small>
	<input type="number" id="revSalary" disabled>
	
	<small>Teams</small>
	<select id="revTeamId" disabled>
		<option value="1">Team 1</option>
		<option value="2">Team 2</option>
		<option value="3">Team 3</option>
	</select>
	
	<small>Projects</small>
	<select id="revProjectId" disabled>
		<option value="1">Project 1</option>
		<option value="2">Project 2</option>
		<option value="3">Project 3</option>
	</select>
		
	<input id="revUsername" type="text" placeholder="User Account" disabled>
	<input id="revWorkstation" type="text" placeholder="Workstation" disabled>
	
	<input type="button" name="previous" class="previous action-button" value="Previous" />
	<input type="button" name="submit" class="submit action-button" value="Submit" />
</fieldset>