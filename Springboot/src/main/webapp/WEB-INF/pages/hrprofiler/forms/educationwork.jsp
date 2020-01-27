<fieldset>
	<h2>Educational Attainment</h2>
	<table>
		<thead>
			<tr>
				<th>School</th>
				<th>Address</th>
				<th>Year Graduated</th>
			</tr>
		</thead>
		<tbody id="educationField">
			<tr>
				<td><input type="text" id="schoolName1" name="schoolName"></td>
				<td><input type="text" id="schoolAddress1" name="schoolAddress"></td>
				<td><input type="number" id="dateGraduated1" name="dateGraduated"></td>
			</tr>
		</tbody>
	</table>
	<input id="educationAddBtn" type="button" value="Add"/>

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
				<td><input type="text" name="companyName" id="companyName1"></td>
				<td><input type="text" name="companyAddress" id="companyAddress1"></td>
				<td><input type="number" name="yearResigned" id="dateResigned1"></td>
			</tr>
		</tbody>
	</table>
	<input id="workAddBtn" type="button" value="Add"/><br>
	
	<h2>Trainings/Certificates</h2>
	<table id="incentives">
		<thead>
			<tr>
				<th>Training/Certificate</th>
				<th>Company</th>
				<th>Year Acquired</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input id="certificateName1" type="text" name="certificateName"></td>
				<td><input id=tookFrom1" type="text" name="tookFrom"></td>
				<td><input id="dateAcquired1" type="number" name="dateAcquired"></td>
			</tr>
		</tbody>
	</table>
	<input id="certAddBtn" type="button" value="Add"/><br>
	
	<input type="button" name="previous" ${action eq '/updateemployee' ? 'class="hide"' : 'class="previous action-button"'} value="Previous" /> 
	<input type="button" name="next" ${action eq '/updateemployee' ? 'class="update"' : 'class="next action-button"'} ${action eq '/updateemployee' ? 'value="Update"' : 'value="Next"'}/>
</fieldset>
