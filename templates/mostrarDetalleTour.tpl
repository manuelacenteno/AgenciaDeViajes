
{include 'header.tpl'}  
<main class="container">
        <div class="detalle">
                <h1>{$tour->destinos|upper}</h1>
                {if isset($tour->imagen)}
                        <p> <img width="560" height="400" src="{$tour->imagen}" class='card-img-top' alt='{$tour->destinos}'> </p>
                    {/if}
                <h2> Paquete </h2>
                <p>{$tour->paquete}</p>
                <h2> Itinerario </h2>
                <p>{$tour->itinerario}</p>
                <h2> Precio </h2>
                <p>{$tour->precio}</p>

                <button type="submit" class="btn btn-danger"><svg width="2em" height="1em" viewBox="0 0 16 16" 
                class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 
                4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 
                3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 
                0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 
                8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 
                0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                </svg></button>

                <a href="{BASE_URL}" class="btn btn-dark"><svg width="2em" height="1em" viewBox="0 0 16 16"
                 class="bi bi-arrow-left" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 
                4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                </svg></a>
                </div>

        {if isset($smarty.session.EMAIL_USUARIO)}
                {include 'form_comentario.tpl'}
        {/if}

        <div id="error"> 
        </div>

        <!--
                <div class="col-8  w-100">
                        <ul id="comentariosAdmin" class="list-group mt-5 w-100">
                        </ul>     
                </div>
       
                <div class="col-8  w-100">
                        <ul  id="comentarios" class="list-group mt-5 w-100">
                        </ul>  
                </div>
        
        -->

{if isset($smarty.session.PERMISO_USUARIO)&&($smarty.session.PERMISO_USUARIO==1)}
        <div class="tabla">
                <table>
                        <thead>
                                <tr>
                                        <th>Usuario</th>
                                        <th>Comentario</th>
                                        <th>Calificacion</th>
                                        <th>Eliminar</th>                              
                                </tr>
                        </thead>
                    <tbody id="comentariosAdmin">
                    </tbody>
                </table>
        </div>
{else}
        <div class="tabla">
                <table>
                    <tbody id="comentarios">
                    </tbody>
                </table>
        </div>
{/if}


<!-- script de JS -->
        {if isset($smarty.session.PERMISO_USUARIO)&&($smarty.session.PERMISO_USUARIO==1)}
                <script src="js/comentariosAdmin.js"></script>
        {else}
                <script src="js/comentarios.js"></script>
        {/if}

       <!-- <script src="js/comments-manu.js"></script> -->
{include 'footer.tpl'}