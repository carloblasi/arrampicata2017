<!DOCTYPE html>
<html>
<head>
	<title>Admin Menu</title>
	<meta charset="utf-8">
	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
	<link rel="stylesheet" href="<?php echo URL; ?>css/pure-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/grids-responsive-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/font-awesome/css/font-awesome.min.css" type="text/css">
	<style type="text/css">

		body {
			background-color: #F6F1ED;
		}

		.pure-menu {
			
			text-align: center;
			background-color: #F6F1ED;
			padding: 6px;
		}

		.pure-menu-item {
			margin-right: 2px;
			margin-left: 2px;
		}

		.contenitore1, .contenitore-ultimo {

			margin-left: 30%;
			margin-right: 30%;
			margin-top: 10%;
		}

		.pure-button {

			color: #F6F1ED;
			border-radius: 6px;
			text-shadow: 0 2px 2px rgba(0, 0, 0, 0.2);
			background: rgb(66, 184, 221);
			font-size: 110%;
			font-weight: 800;
			text-align: center;
		}

		.contenitore2 {

			margin-left: 34%;
			margin-right: 34%;
			text-align: center;
			margin-top: 2%;
			margin-bottom: 1%;
		}

		tr, td {
			text-align: center;
		}

	</style>
</head>
<body>
	<div class="pure-menu pure-menu-horizontal">
		<ul class="pure-menu-list">
			<li class="pure-menu-item">
				<a href="<?php echo URL; ?>admin/aggiungistudente" class="pure-button">Aggiungi Studente</a>
			</li>
			<li class="pure-menu-item">
				<a href="<?php echo URL; ?>admin/classifica" class="pure-button">Classifica</a>
			</li>
			<li class="pure-menu-item">
				<a href="<?php echo URL; ?>admin/generaPettorine" class="pure-button">Pettorine</a>
			</li>
			<li class="pure-menu-item">
				<a href="<?php echo URL; ?>admin/elenco" class="pure-button ">Elenchi</a>
			</li>
			<li class="pure-menu-item">
				<a href="<?php echo URL; ?>admin/correzione" class="pure-button">Correzione</a>
			</li>
		</ul>
	</div>
