
<div class="form-group">
    <label for="color" class="col-md-5 control-label">Color</label>
    <div class="col-md-6">
        <input name="color" value="{{$heces->color}}" class="form-control" list="colores" />
    </div>
</div>
<div class="form-group">
    <label for="consistencia" class="col-md-5 control-label">Consistencia</label>
    <div class="col-md-6">
        <input name="consistencia" value="{{$heces->consistencia}}" class="form-control" list="consistencias" />
    </div>
</div>
{{-- <div class="form-group">
    <label for="sangre" class="col-md-5 control-label">Sangre oculta</label>
    <div class="col-md-6">
        <input name="sangre" value="{{$heces->sangre}}" class="form-control" list="sangres" />
    </div>
</div> --}}
<div class="form-group">
    <label for="restos" class="col-md-5 control-label">Restos macroscopicos</label>
    <div class="col-md-6">
        <input name="restos" value="{{$heces->restos}}" class="form-control" list="restos" />
    </div>
</div>
<div class="form-group">
    <label for="leucositos" class="col-sm-5 control-label">Leucositos</label>
    <div class="col-sm-6">
        <input name="leucositos" value="{{$heces->leucositos}}" class="form-control" list="leucositos" />
    </div>
</div>
<div class="form-group">
    <label for="entrocitos" class="col-md-5 control-label">Eritrocitos</label>
    <div class="col-md-6">
        <input name="entrocitos" value="{{$heces->entrocitos}}" class="form-control" list="entrocitos" />
    </div>
</div>
<div class="form-group">
    <label for="levadura" class="col-md-5 control-label">Levadura</label>
    <div class="col-md-6">
        <input name="levadura" value="{{$heces->levadura}}" class="form-control" list="levaduras" />
    </div>
</div>
<div class="form-group">
    <label for="mucus" class="col-md-5 control-label">Mucus</label>
    <div class="col-md-6">
        <input name="mucus" value="{{$heces->mucus}}" class="form-control" list="mucus" />
    </div>
</div>

   