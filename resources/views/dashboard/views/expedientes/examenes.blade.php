<div class="panel">
  {{-- <div class="panel-heading"> --}}
    <h3 class="text-center">Crear análisis</h3>
  {{-- </div> --}}
  <div class="panel-body">
    <a href="{{ '/orina/crear/' . $paciente->id }}" class="col-md-2 col-md-offset-1 col-sm-6">
        <div class="small-box bg-aqua">
            <div class="inner"> <h3>Orina</h3></div>
            <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
        </div>
    </a>

    <a href="{{ '/diversos/crear/' . $paciente->id }}" class="col-md-2 col-sm-6">
        <div class="small-box bg-green">
            <div class="inner"> <h3>Diversos</h3></div>
            <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
        </div>
    </a>

    <a href="{{ '/hemograma/crear/' . $paciente->id }}" class="col-md-2 col-sm-6">
        <div class="small-box bg-blue">
            <div class="inner"> <h3>Hemograma</h3></div>
            <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
        </div>
    </a>

    <a href="{{ '/heces/crear/' . $paciente->id }}" class="col-md-2 col-sm-6">
        <div class="small-box bg-red">
            <div class="inner"> <h3>Heces</h3></div>
            <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
        </div>
    </a>

    <a href="{{ '/quimica/crear/' . $paciente->id }}" class="col-md-2 col-md-6">
        <div class="small-box bg-yellow">
            <div class="inner"> <h3>Quimica</h3></div>
            <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
        </div>
    </a>
  </div>
</div>