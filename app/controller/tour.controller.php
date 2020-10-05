<?php
include_once 'app/view/tour.view.php';
include_once 'app/model/tour.model.php';

class TourController{
    private $model;
    private $view;

    function __construct()
    {
        $this->model = new TourModel();
        $this->view = new TourView();
    }
    function mostrarTour($id){
        
        $tour = $this->model-> obtenerTour($id);
       
        $this->view-> mostrarTours($tour);
    }
    function insertarTour(){
    
        $destinos=$_POST['destinos'];
        $paquete=$_POST['paquete'];
        $itinerario=$_POST['itinerario'];
        $precio=$_POST['precio'];
        $id_region=$_POST['id_region'];

    if( empty ($destinos) || empty ($paquete)|| empty ($itinerario)|| empty ($precio)|| empty ($id_region)){
    $this->view->mostrarErrorTour('Faltan datos obligatorios');
    die();
    }
    $id=$this->model->insertarTour($destinos, $paquete,$itinerario,$precio,$id_region);

    /*header("location: " .BASE_URL);*/
    }

    function eliminarTour($id){

        $this->model->borrarTour($id);
        header("location: " .BASE_URL);
     }
}