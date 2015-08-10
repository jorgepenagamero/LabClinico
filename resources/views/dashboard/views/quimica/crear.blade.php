@extends('dashboard.base')

@section('titulo')
  Dashboard
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Quimica
      <small>Examen</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Quimica</li>
    </ol>
    </section>

@endsection

@section('contenido')

    <section class="content">
      
    <div class="row col-sm-12">

    <div class="box box-primary">
    
    <form class="form-horizontal">
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

      .<div class="box-footer">
          <a href="/" class="btn btn-default">Cancelar</a>
          <button type="submit" class="btn btn-info pull-right">Guardar</button>
      </div>
    </form>

    </section>

@endsection


@section('js')

<script>
  
  $(document).ready(function(){
    var i=1;
    $("#add_row").click(function(){
    $('#addr'+i).html("<td>"+ (i+1) +"</td><td><input name='examen["+i+"]' type='text' class='form-control input-md'  /> </td><td><input  name='resultado["+i+"]' type='text'  class='form-control input-md'></td><td><input  name='valores["+i+"]' type='text'  class='form-control input-md'></td>");

    $('#tab_logic').append('<tr id="addr'+(i+1)+'"></tr>');
    i++; 
    });

    $("#delete_row").click(function(){
    
          if(i>1){
              $("#addr"+(i-1)).html('');
              i--;
          }
    });

  });

</script> 


@endsection