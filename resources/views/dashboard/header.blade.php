<header class="main-header">

  <a href="/" class="logo">Sistema Clínico</a>

  <nav class="navbar navbar-static-top" role="navigation">

    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
      <span class="sr-only">Toggle navigation</span>
    </a>
    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">

        {{-- @include('dashboard.header.mensajes') --}}

        {{-- @include('dashboard.header.notificaciones') --}}

        {{-- @include('dashboard.header.tareas') --}}
        
        @include('dashboard.header.perfil')

      </ul>
    </div>
  </nav>
</header>