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

	<!-- Script per scorrere all'elemento precedentemente selezionato -->
	<!-- $('html, body').animate({
		scrollTop: $("#target-element").offset().top
	}, 1000); -->

	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
	<script type="text/javascript" src="<?php echo URL; ?>js/fastclick.js"></script>
	
	<link rel="stylesheet" href="<?php echo URL; ?>css/pure-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/styles.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/grids-responsive-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/font-awesome/css/font-awesome.min.css" type="text/css">

	<title>Seleziona Punteggio</title>
</head>
<body>
	<?php //echo 'boulder: ' . $selected_boulder . ' atleta: ' .  $selected_atleta; ?>

	<!-- Ora il passato o non passato (1 o 0) sarà mandato nel vettore $_POST -->
	<form action="<?php echo URL; ?>gara/aggiornapunteggioatleta/<?php echo $selected_atleta; ?>/<?php echo $selected_boulder; ?>/<?php echo $tentativo; ?>" method="POST">

		<div class='container-tentativo'>
			<p class='description-top'>TENTATIVO ATTUALE</p>
			<h1 class='tentativo'><?php echo ($tentativo + 1); ?></h1>
		</div>

		<div class="navbar">
			<div class="pure-g">

				<div class="pure-u-1-2">
					<div class="padding">
						<input type="radio" id="pas" name="passato" value="1" required>
						<label class="pure-button button-passato" for="pas">
							<span style="font-size: 90%; margin-left: -16px; margin-right: -16px; pointer-events: none; vertical-align: 1px;">PASSATO</span>
						</label>
					</div>
				</div>

				<div class="pure-u-1-2">
					<div class="padding">
						<input type="radio" id="npas" name="passato" value="0" required>
						<label class="pure-button button-non-passato" for="npas">
							<span style="font-size: 90%; margin-left: -16px; margin-right: -16px; pointer-events: none; vertical-align: 1px;">NON PASSATO</span>
						</label>
					</div>
				</div>

				<div class="pure-u-1-2">
					<div class="padding">
						<a class="pure-button" href="<?php echo URL; ?>gara/selezionaatleta/<?php echo $selected_boulder;?>"><i class="fa fa-chevron-left fa-sm"></i> INDIETRO</a>
					</div>
				</div>

				<div class="pure-u-1-2">
					<div class="padding">
						<button type="submit" class="pure-button" name="submit_punteggio">
							<span class="fa-check-span">CONFERMA </span><i class="fa fa-check fa-sm" aria-hidden="true"></i>
						</button>
					</div>
				</div>
				
				<div class="pure-u-1">
					<p class="description">SELEZIONA ESITO</p>
				</div>

			</div>
		</div>
	</form>

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