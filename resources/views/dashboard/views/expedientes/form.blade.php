 <form class="form-horizontal" method="POST" action="{{route('crearPaciente')}}">
    {{-- <input type="hidden" name="_method" value="PUT"> --}}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="id" value="{{ $paciente->id }}">
    <input type="hidden" name="analisis_id" value="{{ $pacienteAnalisis->id }}">
    <input type="hidden" name="analisis" value="{{ $analisis }}">
    <div class="box-body">
        <br>
        <div class="form-group">
            <label for="nombre" class="col-sm-4 control-label">Nombre</label>
            <div class="col-sm-5">
                <input type="text" name="nombre" class="form-control" value="{{$paciente->nombre}}" required autofocus>
            </div>
        </div>
        <div class="form-group">
            <label for="edad" class="col-sm-4 control-label">Edad</label>
            <div class="col-sm-2">
                <input type="number" name="edad" min="1" class="form-control" value="{{$paciente->edad}}" required>
            </div>
            <div class="col-sm-3">
                <select class="form-control" name="detalle_edad">
                    <option value="1" selected>Años</option>
                    <option value="2">Meses</option>
                </select>
            </div>
        </div>
    </div>
    <div class="box-footer">
        <a href="{{ route('pacienteAnalisis', array($pacienteAnalisis->paciente_id)) }}" class="btn btn-default">Cancelar</a>
        <button type="submit" class="btn btn-info pull-right"><i class="fa fa-arrow-right"></i></button>
    </div>
</form>