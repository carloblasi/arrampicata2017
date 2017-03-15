	<?php 
		$modo = 'm-allievi';
		if(isset($_POST['elenco'])){
			$modo = $_POST['elenco'];
		}

		switch ($modo) {
			case 'm-allievi':
				$titolo = 'Maschi - Allievi';
				break;
			case 'm-juniores':
		 		$titolo = 'Maschi - Juniores';
			 	break;
		 	case 'f-allievi':
				$titolo = 'Femmine - Allievi';
				break;
		 	case 'f-juniores':
				$titolo = 'Femmine - Juniores';
				break;
			default:
				$liste = 'Maschi - Allievi';
				break;
		}
	?>
	<h1><?php echo $titolo; ?></h1>
	<table class="pure-table">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Data di nascita</th>
				<th>Scuola</th>
			</tr>
		</thead>
		<tbody>
			<?php

				switch ($modo) {
				 	case 'm-allievi':
				 		$liste = $this->model->getAllAtletiMaschiAllievi();
				 		break;
				 	case 'm-juniores':
				 		$liste = $this->model->getAllAtletiMaschiJuniores();
				 		break;
				 	case 'f-allievi':
				 		$liste = $this->model->getAllAtletiFemmineAllievi();
				 		break;
				 	case 'f-juniores':
				 		$liste = $this->model->getAllAtletiFemmineJuniores();
				 		break;
				 	default:
				 		$liste = $this->model->getAllAtletiMaschi();
				 		break;
				} 
			?>
			<?php foreach ($liste as $lista): ?>
			<tr>
				<td><?php echo $lista->nome; ?></td>
				<td><?php echo $lista->cognome; ?></td>
				<td><?php echo $lista->data_nascita; ?></td>
				<td><?php echo $lista->nome_scuola; ?></td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>