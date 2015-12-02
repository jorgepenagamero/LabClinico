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
                    <input type="text" name="medico" class="form-control" value="{{$diverso->medico}}" autofocus>
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
            {{-- @if($diverso->accion != "Editar") --}}
              <ul class="nav nav-pills">
                <li role="presentation"><a href="javascript:void(0);" onClick="ninguno();">Ninguno</a></li>
                <li role="presentation"><a href="javascript:void(0);" onClick="antijenos();">Antijenos</a></li>
                <li role="presentation"><a href="javascript:void(0);" onClick="frotis();">FSP</a></li>
                <li role="presentation"><a href="javascript:void(0);" onClick="depuracion();">Depuración</a></li>
                <li role="presentation"><a href="javascript:void(0);" onClick="glicosilada();">Glicosilada</a></li>
              </ul>
            {{-- @endif --}}
           <textarea rows="8" id="resultado" name="resultado" class="form-control" style="white-space: normal;" required>
             {{$diverso->resultado}}
           </textarea>
        </div>

    </div>
    <div class="box-footer">
        <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default">Expediente</a>
        <button type="submit" class="btn btn-primary pull-right" style="margin-left:20px;">Guardar</button>
        @if($diverso->imprimir)
        <button onClick="imprimir('{{ route('analisisImprimir', array('diversos', $diverso->id)) }}')" target="_black" class="btn btn-info pull-right imprimir"><i class="fa fa-print"></i></button>
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
  function frotis(){
      document.getElementById('resultado').value = 'Linea Roja: \n \n Linea Blanca: \n \n Linea Plaquetaria: \n';
  }
  function depuracion(){
      document.getElementById('resultado').value = 'Concentración de Creatimina: \n Depuración de Creatinina: \n Volumen de Orina: \n Creatimina en Sangre: \n';
  }
  function glicosilada(){
      document.getElementById('resultado').value = 'Paciente no diabetico: 4.2 - 6.2 % \n Buen Control: 5.5 - 6.8 % \n Control Regular: 6.8 - 7.6 % \n Control pobre mayor de 7.8 % \n';
  }

</script> 


@endsection