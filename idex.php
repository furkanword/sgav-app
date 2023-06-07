<?php 
    include_once ('app.php');
    use Models\Paises;
    $obj = new Paises;
    var_dump(($obj->loadAllData()));
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="controllers/paisController.js" type="text/javascript" defer></script>
    <title>Document</title>
</head>
<body>
<form id="myForm">
        <input type="text" name="nombre_pais"><br>
        <input type="submit" value="Enviar">
    </form>
</body>
</html>