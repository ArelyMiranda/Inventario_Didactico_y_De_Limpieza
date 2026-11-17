
<?php
$servidor = "localhost";
$usuario = "TU_USUARIO";
$password = "TU_CONTRASEÑA";
$basedatos = "inventario_demo";

$conexion = new mysqli(
    $servidor,
    $usuario,
    $password,
    $basedatos
);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

$conexion->set_charset("utf8mb4");
?>
