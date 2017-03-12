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
	<h1>Questa e' la classifica</h1>
	<table class="pure-table">
		<thead>
			<tr>
				<th>punteggio</th>
				<th>nome</th>
				<th>cognome</th>
				<th>anno</th>
			</tr>
		</thead
		<?php
			foreach ($classifica as $row)
			{
				echo <<<EOT
				<tr>
					<td>$row->punteggio</td>
					<td>$row->nome</td>
					<td>$row->cognome</td>
					<td>$row->anno</td>
				</tr>
EOT;
			}
		?>
	</table>
</body>
</html>
