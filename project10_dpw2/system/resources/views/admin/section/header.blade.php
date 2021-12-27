<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          @if(Auth::check())
            {{request()->user()->username}}
          @else
            silahkan Login
          @endif
          <img src="{{ url('public/assets') }}/dist/img/user3-128x128.jpg" alt="User Avatar" style="height: 130%" class="img-circle">
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
          <i class="fa fa-user"></i> Profile
          </a>
          <a href="#" class="dropdown-item">
          <i class="fa fa-cog"></i> Setting
          </a>
          <a href="{{url('login')}}" class="dropdown-item">
          <i class="fa fa-sign-out"></i> Logout
          </a>
        </div>
      </li>
    </ul>
</nav>


   