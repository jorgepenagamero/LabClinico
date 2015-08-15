<form class="form-horizontal" method="POST" action="{{route('quimicaCrear')}}">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="id" value="{{ $quimica->id }}">
    <input type="hidden" name="paciente_id" value="{{ $paciente->id }}">
    <input type="hidden" name="tipo_analisis" value="Quimica">
    
    <div class="box-body">
        <div class="col-md-12 ">
          <div class="form-group">
              <label for="medico" class="col-md-4 control-label">Medico</label>
              <div class="col-md-5">
                  <input type="text" name="medico" class="form-control" value="{{$quimica->medico}}"required autofocus>
              </div>
          </div>
        </div>
          <table class="table table-bordered" id="tab_logic">
              <thead>
                  <tr> 
                      <th class="text-center"> # </th>
                      <th class="text-center"> Examen realizado </th>
                      <th class="text-center"> Resultado </th>
                      <th class="text-center"> Valores normales </th> 
                  </tr>
              </thead>
              <tbody>
              @if($quimica->accion == "Editar")
                @foreach($quimica->resultados as $index => $resultado)
                <tr id='{{ 'addr'.$index }}'>
                  <td> 1 </td>
                  <td> <input type="text" value="{{$resultado->evalor->examen->nombre}}" class="form-control"/> </td>
                  <td> <input type="text" value="{{$resultado->resultado}}" name='{{ 'resultados[' . $index . ']' }}' class="form-control" required/> </td>
                  <td> <input type="text" value="{{$resultado->evalor->valor}}" name='{{ 'valores[' . $index . ']' }}' class="form-control" required/> </td>
                  <td class="text-center">    
                      <a onClick="eliminar({{$index}});" class="btn btn-danger" alt="Eliminar"><i class="fa fa-minus"></i></a>
                  </td>
                </tr>
                <input type="hidden" id="resultados" value="{{ count($quimica->resultados) }}">
                <tr id='{{ 'addr'. count($quimica->resultados) }}'></tr>
                @endforeach
                @else
                <tr id='addr0'>
                  <td> 1 </td>
                  <td> <input type="text" class="form-control"/> </td>
                  <td> <input type="text" name="resultados[0]" class="form-control" required/> </td>
                  <td> <input type="text" name="valores[0]" class="form-control" required/> </td>
                  <td style="width:50px;"></td>
                </tr>
                <input type="hidden" id="resultados" value="1">
                <tr id='addr1'></tr>
                @endif
                </tbody>
                <tfooter>
                  <tr>
                    <td></td><td></td><td></td>
                    <td><a id="add_row" class="btn btn-primary pull-right"><i class="fa fa-plus"></i></a></td>
                  </tr>
                </tfooter>
          </table>
      </div>

      <div class="box-footer">
          <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default">Cancelar</a>
          <button type="submit" class="btn btn-info pull-right">Guardar</button>
      </div>
</form>