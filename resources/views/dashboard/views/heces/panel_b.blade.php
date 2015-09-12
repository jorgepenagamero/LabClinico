<div class="form-group">
    <label for="leucositos" class="col-sm-4 control-label">Leucositos</label>
    <div class="col-sm-6">
        <input name="leucositos" value="{{$heces->leucositos}}" class="form-control" list="leucositos" />            
    </div>
</div>
<div class="form-group">
    <label for="flora" class="col-sm-4 control-label">Flora bacteriana</label>
    <div class="col-sm-6">
        <input name="flora" value="{{$heces->flora}}" class="form-control" list="flora" />            
    </div>
</div>
<div class="form-group">
    <label for="protozoarios" class="col-sm-4 control-label">Protozoarios activos</label>
    <div class="col-sm-6">
        <input name="protozoarios" value="{{$heces->protozoarios}}" class="form-control" list="protozoarios" />
    </div>
</div>
<div class="form-group">
    <label for="quistes" class="col-sm-4 control-label">Quistes</label>
    <div class="col-sm-6">
        <input name="quistes" multiple value="{{$heces->quistes}}" class="form-control" list="quistes" />        
    </div>
</div>
<div class="form-group">
    <label for="larvas" class="col-sm-4 control-label">Larvas/Huevos</label>
    <div class="col-sm-6">
        <input name="larvas" value="{{$heces->larvas}}" class="form-control" list="larvas" />            
    </div>
</div>
<div class="form-group">
    <label for="metazueros" class="col-sm-4 control-label">Metazoarios</label>
    <div class="col-sm-6">
        <input name="metazueros" value="{{$heces->metazueros}}" class="form-control" list="metazueros" />            
    </div>
</div>