	<div class="contenitore-elenco-pettorine">
		<table class="pure-table pure-table-bordered table-pettorine">
			<thead>
				<tr>
					<td style="width:16%;"># pettorina</td>
					<td>Nome</td>
					<td>Cognome</td>
					<td>Scuola</td>
				</tr>
			</thead>
			<tbody>
				<?php foreach($lista_pettorine as $lista): ?>
				<tr class="row-pettorine">
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