<form class="form-horizontal" method="POST" action="{{route('diversoCrear')}}" autocomplete="off">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="id" value="{{ $diverso->id }}">
    <input type="hidden" name="paciente_id" value="{{ $paciente->id }}">
    <input type="hidden" name="tipo_analisis" value="Diversos">

    <div class="row box-body">
        <br>
        <div class="col-md-12 ">
            <div class="form-group">
                <label for="medico" class="col-sm-3 control-label">Medico</label>
                <div class="col-sm-7">
                    <input type="text" name="medico" class="form-control" value="{{$diverso->medico}}"required autofocus>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
               <label for="muestra" class="col-sm-3 control-label">Muestra</label>
               <div class="col-sm-7">
                   <input type="text" name="muestra" class="form-control" value="{{$diverso->muestra}}" required>
               </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
               <label for="examen" class="col-sm-3 control-label">Examen Realizado</label>
               <div class="col-sm-7">
                   <input type="text" name="examen" class="form-control" value="{{$diverso->examen}}" required>
               </div>
            </div>
        </div>

        <h4 class="text-center"><b>Resultado</b></h4>
        <hr>
        <div class="col-md-12">
            @if($diverso->accion != "Editar")
              <ul class="nav nav-pills">
                <li role="presentation"><a href="javascript:void(0);" onClick="ninguno();">Ninguno</a></li>
                <li role="presentation"><a href="javascript:void(0);" onClick="antijenos();">Antijenos</a></li>
              </ul>
            @endif
           <textarea rows="8" id="resultado" name="resultado" class="form-control" style="white-space: normal;" required>
             {{$diverso->resultado}}
           </textarea>
        </div>

    </div>
    <div class="box-footer">
        <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default">Cancelar</a>
        <button type="submit" class="btn btn-primary pull-right" style="margin-left:20px;">Guardar</button>
        @if($diverso->imprimir)
        <a href="{{ route('analisisImprimir', array('diversos', $diverso->id)) }}" target="_black" class="btn btn-info pull-right"><i class="fa fa-print"></i></a>
        @endif
    </div>
</form>


@section('js')

<script>

  function ninguno(){

      document.getElementById('resultado').value = '';
  };
  function antijenos(){

      document.getElementById('resultado').value = 'Salmonella Typhi O: \n Salmonella Typhi H: \n Salmonella paratyphi a: \n Salmonella paratyphi b: \n Brucella Abortus - ab: \n Protus Ox19: \n';
  }



</script> 


@endsection