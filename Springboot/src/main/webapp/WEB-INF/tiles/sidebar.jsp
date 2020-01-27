<div class="sidebar">
	<ul>
		<li ><a href="dashboard" ${action eq '/' ? 'class="active"' : ''} ${action eq '/dashboard' ? 'class="active"' : ''}>
			<span class="icon">
				<i class="fas fa-project-diagram"></i>
			</span>
			<span class="title">Dashboard</span>
		</a></li>
		<li><a href="employees" ${action eq '/employees' ? 'class="active"' : ''} ${action eq '/updateemployee' ? 'class="active"' : ''} ${action eq '/addemployee' ? 'class="active"' : ''}>
			<span class="icon">
				<i class="fas fa-user-tie"></i>
			</span>
			<span class="title">Employees</span>
		</a></li>
		<li><a href="disciplinaryissuetracker" ${action eq '/disciplinaryissuetracker' ? 'class="active"' : ''}>
			<span class="icon">
				<i class="fas fa-exclamation-circle"></i>
			</span>
			<span class="title">Disciplinary Issue Tracker</span>
		</a></li>
		<li><a href="resignations" ${action eq '/Resignations' ? 'class="active"' : ''}>
			<span class="icon">
				<i class="fas fa-file-contract"></i>
			</span>
			<span class="title">Resignations</span>
		</a></li>
	</ul>
</div>