	<div class="contenitore2">
		<h1>Elenco di tutti gli atleti maschi</h1>
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
				<?php $liste = $this->model->getAllAtletiMaschi(); ?>
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

		<h1>Elenco di tutte le atlete femmine</h1>
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
				<?php $liste = $this->model->getAllAtletiFemmine(); ?>
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

		<h1>Elenco di tutti gli atleti maschi giovanissmi</h1>
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
				<?php $liste = $this->model->getAllAtletiMaschiGiovanissimi(); ?>
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

		<h1>Elenco di tutte le atlete femmine giovanissimi</h1>
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
				<?php $liste = $this->model->getAllAtletiFemmineGiovanissime(); ?>
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

		<h1>Elenco di tutti gli atleti maschi juniores</h1>
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
				<?php $liste = $this->model->getAllAtletiMaschiJuniores(); ?>
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

		<h1>Elenco di tutte le atlete femmine juniores</h1>
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
				<?php $liste = $this->model->getAllAtletiFemmineJuniores(); ?>
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