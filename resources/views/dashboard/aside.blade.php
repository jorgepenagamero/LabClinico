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
        <li class="header">Opciones</li>
        <li>
            <a href="{{ route('examenes') }}">
                <i class="fa fa-files-o"></i>
                <span>Examenes</span>
                {{-- <span class="label label-primary pull-right">12</span> --}}
            </a>
        </li>

      {{-- <li class="header">Otros</li>
      <li class="treeview">
        <a href="#"><span>Sistemas</span> <i class="fa fa-angle-left pull-right"></i></a>
        <ul class="treeview-menu">
          <li><a href="#">Link in level 2</a></li>
          <li><a href="#">Link in level 2</a></li>
        </ul>
      </li> --}}
    </ul>

  </section>

</aside>