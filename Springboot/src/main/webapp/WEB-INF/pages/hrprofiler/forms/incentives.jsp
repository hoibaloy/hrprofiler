<fieldset>
	<h2>Benefits/Incentives</h2>
	<table>
		<thead>
			<tr>
				<th>Incentive Name</th>
				<th>Amount</th>
				<th>Periodical</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th><input type="text" name="incentivename"></th>
				<th><input type="text" name="amount"></th>
				<th>
					<select name="periodical">
						<option value="month">Monthly</option>
						<option value="bimonth">Bi-monthly</option>
					</select>
				</th>
			</tr>
		</tbody>
	</table>
	<input type="button" value="Add" onclick="addRow4();"/><br>
	
	<input type="button" name="update" class="update" value="Update" /> 
</fieldset>