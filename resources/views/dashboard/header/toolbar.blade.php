<div class="tool pull-left">
    <div class="btn-group pull-left">
        <div class="pull-left">
            <input class="form-control" type="text" ng-model="buscar" placeholder="Buscar">
        </div>
        <button class="btn btn-default" type="button" name="refresh" title="Refresh" ng-click="cargarDatos()">
            <i class="glyphicon glyphicon-refresh"></i>
        </button>
        <button class="btn btn-default" type="button" name="toggle" title="Toggle">
            <i class="glyphicon glyphicon glyphicon-list-alt "></i>
        </button>
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <i class="glyphicon glyphicon-th "></i> <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
            <li><label class="label-control"> <input type="checkbox" value="1" checked="checked"> Teléfono</label></li>
            <li><label> <input type="checkbox" value="2" checked="checked"> Dirección</label></li>
            <li><label> <input type="checkbox" value="3" checked="checked"> Correo</label></li>
            </ul>
        </div>
        <button class="btn btn-default" ng-click="modalcrear()"> <i class="glyphicon glyphicon-plus"></i>  Agregar</button>
    </div>
</div>