<?php
    header("Content-Type: appilcation/json");

    if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo Put es permitido']);
    }

    require 'conexion.php';

    $input = json_decode(file_get_contents('php://input'), true);
    if (!isset($input["id"], $input["Nombre"], $input["Sinopsis"], $input["Capitulos"], $input["Estado"],$input["Autor"], $input["Fecha_publicacion"])) {
    http_response_code(400);
    echo json_encode(["error" => "Datos incompletos"]);
    exit();
}
    
    $id = intval($input["id"]);
    $Nombre = $conn->real_escape_string($input["Nombre"]);
    $Sinopsis = $conn->real_escape_string($input["Sinopsis"]);
    $Capitulos = intval($input["Capitulos"]);
    $Estado = intval($input["Estado"]);
    $Autor = $conn->real_escape_string($input["Autor"]);
    $Fecha_publicacion = $conn->real_escape_string($input["Fecha_publicacion"]);

    $query = "UPDATE libro SET Nombre = ?, Sinopsis = ?, Capitulos = ?, Estado = ?, Autor = ?, Fecha_publicacion = ? WHERE id = ?";
    
    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "error en la consulta", "detalle" =>$conn->error]);
        exit();
    }

    $st->bind_param("ssiissi", $Nombre, $Sinopsis, $Capitulos, $Estado, $Autor, $Fecha_publicacion, $id);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["message" => "Libro actualizado correctamente"]);
        }else{
            http_response_code(400);
            echo json_encode(["error" => "no se encontro el Libro con id: $id"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error" => "error al ejecutar", "detalle" => $st->error]);
    }
    $st->close();
    $conn->close();

?>