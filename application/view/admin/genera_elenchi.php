	<div class="contenitore2">
		<form class="pure-form pure-form-aligned" action="<?php echo URL; ?>/admin/generaElenchi" method="POST">
			<fieldset>
				<div class="pure-control-group">
					<label for="elenco">Elenco</label>
					<select name="elenco">
						<option value="m-giovanissimi">Maschi giovanissimi</option>
						<option value="m-juniores">Maschi juniores</option>
						<option value="f-giovanissime">Femmine giovanissime</option>
						<option value="f-juniores">Femmine juniores</option>
					</select>
				</div>
				<div class="pure-controls">
					<button type="submit" class="pure-button pure-button-primary" name="g-elenco">Genera elenco</button>
				</div>
			</fieldset>
		</form>
		<?php 
			$modo = 'm-giovanissimi';
			if(isset($_POST['elenco'])){
				$modo = $_POST['elenco'];
			}
			$titolo;
			switch ($modo) {
				case 'm-giovanissimi':
					$titolo = 'Maschi giovanissimi';
					break;
				case 'm-juniores':
			 		$titolo = 'Maschi juniores';
				 		break;
			 	case 'f-giovanissime':
					$titolo = 'Femmine giovanissime';
					break;
			 	case 'f-juniores':
					$titolo = 'Femmine juniores';
					break;
				default:
					$liste = 'Maschi giovanissimi';
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
					$liste;
					switch ($modo) {
					 	case 'm-giovanissimi':
					 		$liste = $this->model->getAllAtletiMaschiAllievi();
					 		break;
					 	case 'm-juniores':
					 		$liste = $this->model->getAllAtletiMaschiJuniores();
					 		break;
					 	case 'f-giovanissime':
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
	</div>
</body>
</html>