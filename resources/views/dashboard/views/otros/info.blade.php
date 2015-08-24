@extends('dashboard.base')

@section('titulo')
  Información
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      <a href="/" class="btn btn-default"><i class="fa fa-arrow-left"></i></a>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Información</li>
    </ol>
    </section>

@endsection

@section('contenido')

<section class="content">

    <div class="row box box-primary">
        <div class="box-body box-profile text-center">
        <div class="col-sm-6 col-sm-offset-3">
                
          <i class="fa fa-code fa-5x"></i>
          <h3 class="profile-username text-center">Ing. Jesús Alfonso Alvarado Castillo.</h3>
          <p class="text-muted text-center">Desarrollador de Software en <a href="http://websis.me" target="_blank">Websis</a>.</p>

          <strong>Contacto:</strong>
          <p class="text-muted"><i class="fa fa-phone margin-r-5 fa-fw"></i> (+503) 7725-0139</p>
          <p class="text-muted"><i class="fa fa-envelope margin-r-5 fa-fw"></i> alvarado.websis@gmail.com</p>
          <hr>

          <strong>Servicios:</strong>
          <ul class="list-group">
            <li class="list-group-item">Desarrollo de Sistemas Informáticos.</li>
            <li class="list-group-item">Diseño y creación de páginas web.</li>
            <li class="list-group-item">Diseño y creación de tiendas en linea.</li>
            <li class="list-group-item">Desarrollo de aplicaciones móviles</li>
            <li class="list-group-item">Diseño en 3D</span>
          </ul>
        
        </div>
        </div>
      </div>
    </div>

</section>

@endsection