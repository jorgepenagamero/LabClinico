<form class="form-horizontal">
    <div class="box-body">
        <br>
        <div class="col-sm-6 ">
            @include('dashboard.views.heces.panel_a')
        </div>

        <div class="col-sm-6 ">
            @include('dashboard.views.heces.panel_b')
        </div>.
    </div>
    <div class="box-footer">
        <a href="/" class="btn btn-default">Cancelar</a>
        <button type="submit" class="btn btn-info pull-right">Guardar</button>
    </div>
</form>