<div class="form-group">
    <label for="concentracion" class="col-sm-6 control-label">C.HB.G.M gr %</label>
    <div class="col-sm-5">
        <input type="number" step="any" name="concentracion" value="{{$hemograma->concentracion}}" class="form-control">
    </div>
</div>
<div class="form-group">
    <label for="globular" class="col-sm-6 control-label">HGB G.M. rr</label>
    <div class="col-sm-5">
        <input type="number" step="any" name="globular" value="{{$hemograma->globular}}" class="form-control">
    </div>
</div>
<div class="form-group">
    <label for="blancos" class="col-sm-6 control-label">Globulos blancos</label>
    <div class="col-sm-5">
        <input type="number" step="any" name="blancos" value="{{$hemograma->blancos}}" class="form-control">
    </div>
</div>
   
<div class="form-group">
    <label for="basofitos" class="col-sm-6 control-label">Basofilos</label>
    <div class="col-sm-5">
        <input type="number" step="any" name="basofitos" value="{{$hemograma->basofitos}}" class="form-control">
    </div>
</div>

<div class="form-group">
    <label for="eosinofilos" class="col-sm-6 control-label">Eosinofilos</label>
    <div class="col-sm-5">
        <input type="number" step="any" name="eosinofilos" value="{{$hemograma->eosinofilos}}" class="form-control">
    </div>
</div>