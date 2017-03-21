<!DOCTYPE html>
<html>
<head>
	<title>Admin Menu</title>
	<meta charset="utf-8">
	<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
	<link rel="stylesheet" href="<?php echo URL; ?>css/pure-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/grids-responsive-min.css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/font-awesome/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="<?php echo URL; ?>css/admin.css">
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
				<a href="<?php echo URL; ?>admin/classificaSquadre/allieviM" class="pure-button">Classifica Scuole</a>
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
