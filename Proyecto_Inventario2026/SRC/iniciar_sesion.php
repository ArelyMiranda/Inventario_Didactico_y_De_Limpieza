<?php
session_start(); require_once 'conexion.php'; header('Content-Type: application/json; charset=utf-8');
$correo=trim($_POST['correo']??'');$password=$_POST['password']??'';
$q=$conexion->prepare('SELECT id,nombre,usuario,correo,password FROM usuarios WHERE correo=? LIMIT 1');$q->bind_param('s',$correo);$q->execute();$u=$q->get_result()->fetch_assoc();
if(!$u||!password_verify($password,$u['password'])){http_response_code(401);echo json_encode(['ok'=>false,'mensaje'=>'Correo o contraseña incorrectos.']);exit;}
session_regenerate_id(true);$_SESSION['usuario_id']=$u['id'];$_SESSION['nombre']=$u['nombre'];$_SESSION['usuario']=$u['usuario'];echo json_encode(['ok'=>true,'mensaje'=>'Sesión iniciada.']);
