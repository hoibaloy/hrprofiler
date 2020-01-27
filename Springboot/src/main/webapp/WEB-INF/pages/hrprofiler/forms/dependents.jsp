<fieldset>
	<table>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Relationship</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th><input type="text" name="certificatename"></th>
				<th><input type="text" name="tookfrom"></th>
				<th>
					<select name="relation">
						<option value="mother">Mother</option>
						<option value="father">Father</option>
						<option value="wife">Wife</option>
						<option value="son">Son</option>
						<option value="daughter">Daughter</option>
					</select>
				</th>
			</tr>
		</tbody>
	</table>
	<input type="button" value="Add" onclick="addRow3();"/><br>
	
	
	<input type="button" name="update" class="update" value="Update" /> 
</fieldset>
