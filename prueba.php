<?php 
    $data = [
        'id_pais' => 1,
        'nombre_pais' => 'Colombia',
        'nombre_pais2' => 'Colombia',
        'nombre_pais3' => 'Colombia',
        'nombre_pais4' => 'Colombia',
        'nombre_pais5' => 'Colombia'
    ];
    $delimiter = ":";
    var_dump($data);
    $cols = $delimiter . join(',:',array_keys($data));
    var_dump($cols);

?>