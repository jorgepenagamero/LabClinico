<form class="form-horizontal" method="POST" action="{{route('orinaCrear')}}" autocomplete="off">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="id" value="{{ $orina->id }}">
    <input type="hidden" name="paciente_id" value="{{ $paciente->id }}">
    <input type="hidden" name="tipo_analisis" value="Orina">

    <div class="row box-body">
        <div class="col-md-12 ">
            <div class="form-group">
                <label for="medico" class="col-md-2 control-label">Medico</label>
                <div class="col-md-9">
                    <input type="text" name="medico" class="form-control" value="{{$orina->medico}}" autofocus>
                </div>
            </div>
        </div>
        @include('dashboard.views.orina.datos')
        <div class="col-md-4 ">
            @include('dashboard.views.orina.panel_a')
        </div>

        <div class="col-md-4 ">
            @include('dashboard.views.orina.panel_b')
        </div>
        <div class="col-md-4 ">
            @include('dashboard.views.orina.panel_c')
        </div>
        
        <div class="col-md-12 ">
            <div class="form-group">
                <label for="otros" class="col-md-2 control-label">Otros</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" name="otros" value="{{$orina->otros}}">
                </div>
            </div>
        </div>
    </div>
    <div class="box-footer">
        <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default">Expediente</a>
        <button type="submit" class="btn btn-primary pull-right" style="margin-left:20px;">Guardar</button>
        @if($orina->imprimir)
        <button onClick="imprimir('{{ route('analisisImprimir', array('orina', $orina->id)) }}')" target="_black" class="btn btn-info pull-right"><i class="fa fa-print imprimir"></i></button>
        @endif
    </div>
</form>