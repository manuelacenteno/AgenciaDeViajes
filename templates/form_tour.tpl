<!-- formulario de alta de tour -->
<form action="insertarTour" method="POST" class="my-4">
    <div class="row">
        <div class="col-9">
       
    <div class="form-group">
        <label>Destino</label>
        <textarea name="destinos" class="form-control" rows="3"></textarea>
    </div>
       
    <div class="form-group">
        <label>Paquete</label>
        <textarea name="paquete" class="form-control" rows="3"></textarea>
    </div>

    <div class="form-group">
        <label>Itinerario</label>
        <textarea name="itinerario" class="form-control" rows="3"></textarea>
    </div>

    <div class="form-group">
        <label>Precio</label>
        <textarea name="precio" class="form-control" rows="3"></textarea>
    </div>

     <div class="form-group">
                <label>Region</label>
                <select name="id_region" class="form-control">
                    <option value="1">Litoral</option>
                    <option value="2">Norte</option>
                    <option value="3">Cuyo</option>
                    <option value="4">Patagonia</option>
                    <option value="5">Cordoba</option>
                    <option value="6">CABA</option>
                    <option value="7">Buenos Aires Provincia</option>
                </select>
            </div>

    <button type="submit" class="btn btn-primary">Guardar</button>
</form>