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
	<div id="end">

	</div>
	<script>
	/**	$('html, body').animate({
			scrollTop: $("#end").offset().top
		}, 2000);*/
		function refreshData()
		{
	  	// Load the content of "path/to/script.php" into an element with ID "#container".
	  	$('#table1').load('generaClassifica/allieviM');
			$('#table2').load('generaClassifica/allieviF');
			$('#table3').load('generaClassifica/junioresM');
			$('#table4').load('generaClassifica/junioresF');
		}

		$(document).ready(function(){
			refreshData();
		});
		// Execute every n seconds
		window.setInterval(refreshData, 70000);
	</script>
</body>
</html>
