
<div class="form-group">
    <label for="flora" class="col-sm-4 control-label">Flora bacteriana</label>
    <div class="col-sm-6">
        <input name="flora" value="{{$heces->flora}}" class="form-control" list="flora" />            
    </div>
</div>
<div class="form-group">
    <label for="protozoarios" class="col-sm-4 control-label">Protozoarios</label>
    <div class="col-sm-6">
    </div>
</div>
<div class="form-group">
    <label for="protozoarios" class="col-sm-4 control-label">Activos</label>
    <div class="col-sm-6">
        @if($heces->accion == "Editar")
        <input name="protozoarios" value="{{$heces->protozoarios}}" class="form-control activos"/>
        @else
        <input type="hidden" name="protozoarios" value="{{$heces->protozoarios}}" class="form-control activos"/>
        <select  class="tags activos-tags form-control" multiple value="{{$heces->protozoarios}}">
              <option value="No se observan">No se observan</option>
              <option value="Endolimax nana">Endolimax nana</option>
              <option value="Estamoeba histolytica">Estamoeba histolytica</option>
              <option value="Estamoeba coli">Estamoeba coli</option>
              <option value="Glardia lamblia">Glardia lamblia</option>
              <option value="Chilomastix mesnilli">Chilomastix mesnilli</option>
              <option value="Iondamoeba butchslii">Iondamoeba butchslii</option>
              <option value="Balartidium coli">Balartidium coli</option>
              <option value="Trichomonas hominis">Trichomonas hominis</option>
        </select>
       @endif 
    </div>
</div>
<div class="form-group">
    <label for="quistes" class="col-sm-4 control-label">Quistes</label>
    <div class="col-sm-6">
        @if($heces->accion == "Editar")
        <input name="quistes" value="{{$heces->quistes}}" class="form-control quistes"/>
        @else
        <input type="hidden" name="quistes" value="{{$heces->quistes}}" class="form-control quistes"/>
        <select class="tags quistes-tags form-control" multiple value="{{$heces->quistes}}">
            <option value="No se observan">No se observan</option>
            <option value="Endolimax nana">Endolimax nana</option>
            <option value="Estamoeba histolytica">Estamoeba histolytica</option>
            <option value="Estamoeba coli">Estamoeba coli</option>
            <option value="Glardia lamblia">Glardia lamblia</option>
            <option value="Iondamoeba butchslii">Iondamoeba butchslii</option>
            <option value="Balartidium coli">Balartidium coli</option>
            <option value="Blastocistis hominis">Blastocistis hominis</option>
        </select>
        @endif
    </div>
</div>
<div class="form-group">
    <label for="larvas" class="col-sm-4 control-label">Metazoarios</label>
    <div class="col-sm-6">
    </div>
</div>
<div class="form-group">
    <label for="larvas" class="col-sm-4 control-label">Larvas</label>
    <div class="col-sm-6">
        <input name="larvas" value="{{$heces->larvas}}" class="form-control select2" list="larvas" />
    </div>
</div>
<div class="form-group">
    <label for="metazueros" class="col-sm-4 control-label">Huevos</label>
    <div class="col-sm-6">
        <input name="metazueros" value="{{$heces->metazueros}}" class="form-control" list="metazueros" /> 
    </div>
</div>
<div class="form-group">
    <label for="observaciones" class="col-md-4 control-label">Observaciones</label>
    <div class="col-md-6
    ">
        <input type="text" class="form-control" name="observaciones" value="{{$heces->observaciones}}">
    </div>
</div>