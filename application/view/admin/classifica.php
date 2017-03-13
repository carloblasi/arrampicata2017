<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
	<link rel="stylesheet" href="<?php echo URL; ?>css/pure-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/grids-responsive-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/font-awesome/css/font-awesome.min.css" type="text/css">
	<title>Classifica</title>
</head>
<body>
	<div id="container">

	</div>
	<script>
		function refreshData()
		{
	  	// Load the content of "path/to/script.php" into an element with ID "#container".
	  	$('#container').load('generaClassifica');
		}
			// Execute every 5 seconds
			window.setInterval(refreshData, 5000);
		</script>
</body>
</html>
