	<div class="contenitore-elenco-pettorine">
		<table class="pure-table">
			<thead>
				<tr>
					<td># pettorina</td>
					<td>Nome</td>
					<td>Cognome</td>
					<td>Scuola</td>
				</tr>
			</thead>
			<tbody>
				<?php foreach($lista_pettorine as $lista): ?>
				<tr>
					<td><?php echo $lista->casacca; ?></td>
					<td><?php echo $lista->nome; ?></td>
					<td><?php echo $lista->cognome; ?></td>
					<td><?php echo $lista->nome_scuola; ?></td>	
				</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
</body>
</html>