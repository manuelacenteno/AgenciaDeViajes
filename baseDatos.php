<?php

function connect(){
    $db = new PDO('mysql:host=localhost;'.'dbname=agencia_viajes;charset=utf8', 'root', '');
    return $db;
}

function obtenerRegiones(){
    //1- Abro la conexion
    $db = connect();

    //2-Enviar la consulta (preparar y ejecutar)
    $query = $db->prepare('SELECT * FROM region');
    $query->execute();

    //3-procesar la respuesta para generar html
    $region = $query->fetchAll(PDO::FETCH_OBJ);//arreglo con las tareas

    return $region;
    //4- cerrar la conexion (PDO lo hace solo)
}
/*DEVUELVE LA INFO DE LA BASE DE DATOS*/
function getTour(){

    $db=connect();/*HABRO LA CONEXION*/

    $query=$db->prepare('SELECT * FROM tour');/*ENVIAR LA CONSULTA*/
    $query->execute();

    $tour=$query->fetchAll(PDO::FETCH_OBJ);/*OBTENGO LA RESPUESTA CON UN FETCHALL XQ SON MUCHOS*/

    return $tour;
}

