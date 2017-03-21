<div class="pure-menu pure-menu-horizontal">
	<ul class="pure-menu-list">
		<li class="pure-menu-item pure-menu-has-children pure-menu-allow-hover">
			<div id="menuLink1" class="pure-menu-link">Categoria</div>
			<ul class="pure-menu-children">
				<li class="pure-menu-item"><a href="<?php echo URL; ?>admin/classificaSquadre/allieviM" class="pure-menu-link">Allievi Maschi</a></li>
				<li class="pure-menu-item"><a href="<?php echo URL; ?>admin/classificaSquadre/allieviF" class="pure-menu-link">Allievi Femmine</a></li>
				<li class="pure-menu-item"><a href="<?php echo URL; ?>admin/classificaSquadre/junioresM" class="pure-menu-link">Juniores Maschi</a></li>
				<li class="pure-menu-item"><a href="<?php echo URL; ?>admin/classificaSquadre/junioresF" class="pure-menu-link">Juniores Femmine</a></li>
			</ul>
		</li>
	</ul>
</div>
<table class="pure-table">
	<thead>
		<tr>
			<td>Scuola</td>
			<td>Punteggio</td>
		</tr>
	</thead>
	<tbody>
		<?php
			asort($punteggi);
			foreach ($punteggi as $key => $value)
			{
				echo "<tr>";
				$scuola = $this->model->getScuola($key);
				echo "<td>".$scuola->nome_scuola."</td>";
				echo "<td>".$value."</td>";
				echo "</tr>";
			}
		?>
	</tbody>
  </table>
</body>
