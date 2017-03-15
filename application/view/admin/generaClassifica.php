
<table class="pure-table pure-table-horizontal">
    <thead>
      <tr>
        <th colspan="4">Categoria</th>
      </tr>
      <tr>
        <th>Pos.</th>
        <th>Nome</th>
        <th>Cognome</th>
        <th>Punteggio</th>
      </tr>
    </thead>
    <tbody>
      <?php
        foreach ($classifica as $row)
        {
          echo <<<EOT
          <tr>
            <td>$row->posizione</td>
            <td>$row->nome</td>
            <td>$row->cognome</td>
            <td>$row->punteggio</td>
          </tr>
EOT;
        }

      ?>
    </tbody>
</table>
<script type="text/javascript" src="<?php echo URL; ?>js/jquery.js"></script>
<script type="text/javascript" src="<?php echo URL; ?>js/jquery.stickytableheaders.min.js"></script>
<script>
  	$(".pure-table").stickyTableHeaders();
</script>
