<aside class="main-sidebar">
  <section class="sidebar">
    <!-- Sidebar User -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="/img/logo.svg" class="img-circle" alt="User Image" />
      </div>
      <div class="pull-left info">
        <p>{{ Auth::user()->name }}</p>
        <a href="#"><i class="fa fa-circle text-success"></i> Trabajando</a>
      </div>
    </div>
    <!-- Buscador -->
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Buscar..."/>
        <span class="input-group-btn">
          <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
        </span>
      </div>
    </form>
    <!-- Sidebar Menu -->
    <ul class="sidebar-menu">
        <li class="header">Análisis</li>
        <li><a href="{{ route('crearPaciente', array('orina')) }}"><i class="fa fa-files-o"></i>
          <span>Orina</span></a>
        </li>
        <li><a href="{{ route('crearPaciente', array('diversos')) }}"><i class="fa fa-files-o"></i>
          <span>Diversos</span></a>
        </li>
        <li><a href="{{ route('crearPaciente', array('hemograma')) }}"><i class="fa fa-files-o"></i>
          <span>Hemograma</span></a>
        </li>
        <li><a href="{{ route('crearPaciente', array('heces')) }}"><i class="fa fa-files-o"></i>
          <span>Heces</span></a>
        </li>
        <li><a href="{{ route('crearPaciente', array('quimica')) }}"><i class="fa fa-files-o"></i>
          <span>Quimica</span></a>
        </li>
        <li class="header">Otros</li>
            <li><a href="{{ route('examenes') }}"><i class="fa fa-list"></i>
              <span>Examenes</span></a>
            </li>
            <li><a href="{{ route('expedientes') }}"><i class="fa fa-list"></i>
              <span>Expedientes</span></a>
            </i>
            </li>
            <li><a href="{{ route('perfil') }}"><i class="fa fa-user-md"></i>
              <span>Perfil</span></a>
            </li>
            <li><a href="{{ route('info') }}"><i class="fa fa-info"></i>
              <span>Información</span></a>
            </li>
    </ul>

  </section>

</aside>