<?php
session_start();if(empty($_SESSION['usuario_id'])){header('Location: inicio_sesión.html');exit;}
