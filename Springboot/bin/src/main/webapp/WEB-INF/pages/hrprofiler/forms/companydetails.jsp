<fieldset id="companyDetailsField">
	<h2>Company Details</h2>
	
	<p>Category</p>
	<select id="category" name="category">
		<option value="fg">Fresh Graduate</option>
		<option value="ne">New Experience</option>
		<option value="re">Returnee</option>
	</select>
	
	<p>Role</p>
	<select id="role" name="role">
		<option value="1">HR</option>
		<option value="2">Non HR</option>
	</select>
	
	<p>Designation</p>
	<input id="designation" type="text" name="designation">
	
	<p>Level</p>
	<select id="level" name="level">
		<option value="1">Technical Specialist</option>
		<option value="2">Associate Technical Specialist</option>
		<option value="3">Senior Technical Specialist</option>
		<option value="4">Supervisor</option>
		<option value="5">Manager</option>
	</select>	
	
	<p>Business Units</p>
	<select id="buId" name="buId">
		<option value="1">(JOC) Japan Originated Companies</option>
		<option value="2">(ASJ) Alliance Software Japan</option>
		<option value="3">(ROW) Rest of the World</option>
	</select>
	
	<p>Monthly Salary</p>
	<input id="salary" type="number" name="salary">
	
	<div id="tpinput">
		<p>Teams</p>
		<select id="teamId" name="none">
			<option value="1">Team 1</option>
			<option value="2">Team 2</option>
			<option value="3">Team 3</option>
		</select>
		
		<p>Projects</p>
		<select id="projectId" name="none">
			<option value="1">Project 1</option>
			<option value="2">Project 2</option>
			<option value="3">Project 3</option>
		</select>
	</div>
	
	<div id="workinput">
		<input type="text" id="workstation" name="none" placeholder="Workstation">
		<input type="text" id="username" name="none" placeholder="User Account">
	<input type="button" name="previous" ${action eq '/updateemployee' ? 'class="resetpassword"' : 'class="hidex"'} value="Reset Password"/>
	</div>
	
	<input type="button" value="Add Team and Project" id="tpbutton"><br>
	<input type="button" value="Add Workstation and Account" id="workbutton"><br>
	 
	<input type="button" name="previous" ${action eq '/updateemployee' ? 'class="hide"' : 'class="previous action-button"'} value="Previous"/>
	<input type="button" id="companyNextBtn" name="next" ${action eq '/updateemployee' ? 'class="update"' : 'class="next action-button"'} ${action eq '/updateemployee' ? 'value="Update"' : 'value="Next"'}/>
</fieldset>