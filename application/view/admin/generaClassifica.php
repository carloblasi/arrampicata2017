<table class="pure-table pure-table-horizontal">
    <thead>
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
