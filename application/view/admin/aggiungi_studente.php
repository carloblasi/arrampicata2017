
	<div class="contenitore1">
		<form class="pure-form pure-form-aligned" action="<?php echo URL; ?>admin/aggiungistudente" method="POST">
			<fieldset>
				<div class="pure-control-group">
					<label for="name">Nome</label>
					<input type="text" name="name" id="name" placeholder="Nome">
				</div>
				<div class="pure-control-group">
					<label for="cognome">Cognome</label>
					<input type="text" name="cognome" id="cognome" placeholder="Cognome">
				</div>
				<div class="pure-control-group">
					<label for="sesso">Sesso</label>
					<select name="sesso">
						<option value="M">M</option>
						<option value="F">F</option>
					</select>
				</div>
				<div class="pure-control-group">
					<label for="data_nascita">Data di nascita</label>
					<input type="date" name="data_nascita" id="data_nascita" placeholder="Data di nascita">
				</div>
				<div class="pure-control-group">
					<label for="scuola">Scuola</label>
					<select name="scuola">
						<!-- perche' questo non funziona-->
						<?php
							$lista_scuole = $this->model->getAllScuole();
							foreach ($lista_scuole as $lista) {
								echo "<option value=\"$lista->id\">" + $lista->nome_scuola +"</option>";
							}
						?>
						<!-- mentre questo si?-->
						<?php $lista_scuole = $this->model->getAllScuole(); ?>
						<?php foreach($lista_scuole as $lista): ?>
							<option value="<?php echo $lista->id; ?>"><?php echo $lista->nome_scuola; ?></option>
						<?php endforeach; ?>
					</select>
				</div>
				<div class="pure-controls">
					<button type="submit" class="pure-button pure-button-primary" name="aggiunta_studente">Invia</button>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>