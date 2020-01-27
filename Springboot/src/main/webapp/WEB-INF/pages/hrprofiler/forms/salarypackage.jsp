<fieldset id="salaryField">
	<h2>Salary Package</h2>
	
	<input type="number" name="hourlyRate" placeholder="Hourly Rate">
	
	<input type="number" name="overtimeRate" placeholder="Overtime Rate">
	
	<input type="number" name="holidayRate" placeholder="Holiday Rate">
	
	<input type="button" name="previous" ${action eq '/updateemployee' ? 'class="hide"' : 'class="previous action-button"'} value="Previous" /> 
	<input type="button" id="salaryNextBtn" name="next" ${action eq '/updateemployee' ? 'class="update"' : 'class="next action-button"'} ${action eq '/updateemployee' ? 'value="Update"' : 'value="Next"'}/>
</fieldset>