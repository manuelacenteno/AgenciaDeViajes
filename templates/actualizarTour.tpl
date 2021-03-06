{include 'header.tpl'} 
<div class='titulodark'>
    <h1>Tours</h1>
</div>
<main class="container">

    

    {if $error}
        <div class="alert alert-primary">
            {$error}
        </div>
    {/if}
    <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Destino</th>
                    <th scope="col">Paquete</th>
                    <th scope="col">Itinerario</th>
                    <th scope="col">Precio</th> 
                </tr>
            </thead>
            <tbody>
        
                <tr>
                    <th scope="row">{$tour->destinos}</th>
                    <td>{$tour->paquete}</td>
                    <td>{$tour->itinerario}</td>
                    <td>{$tour->precio}</td> 
                </tr>
            
            </tbody>
        </table>
        {include 'form_actualizarTour.tpl'} 

        <a class='btn btn-info mt-5 w-25 mx-auto' href='administrador'>Volver</a>
    
{include 'footer.tpl'}