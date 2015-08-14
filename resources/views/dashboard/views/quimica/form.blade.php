<form class="form-horizontal" method="POST" action="{{route('quimicaCrear')}}">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="id" value="{{ $quimica->id }}">
    <input type="hidden" name="paciente_id" value="{{ $paciente->id }}">
    <input type="hidden" name="tipo_analisis" value="Quimica">
        <div class="col-md-12 ">
            <div class="form-group">
                <label for="medico" class="col-md-4 control-label">Medico</label>
                <div class="col-md-5">
                    <input type="text" name="medico" class="form-control" value="{{$quimica->medico}}"required autofocus>
                </div>
            </div>
        </div>
      <div class="box-body table-responsive">
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

                <tr id='addr0'>
                  <td> 1 </td>
                  <td> <input type="text" name='examen[0]'  class="form-control"/> </td>
                  <td> <input type="text" name='resultado[0]' class="form-control"/> </td>
                  <td> <input type="text" name='valores[0]' class="form-control"/> </td>
                </tr>
                <tr id='addr1'></tr>

              </tbody>
          </table>
          <br>
          <a id='delete_row' class="btn btn-danger pull-left"><i class="fa">-</i></a>
          <a id="add_row" class="btn btn-primary pull-right"><i class="fa">+</i></a>
      </div>

      <div class="box-footer">
          <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default">Cancelar</a>
          <button type="submit" class="btn btn-info pull-right">Guardar</button>
      </div>
</form>