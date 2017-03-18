	<div class="contenitore-ultimo">
		<form class="pure-form pure-form-aligned" action="" method="POST">
			<fieldset>
				<div class="pure-control-group">
					<label for="boulder">Boulder</label>
					<select name="id-boulder">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
				</div>
				<div class="pure-control-group">
					<label for="n-pettorina">Numero di pettorina</label>
					<select name="numero-pettorina">
						<?php foreach ($prova as $lista) : ?>
						<option value="<?php echo $lista->casacca; ?>"> <?php echo $lista->casacca; ?> </option>
					<?php endforeach; ?>
					</select>
				</div>
				<div class="pure-control-group">
					<label for="n-tentativi">Numero di tentativi</label>
					<select name="n-tentativi">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
				<div class="pure-control-group">
					<label for="data_nascita">E' passato?</label>
					<select name="passato">
						<option value="Y">Si</option>
						<option value="N">No</option>
					</select>
				</div>
				<div class="pure-controls">
					<button type="submit" class="pure-button pure-button-primary" name="correzione_dati">Correggi dati</button>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>