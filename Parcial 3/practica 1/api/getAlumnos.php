<?php

    header("Content-Type: application/json");
    header("Acces-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Karolina Simone", "correo" => "karols@cetis107.edu.mx"],
        ["id" => 1, "nombre" => "Ana Sofia", "correo" => "anas@cetis107.edu.mx"],
        ["id" => 1, "nombre" => "Rosselyn", "correo" => "roswalie@cetis107.edu.mx"],
    ];

    echo json_encode($usuarios);

?>