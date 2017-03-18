<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="<?php echo URL; ?>css/pure-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/grids-responsive-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/font-awesome/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/classifica.css">
	<title>Classifica</title>
</head>
<body>
	</div>
	<div class="center">

				<table class="pure-table pure-table-horizontal">
					<thead>
						<tr>
							<th colspan="4" class="centerText">Allievi Maschile</th>
						</tr>
						<tr>
							<th>Pos.</th>
							<th>Cognome</th>
							<th>Nome</th>
							<th>Punteggio</th>
						</tr>
					</thead>
					<tbody  id="content1"></tbody>
				</table>


				<table class="pure-table pure-table-horizontal">
					<thead>
						<tr>
							<th colspan="4" class="centerText">Allievi Femminile</th>
						</tr>
						<tr>
							<th>Pos.</th>
							<th>Cognome</th>
							<th>Nome</th>
							<th>Punteggio</th>
						</tr>
					</thead>
					<tbody  id="content2"></tbody>
				</table>


				<table class="pure-table pure-table-horizontal">
					<thead>
						<tr>
							<th colspan="4" class="centerText">Juniores Maschile</th>
						</tr>
						<tr>
							<th>Pos.</th>
							<th>Cognome</th>
							<th>Nome</th>
							<th>Punteggio</th>
						</tr>
					</thead>
					<tbody  id="content3"></tbody>
				</table>


				<table class="pure-table pure-table-horizontal">
					<thead>
						<tr>
							<th colspan="4" class="centerText">Juniores Femminile</th>
						</tr>
						<tr>
							<th>Pos.</th>
							<th>Cognome</th>
							<th>Nome</th>
							<th>Punteggio</th>
						</tr>
					</thead>
					<tbody  id="content4"></tbody>
				</table>

	</div>
	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
	<script>
	/**	$('html, body').animate({
			scrollTop: $("#end").offset().top
		}, 2000);*/
		function refreshData()
		{
	  	// Load the content of "path/to/script.php" into an element with ID "#container".
	  	$('#content1').load('generaClassifica/allieviM');
			$('#content2').load('generaClassifica/allieviF');
			$('#content3').load('generaClassifica/junioresM');
			$('#content4').load('generaClassifica/junioresF');
		}

		$(document).ready(function(){
			refreshData();
		});
		// Execute every n seconds
		window.setInterval(refreshData, 5000);
	</script>
</body>
</html>
