<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

	<meta name="apple-mobile-web-app-capable" content="yes"/>
	<meta name="mobile-web-app-capable" content="yes"/>
	<meta name="apple-mobile-web-app-status-bar-style" content="default"/>
	<!-- <link rel="icon" sizes="192x192" href="icon.png"> -->
	<!-- <link rel="apple-touch-icon" sizes="128x128" href="icon.png"> -->

	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
	<script type="text/javascript" src="<?php echo URL; ?>js/fastclick.js"></script>
	
	<link rel="stylesheet" href="<?php echo URL; ?>css/pure-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/styles.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/grids-responsive-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/font-awesome/css/font-awesome.min.css" type="text/css">

	<title>Esito</title>
</head>
<body>

	<?php 

		if ($esito == 'N') {
			
			echo "<div class='container-tentativo'>",
				     "<p class='description-top'>TENTATIVI FINITI</p>",
					 "<h1 class='esito esito-negativo'>NON<br>PASSATO</h1>",
				 '</div>';
		}
		else {

			echo "<div class='container-tentativo'>",
				     //"<p class='description-top'>PASSATO</p>",
					 "<h1 class='esito esito-positivo'>PASSATO</h1>",
				 '</div>';
		}
	?>

	<div class="navbar">
		<div class="pure-g">

			<div class="pure-u-1">
				<div class="padding">
					<a class="pure-button" href="<?php echo URL; ?>gara/selezionaatleta/<?php echo $selected_boulder;?>"><i class="fa fa-chevron-left fa-sm"></i> INDIETRO</a>
				</div>
			</div>
			
			<div class="pure-u-1">
				<p class="description">NIENTE DA FARE QUI</p>
			</div>

		</div>
	</div>

	<script type="text/javascript">

		// Toglie il delay che c'è tra il click fisico e il firing degli eventi per quando il sito è una webapp su iOS
		var attachFastClick = Origami.fastclick;
		attachFastClick(document.body);

		// Per qualche motivo il link per tornare indietro lo apre in safari invece che restare nella web app, questa funzione risolve il problema
		$("a").click(function (event) {
    		event.preventDefault();
    		window.location = $(this).attr("href");
		});

		// Controlla che sia stato selezionato un radio button, perché Apple merda non supporta ancora l'attributo 'required'
		$('form').submit(function() {

			var required = $('[required]'); // Array degli elementi che hanno l'attributo 'required'
			var error = true;

			for (var i = 0; i <= (required.length - 1); i++) {

				if (required[i].checked) { // Se nessun radio button è stato selezionato lancia l'errore
					error = false;
				}
			}

			if (error) {
				return false; // Non inviare il form
			}
		});

	</script>
</body>
</html>