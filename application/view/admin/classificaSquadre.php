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

	<div class="fixed-bottom">
		<a class="pure-button" href="<?php echo URL; ?>admin/aggiungistudente"><i class="fa fa-arrow-left fa-2x" style="color: #666;" aria-hidden="true"></i></a>
	</div>

	<div class="pure-menu pure-menu-horizontal">
		<ul class="pure-menu-list">
			<li class="pure-menu-item pure-menu-has-children pure-menu-allow-hover">
				<div id="menuLink1" style="width: 141%;" class="pure-menu-link pure-button">Categoria</div>
				<ul class="pure-menu-children">
					<li class="pure-menu-item pure-button" style="border-radius: 0px;"><a href="<?php echo URL; ?>admin/classificaSquadre/allieviM" class="pure-menu-link">Allievi Maschi</a></li>
					<li class="pure-menu-item pure-button" style="border-radius: 0px;"><a href="<?php echo URL; ?>admin/classificaSquadre/allieviF" class="pure-menu-link">Allievi Femmine</a></li>
					<li class="pure-menu-item pure-button" style="border-radius: 0px;"><a href="<?php echo URL; ?>admin/classificaSquadre/junioresM" class="pure-menu-link">Juniores Maschi</a></li>
					<li class="pure-menu-item pure-button" style="border-radius: 0px;"><a href="<?php echo URL; ?>admin/classificaSquadre/junioresF" class="pure-menu-link">Juniores Femmine</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<table class="pure-table table-squadre">
		<thead>
			<tr>
				<th id="noborder" colspan="2" class="centerText"><?php echo $cat; ?></th>
			</tr>
			<tr>
				<th style="border-right: 0px; border-left: 0px">Scuola</th>
				<th style="border-right: 0px; border-left: 0px">Punteggio</th>
			</tr>
		</thead>
		<tbody>
			<?php
				asort($punteggi);
				foreach ($punteggi as $key => $value)
				{
					echo "<tr>";
					$scuola = $this->model->getScuola($key);
					echo "<td>" . $scuola->nome_scuola . "</td>";
					echo "<td>" . $value . "</td>";
					echo "</tr>";
				}
			?>
		</tbody>
	</table>

</body>
