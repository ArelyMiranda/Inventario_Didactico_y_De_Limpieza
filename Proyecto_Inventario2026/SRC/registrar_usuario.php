<?php
session_start(); require_once 'conexion.php'; header('Content-Type: application/json; charset=utf-8');
$nombre=trim($_POST['nombre']??''); $correo=trim($_POST['correo']??''); $usuario=trim($_POST['usuario']??''); $password=$_POST['password']??'';
if(!$nombre||!filter_var($correo,FILTER_VALIDATE_EMAIL)||!$usuario||strlen($password)<6){http_response_code(422);echo json_encode(['ok'=>false,'mensaje'=>'Completa los campos y usa una contraseña de al menos 6 caracteres.']);exit;}
try{$hash=password_hash($password,PASSWORD_DEFAULT);$q=$conexion->prepare('INSERT INTO usuarios(nombre,usuario,correo,password) VALUES(?,?,?,?)');$q->bind_param('ssss',$nombre,$usuario,$correo,$hash);$q->execute();echo json_encode(['ok'=>true,'mensaje'=>'Registro correcto. Ya puedes iniciar sesión.']);}
catch(mysqli_sql_exception $e){http_response_code(409);echo json_encode(['ok'=>false,'mensaje'=>'El usuario o correo ya está registrado.']);}
