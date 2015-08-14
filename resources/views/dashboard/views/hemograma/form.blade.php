<form class="form-horizontal" method="POST" action="{{route('hemogramaCrear')}}">
    {{-- <input type="hidden" name="_method" value="PUT"> --}}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="id" value="{{ $hemograma->id }}">
    <input type="hidden" name="paciente_id" value="{{ $paciente->id }}">
    <input type="hidden" name="tipo_analisis" value="Hemograma">

    <div class="box-body">
        <div class="col-md-12 ">
            <div class="form-group">
                <label for="medico" class="col-md-2 control-label">Medico</label>
                <div class="col-md-9">
                    <input type="text" name="medico" class="form-control" value="{{$hemograma->medico}}"required autofocus>
                </div>
            </div>
            <br />
        </div>
        <div class="col-md-4 ">
            @include('dashboard.views.hemograma.panel_a')
        </div>

        <div class="col-md-4 ">
            @include('dashboard.views.hemograma.panel_b')
        </div>
        <div class="col-md-4 ">
            @include('dashboard.views.hemograma.panel_c')
        </div>
        
        <div class="col-md-12 ">
            <div class="form-group">
                <label for="observaciones" class="col-md-2 control-label">Observaciones</label>
                <div class="col-md-9">
                    <input type="text" name="observaciones" value="{{$hemograma->observaciones}}"class="form-control" placeholder=" ">
                </div>
            </div>
        </div>.
    </div>
    <div class="box-footer">
        <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default">Cancelar</a>
        <button type="submit" class="btn btn-primary pull-right" style="margin-left:20px;">Guardar</button>
        @if($hemograma->imprimir)
        <a href="{{ route('analisisImprimir', array('hemograma', $hemograma->id)) }}" target="_black" class="btn btn-info pull-right"><i class="fa fa-print"></i></a>
        @endif
    </div>
</form>