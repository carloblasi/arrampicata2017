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
	<div class="fixed-top">
		<div class="pure-button-group" role="group" aria-label="...">
			<button class="pure-button" onclick="pageScrollStop()"><i class="fa fa-backward fa-lg" aria-hidden="true"></i></button>
			<button class="pure-button" onclick="pageScroll()"><i class="fa fa-forward fa-lg" aria-hidden="true"></i></button>
		</div>
	</div>
	<div class="fixed-bottom">
		<a class="pure-button" href="<?php echo URL; ?>admin/aggiungistudente"><i class="fa fa-arrow-left fa-2x" aria-hidden="true"></i></a>
	</div>

	</div>
	<div class="center">

				<table class="pure-table pure-table-horizontal">
					<thead class="table-header">
						<tr>
							<th id="noborder" colspan="5" class="centerText">Allievi Maschile</th>
						</tr>
						<tr>
							<th>Pos.</th>
							<th>Cognome</th>
							<th>Nome</th>
							<th>Punteggio</th>
							<th>Boulder passati</th>
						</tr>
					</thead>
					<tbody  id="content1"></tbody>
				</table>


				<table class="pure-table pure-table-horizontal">
					<thead>
						<tr>
							<th id="noborder" colspan="5" class="centerText">Allievi Femminile</th>
						</tr>
						<tr>
							<th>Pos.</th>
							<th>Cognome</th>
							<th>Nome</th>
							<th>Punteggio</th>
							<th>Boulder passati</th>
						</tr>
					</thead>
					<tbody  id="content2"></tbody>
				</table>


				<table class="pure-table pure-table-horizontal">
					<thead>
						<tr>
							<th id="noborder" colspan="5" class="centerText">Juniores Maschile</th>
						</tr>
						<tr>
							<th>Pos.</th>
							<th>Cognome</th>
							<th>Nome</th>
							<th>Punteggio</th>
							<th>Boulder passati</th>
						</tr>
					</thead>
					<tbody  id="content3"></tbody>
				</table>


				<table class="pure-table pure-table-horizontal">
					<thead>
						<tr>
							<th id="noborder" colspan="5" class="centerText">Juniores Femminile</th>
						</tr>
						<tr>
							<th>Pos.</th>
							<th>Cognome</th>
							<th>Nome</th>
							<th>Punteggio</th>
							<th>Boulder passati</th>
						</tr>
					</thead>
					<tbody  id="content4"></tbody>
				</table>
	</div>
	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.stickytableheaders.min.js"></script>

	<script>
		$('table').stickyTableHeaders();
	</script>

	<script>
		var scrolldelay;
		function pageScroll()
		{
		window.scrollBy(0,1);
		scrolldelay = setTimeout('pageScroll()',13);
		}

		function pageScrollStop()
		{
		clearTimeout(scrolldelay);
		}
	</script>

	<script>
		$(window).scroll(function() {
			if($(window).scrollTop() + $(window).height() > $(document).height()-5) {
				 window.scrollTo(0, 0);
		 }
		});
	</script>

	<script>
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
		window.setInterval(refreshData, 10*1000);
	</script>
</body>
</html>
