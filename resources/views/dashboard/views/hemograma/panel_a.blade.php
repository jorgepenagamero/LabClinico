
<div class="form-group">
    <label for="globulos" class="col-sm-6 control-label">Globulos rojos</label>
    <div class="col-sm-5">
        <input type="number" name="globulos" value="{{$hemograma->globulos}}" class="form-control" autofocus>
    </div>
</div>
<div class="form-group">
    <label for="hematocritos" class="col-sm-6 control-label">Hematocritos</label>
    <div class="col-sm-5">
        <input type="number" name="hematocritos" value="{{$hemograma->hematocritos}}" class="form-control">
    </div>
</div>
<div class="form-group">
    <label for="hemoglobina" class="col-sm-6 control-label">Hemoglobina</label>
    <div class="col-sm-5">
        <input type="number" name="hemoglobina" value="{{$hemograma->hemoglobina}}" class="form-control">
    </div>
</div>
<div class="form-group">
    <label for="volumen" class="col-sm-6 control-label">V.C.M M3</label>
    <div class="col-sm-5">
        <input type="number" name="volumen" value="{{$hemograma->volumen}}" class="form-control">
    </div>
</div>