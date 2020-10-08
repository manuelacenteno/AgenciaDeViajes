{include 'header.tpl'} 

 <h1>Regiones</h1>
 {include 'form_region.tpl'}
    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nombre</th>
                <th scope="col">Informacion</th>
            </tr>
        </thead>
        <tbody>
        {foreach from=$regiones item= $region}
            <tr>
                <th scope="row">{$region->id}</th>
                <td>{$region->nombre}</td>
                <td>{$region->informacion}</td>
                <td><a class='btn btn-danger btn-sm' href='eliminarRegion/{$region->id}'>ELIMINAR</a></td>
            </tr>
        {/foreach}    
        </tbody>
    </table>
    <h1>Tours</h1>
{include 'form_tour.tpl'} 
<table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">Destino</th>
                <th scope="col">Paquete</th>
                <th scope="col">Itinerario</th>
                <th scope="col">Precio</th> 
            </tr>
        </thead>
        <tbody>
        {foreach from=$tours item= $tour}
            <tr>
                <th scope="row">{$tour->destinos}</th>
                <td>{$tour->paquete}</td>
                <td>{$tour->itinerario}</td>
                 <td>{$tour->precio}</td> 
                <td><a class='btn btn-danger btn-sm' href='eliminarTour/{$tour->id}'>Eliminar</a></td>
            </tr>
        {/foreach}    
        </tbody>
    </table>
    
{include 'footer.tpl'}
   