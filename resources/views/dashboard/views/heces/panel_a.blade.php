
<div class="form-group">
    <label for="color" class="col-md-5 control-label">Color</label>
    <div class="col-md-6">
        <select class="form-control select2" name="color" value="{{$heces->color}}">
            <option selected="selected">Alabama</option> <option>Alaska</option> <option>California</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label for="consistencia" class="col-md-5 control-label">Consistencia</label>
    <div class="col-md-6">
        <select class="form-control select2" name="consistencia" value="{{$heces->consistencia}}">
            <option selected="selected">Alabama</option> <option>Alaska</option> <option>California</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label for="sangre" class="col-md-5 control-label">Sangre oculta</label>
    <div class="col-md-6">
        <label class="radio-inline">
            <input type="radio" name="sangre" value="1" checked> +
        </label>
        <label class="radio-inline">
            <input type="radio" name="sangre" value="2"> ++
        </label>
        <label class="radio-inline">
            <input type="radio" name="sangre" value="3"> +++
        </label>
    </div>
</div>
<div class="form-group">
    <label for="restos" class="col-md-5 control-label">Restos macroscopicos</label>
    <div class="col-md-6">
        <select class="form-control select2" name="restos" value="{{$heces->restos}}">
            <option selected="selected">Alabama</option> <option>Alaska</option> <option>California</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label for="entrocitos" class="col-md-5 control-label">Entrocitos</label>
    <div class="col-md-6">
        <select class="form-control select2" name="entrocitos" value="{{$heces->entrocitos}}">
            <option selected="selected">Alabama</option> <option>Alaska</option> <option>California</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label for="levadura" class="col-md-5 control-label">Levadura</label>
    <div class="col-md-6">
        <select class="form-control select2" name="levadura" value="{{$heces->levadura}}">
            <option selected="selected">Alabama</option> <option>Alaska</option> <option>California</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label for="mucus" class="col-md-5 control-label">Mucus</label>
    <div class="col-md-6">
        <label class="radio-inline">
            <input type="radio" name="mucus" value="1" checked> +
        </label>
        <label class="radio-inline">
            <input type="radio" name="mucus" value="2"> ++
        </label>
        <label class="radio-inline">
            <input type="radio" name="mucus" value="3"> +++
        </label>
    </div>
</div>
   