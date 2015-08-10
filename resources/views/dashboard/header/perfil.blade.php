<li class="dropdown user user-menu">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        {{-- <img src="/img/logo.svg" class="user-image" alt="Imagen de Usuario"/> --}}
        <span class="hidden-xs">Laboratorio Clinico Central Ilobasco</span>
    </a>
    <ul class="dropdown-menu">
    <!-- User image -->
    <li class="user-header">
      <img src="/img/logo.svg" class="img-circle" alt="User Image" />
      <p>
        {{ Auth::user()->name }}
        <small>Administrador</small>
      </p>
    </li>
    <!-- Menu Body -->
    <li class="user-body">
      <div class="col-xs-4 text-center">
        <a href="#">Followers</a>
      </div>
      <div class="col-xs-4 text-center">
        <a href="#">Sales</a>
      </div>
      <div class="col-xs-4 text-center">
        <a href="#">Friends</a>
      </div>
    </li>
    <!-- Menu Footer-->
    <li class="user-footer">
      <div class="pull-left">
        <a href="#" class="btn btn-default btn-flat">Perfil</a>
      </div>
      <div class="pull-right">
        <a href="/auth/logout" class="btn btn-default btn-flat">Salir</a>
      </div>
    </li>
  </ul>
</li>