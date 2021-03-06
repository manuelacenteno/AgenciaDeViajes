{include 'header.tpl'} 
<div class='titulodark'>
    <h1>Region</h1>
</div>
    <main class="container">
        {include 'templates/form_actualizarRegion.tpl'}
        {if $error}
            <div class="alert alert-primary">
                {$error}
            </div>
        {/if}
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Informacion</th>
                </tr>
            </thead>
            <tbody>
            
                <tr>
                    <th scope="row">{$region->id}</th>
                    <td>{$region->nombre}</td>
                    <td>{$region->informacion}</td>
                    
                </tr>
        
            </tbody>
        </table>

<a class='btn btn-info mt-5 w-25 mx-auto' href='administrador'>Volver</a>
{include 'footer.tpl'}