<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1 user-scalable=no">

	<meta name="apple-mobile-web-app-capable" content="yes"/>
	<meta name="mobile-web-app-capable" content="yes"/>
	<meta name="apple-mobile-web-app-status-bar-style" content="default"/>
	<!-- <link rel="icon" sizes="192x192" href="icon.png"> -->
	<!-- <link rel="apple-touch-icon" sizes="128x128" href="icon.png"> -->

	<!-- Script per scorrere all'elemento precedentemente selezionato -->
	<!-- $('html, body').animate({
    	scrollTop: $("#target-element").offset().top
	}, 1000); -->

	<!--<script type="text/javascript" src="js/jquery.js"></script>-->
	
	<link rel="stylesheet" href="<?php echo URL; ?>css/pure-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/styles.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/grids-responsive-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/spin-select.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/font-awesome/css/font-awesome.min.css" type="text/css">

	<title>Seleziona Atleta</title>
</head>
<body>
	<form action="" method="POST">
		<div class="container" id="container">
			<?php
			
				$i = 1;
				while ($i <= 100) {
					echo "<input type='radio' name='radio' id='radio", $i, "' required/>", "<label for='radio", $i, "'>", $i, '</label><br>';
					$i += 1;
				}
			?>
		</div>
		<div class="navbar">
			<div class="pure-g">

				<div class="pure-u-1-2">
					<div class="padding">
						<a class="pure-button" href="<?php echo URL; ?>gara/selezionaboulder"><i class="fa fa-chevron-left fa-sm"></i> INDIETRO</a>
					</div>
				</div>
				<div class="pure-u-1-2">
					<div class="padding">
						<button type="submit" class="pure-button">AVANTI <i class="fa fa-chevron-right fa-sm"></i></button>
					</div>
				</div>
				
				<div class="pure-u-1">
					<p class="description">SELEZIONA ATLETA</p>
				</div>

			</div>
		</div>
	</form>
</body>
</html>