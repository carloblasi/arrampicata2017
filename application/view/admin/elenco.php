	<div>
		<form class="pure-form pure-form-aligned" action="" method="POST" id="form-elenco">
			<fieldset>
				<div class="pure-control-group">
					<label for="elenco">Elenco</label>
					<select name="elenco">
						<option value="m-allievi">Maschi - Allievi</option>
						<option value="m-juniores">Maschi - Juniores</option>
						<option value="f-allievi">Femmine - Allievi</option>
						<option value="f-juniores">Femmine - Juniores</option>
					</select>
				</div>
				<div class="pure-controls">
					<button type="submit" class="pure-button pure-button-primary" name="g-elenco">Genera elenco</button>
				</div>
			</fieldset>
		</form>
	</div>
	<div class="contenitore-elenco" id="elenco">
		
	</div>
	<script type="text/javascript">

		$('#form-elenco').submit(function(e) {

			e.preventDefault();
			$.ajax({

				url: 'prova',
				type: 'POST',
				data: $(this).serialize(),
				dataType: 'html'
			})
			.done(function(data) {

				$('#elenco').fadeOut('slow', function() {
					$('#elenco').fadeIn('slow').html(data);
				});
			})
			.fail(function(){
				alert('Failed');
			});
		});

	</script>
</body>
</html>