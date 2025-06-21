<?php
header("Content-Type: application/json");

if($_SERVER['REQUEST_METHOD'] !== 'POST'){
    http_response_code(405);
    echo json_encode(['error'=> 'Solo metodo POST es permitido']);
}

//conectar a la BD 
require 'conexion.php';

$data = json_decode(file_get_contents('php://input'), true);
$Nombre = $data['Nombre'];
$Sinopsis = $data['Sinopsis'];
$Capitulos = $data['Capitulos'];
$Estado = $data['Estado'];
$Autor = $data['Autor'];
$Fecha_publicacion = $data['Fecha_publicacion'];

$query = $conn->prepare("INSERT INTO libro (Nombre, Sinopsis, Capitulos, Estado, Autor, Fecha_publicacion) VALUES (?,?,?,?,?,?)");

IF(!$query){
    http_response_code(500);
    echo json_encode(["error" => "Ocurrio un error"]);
    exit;
}

$query->bind_param("ssiiss", $Nombre, $Sinopsis, $Capitulos, $Estado, $Autor, $Fecha_publicacion);

if($query->execute()){
    echo json_encode(["mensaje" => "Libro insertado correctamente", "libro_id" => $query->insert_id]);
}else{
    http_response_code(500);
    echo json_encode(["error" => "Fallo la inserción", $query->error]);
}

$query->close();
$conn->close();