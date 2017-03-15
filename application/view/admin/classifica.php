<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
	<link rel="stylesheet" href="<?php echo URL; ?>css/pure-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/grids-responsive-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/font-awesome/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/classifica.css" type="text/css">
	<title>Classifica</title>
</head>
<body>
	<div class="center">
		<div class="pure-g">
			<div class="pure-u-1-2" id="table1"></div>
			<div class="pure-u-1-2" id="table2"></div>
		</div>
		<div class="pure-g">
			<div class="pure-u-1-2" id="table3"></div>
			<div class="pure-u-1-2" id="table4"></div>
		</div>
	</div>
	<script>
		function refreshData()
		{
	  	// Load the content of "path/to/script.php" into an element with ID "#container".
	  	$('#table1').load('generaClassifica/giovanissimiM');
			$('#table2').load('generaClassifica/giovanissimiM');
			$('#table3').load('generaClassifica/giovanissimiM');
			$('#table4').load('generaClassifica/giovanissimiM');
		}

		$(document).ready(function(){
			refreshData();
		});
		// Execute every 5 seconds
		window.setInterval(refreshData, 10000);
	</script>
</body>
</html>
