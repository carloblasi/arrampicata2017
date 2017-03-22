# COSA/COME AGGIUNGERE CODICE

Per ogni pagina che volete aggiungere dovete creare un controller all'interno di `application/controller/` in cui mettere il metodo per mostrare la vista (ovvero un metodo index) ed eventuali metodi per le azioni che si possono compiere nella pagina, questi metodi possono comunicare con model.php e usare i metodi del model.php. Se volete aggiungere metodi per comunicare col database dovete aggiungerli al model, NON al controller (dal controller dovrete chiamare i metodi del model). Infine le viste vere e proprie sono altri file PHP (e HTML) all'interno di `application/view/`.

## Features

- extremely simple, easy to understand
- simple but clean structure
- makes "beautiful" clean URLs
- demo CRUD actions: Create, Read, Update and Delete database entries easily
- demo AJAX call
- tries to follow PSR 1/2 coding guidelines
- uses PDO for any database requests, comes with an additional PDO debug tool to emulate your SQL statements
- commented code
- uses only native PHP code, so people don't have to learn a framework

### TINY
 
MINI has a smaller brother, named [TINY](https://github.com/panique/tiny). It's similar to MINI, but runs without 
mod_rewrite in nearly every environment. Not suitable for live sites, but nice for quick prototyping.

1. Edit the database credentials in `application/config/config.php`
2. Execute the .sql statements in the `_install/`-folder (with PHPMyAdmin for example).
3. Make sure you have mod_rewrite activated on your server / in your environment. Some guidelines:

```php
$sql = "SELECT id, artist, track, link FROM song WHERE id = :song_id LIMIT 1";
$query = $this->db->prepare($sql);
$parameters = array(':song_id' => $song_id);

echo Helper::debugPDO($sql, $parameters);

$query->execute($parameters);
```

#### The structure in general

`example.com/home/exampleOne` will do what the *exampleOne()* method in application/controllers/home.php says.

`example.com/home` will do what the *index()* method in application/controllers/home.php says.

`example.com` will do what the *index()* method in application/controllers/home.php says (default fallback).

`example.com/songs` will do what the *index()* method in application/controllers/songs.php says.

`example.com/songs/editsong/17` will do what the *editsong()* method in application/controllers/songs.php says and
will pass `17` as a parameter to it.

Self-explaining, right ?

#### Showing a view

**August 2016**
- [codebicycle/panique] renamed Error class to Problem to make it PHP7 compatible #209
- [ynohtna92/panique] URL protocol is now protocol-independent #208

**February 2015**
- [jeroenseegers] nginx setup configuration

**December 2014**
- [panique] css fixes
- [panique] renamed controller / view to singular
- [panique] added charset to PDO creation (increased security) 
