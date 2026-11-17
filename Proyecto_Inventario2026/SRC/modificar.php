<?php
session_start();require_once 'conexion.php';header('Content-Type: application/json; charset=utf-8');if(empty($_SESSION['usuario_id'])){http_response_code(401);exit;}
$id=filter_input(INPUT_POST,'id',FILTER_VALIDATE_INT);$nombre=trim($_POST['nombre']??'');$categoria=trim($_POST['categoria']??'');if(!$id||!$nombre||!$categoria){http_response_code(422);echo json_encode(['ok'=>false,'mensaje'=>'Datos incompletos']);exit;}$q=$conexion->prepare('UPDATE productos SET nombre=?,categoria=? WHERE id=?');$q->bind_param('ssi',$nombre,$categoria,$id);$q->execute();echo json_encode(['ok'=>true]);
