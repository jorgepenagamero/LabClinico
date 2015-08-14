<form class="form-horizontal" method="POST" action="{{route('hecesCrear')}}">
    {{-- <input type="hidden" name="_method" value="PUT"> --}}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="id" value="{{ $heces->id }}">
    <input type="hidden" name="paciente_id" value="{{ $paciente->id }}">
    <input type="hidden" name="tipo_analisis" value="Heces">
    <div class="row box-body">
        <div class="col-md-12 ">
            <div class="form-group">
                <label for="medico" class="col-md-4 control-label">Medico</label>
                <div class="col-md-5">
                    <input type="text" name="medico" class="form-control" value="{{$heces->medico}}"required autofocus>
                </div>
            </div>
        </div>
        @include('dashboard.views.heces.datos')
        <div class="col-md-6 ">
            @include('dashboard.views.heces.panel_a')
        </div>

        <div class="col-md-6 ">
            @include('dashboard.views.heces.panel_b')
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="observaciones" class="col-md-4 control-label">Observaciones</label>
                <div class="col-md-5">
                    <input type="text" class="form-control" name="observaciones" value="{{$heces->observaciones}}">
                </div>
            </div>
        </div>
    </div>
    <div class="box-footer">
        <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default">Cancelar</a>
        <button type="submit" class="btn btn-primary pull-right" style="margin-left:20px;">Guardar</button>
        @if($heces->imprimir)
        <a href="{{ route('analisisImprimir', array('heces', $heces->id)) }}" target="_black" class="btn btn-info pull-right"><i class="fa fa-print"></i></a>
        @endif
    </div>
</form>