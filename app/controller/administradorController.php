<?php
include_once 'app/view/admin.view.php';
include_once 'app/model/region.model.php';

class AdministradorController{

    private $model;
    private $view;

    function __construct(){

        $this->model = new RegionModel();
        //$this->view = new RegionView();
        $this->view = new AdministradorView();
    }

    function mostrarTabla(){
        
        $regiones = $this->model-> obtenerRegiones();
        
        $this->view-> mostrarTabla($regiones);
    }
    
   /* function insertarRegion(){
        $nombre = $_POST['nombre'];
        $informacion = $_POST['informacion'];

        if(empty($nombre) || empty($informacion)){
            echo "<h2>ERROR , Faltan datos </h2>";
            die();
        }

        $id = $this->model->insertarRegion($nombre, $informacion);
    }*/
}