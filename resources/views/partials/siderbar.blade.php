<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ route('home') }}" class="brand-link bg-lightx">
        <img src="/images/businessman.png" alt="logo" class="brand-image img-circle elevation-3 bg-white"
            style="opacity: .8">
        <span class="brand-text font-weight-light">
            {{ config('app.name') }}
            @if (auth()
        ->user()
        ->isAdmin())
                Admin
            @else
                User
            @endif
        </span>

    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                {{-- ADMIN AREA START --}}
                @if (auth()
        ->user()
        ->isAdmin())
                    <li class="nav-item">
                        <a href="{{ route('users.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Users
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('forms.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>
                                Forms
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('payments.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-dollar-sign"></i>
                            <p>
                                Payments
                            </p>
                        </a>
                    </li>
                @endif
                {{-- ADMIN AREA END --}}


                {{-- GENERAL APPLICANT AREA START --}}
                @if (!auth()
        ->user()
        ->isAdmin())
                    <li class="nav-item">
                        <a href="" class="nav-link">
                            <i class="nav-icon fas fa-dollar-sign"></i>
                            <p>
                                Payments
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="" class="nav-link">
                            <i class="nav-icon fas fa-envelope"></i>
                            <p>
                                Contact
                            </p>
                        </a>
                    </li>
                @endif
                {{-- GENERAL APPLICANT AREA END --}}

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
