<table class="pure-table">
  <thead>
    <caption>Giovani femminile</caption>
    <tr>
      <th>Nome</th>
      <th>Cognome</th>
      <th>Anno</th>
      <th>Punteggio</th>
    </tr>
  </thead>
  <tbody>
    <?php
      foreach ($classificaGiovaniF as $row)
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

<table class="pure-table">
  <thead>
    <caption>Juniores femminile</caption>
    <tr>
      <th>Nome</th>
      <th>Cognome</th>
      <th>Anno</th>
      <th>Punteggio</th>
    </tr>
  </thead>
  <tbody>
    <?php
      foreach ($classificaJunionresF as $row)
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

<table class="pure-table">
  <thead>
    <caption>Giovani maschile</caption>
    <tr>
      <th>Nome</th>
      <th>Cognome</th>
      <th>Anno</th>
      <th>Punteggio</th>
    </tr>
  </thead>
  <tbody>
    <?php
      foreach ($classificaGiovaniM as $row)
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

<table class="pure-table">
  <thead>
    <caption>Juniores maschile</caption>
    <tr>
      <th>Nome</th>
      <th>Cognome</th>
      <th>Anno</th>
      <th>Punteggio</th>
    </tr>
  </thead>
  <tbody>
    <?php
      foreach ($classificaJunionresM as $row)
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
