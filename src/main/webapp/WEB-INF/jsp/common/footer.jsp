<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/jquery/1.9.1/"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>

<script>
	$('#targetDate').datepicker({
		format : 'dd/mm/yyyy'
	});
	$(document).ready(function () {
		var today = new Date();
		var dd = String(today.getDate()).padStart(2, '0');
		var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
		var yyyy = today.getFullYear();
		today = dd + '.' + mm + '.' + yyyy;
		$("#today").text("Today is "+ today);
	});
</script>


<div class="footer">
	<p id="today"></p>
	<h2>
		My TO-DO application
	</h2>
	<p>Created by Rostovceva Ekaterina</p>
</div>
</body>
</html>
