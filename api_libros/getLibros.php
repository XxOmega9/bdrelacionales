<?php

    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $dbname ='libros';

    //Crear conexion
    $conn = new mysqli($host, $user, $pass, $dbname);

    //verificar conexion
    if($conn->connect_error){
        http_response_code(500);
        echo json_encode(['error' => 'Error de conexion: ' , $conn->connect_error]);
        exit;
    }

    //consulta mysql
    $sql ="SELECT * FROM libro";
    $result = $conn->query($sql);

    $libros=[];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $libros[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($libros);
?>