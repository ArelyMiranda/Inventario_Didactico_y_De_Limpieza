<?php
session_start();

require_once 'conexion.php';

header('Content-Type: application/json; charset=utf-8');

if (empty($_SESSION['usuario_id'])) {
    http_response_code(401);
    echo json_encode([
        'ok' => false,
        'mensaje' => 'Sesión no iniciada'
    ]);
    exit;
}

$sql = "SELECT
            m.id,
            m.producto_id,
            p.nombre AS producto,
            p.categoria,
            m.tipo,
            m.cantidad,
            m.responsable,
            DATE_FORMAT(m.fecha, '%Y-%m-%d %H:%i:%s') AS fecha
        FROM movimientos m
        INNER JOIN productos p ON p.id = m.producto_id
        ORDER BY m.fecha DESC";

$resultado = $conexion->query($sql);

$registros = $resultado->fetch_all(MYSQLI_ASSOC);

echo json_encode([
    'ok' => true,
    'fecha_reporte' => date('d/m/Y'),
    'registros' => $registros,
    'total' => count($registros)
], JSON_UNESCAPED_UNICODE);