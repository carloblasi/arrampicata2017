<table class="pure-table">
  <thead>
    <tr>
      <th>Nome</th>
      <th>Cognome</th>
      <th>Anno</th>
      <th>Punteggio</th>
    </tr>
  </thead>
  <tbody>
    <?php
      foreach ($classifica as $row)
      {
        echo <<<EOT
        <tr>
          <td>$row->nome</td>
          <td>$row->cognome</td>
          <td>$row->anno</td>
          <td>$row->punteggio</td>
        </tr>
EOT;
      }

    ?>
  </tbody>
</table>
