        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-black sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="https://github.com/amriarendy">
                <div class="sidebar-brand-icon">
                    <i class="fab fa-github"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Github</div>
            </a>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Dashboard
            </div>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-map"></i>
                    <span>Maps</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                    <div class="bg-black py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Utilities:</h6>
                        <a class="collapse-item" href="<?= site_url('map') ?>">Map View</a>
                        <a class="collapse-item" href="<?= site_url('marker') ?>">Map Marker</a>
                        <a class="collapse-item" href="<?= site_url('polyline') ?>">Map Polyline</a>
                        <a class="collapse-item" href="<?= site_url('routing') ?>">Map Routing</a>
                        <a class="collapse-item" href="<?= site_url('polygon') ?>">Map Polygon</a>
                        <a class="collapse-item" href="<?= site_url('circle') ?>">Map Circle</a>
                        <a class="collapse-item" href="<?= site_url('coordinate') ?>">Map Get Coordinate</a>
                        <a class="collapse-item" href="<?= site_url('markdb') ?>">Map Marker DB</a>
                        <a class="collapse-item" href="<?= site_url('circledb') ?>">Map Circle DB</a>
                        <a class="collapse-item" href="<?= site_url('clusterdb') ?>">Map Cluster DB</a>
                        <a class="collapse-item" href="<?= site_url('heat') ?>">Map Heat</a>
                        <a class="collapse-item" href="<?= site_url('search-control') ?>">Map Serach Control</a>
                        <a class="collapse-item" href="<?= site_url('geojson') ?>">Map Geo JSON</a>
                        <a class="collapse-item" href="<?= site_url('base') ?>">Map Base</a>
                        <a class="collapse-item" href="<?= site_url('drawer-leaflet') ?>">Map Drawer Leaflet</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Master Data
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Master</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-black py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Auth:</h6>
                        <a class="collapse-item" href="#">Users</a>
                        <a class="collapse-item" href="#">Address</a>
                        <a class="collapse-item" href="#">Map Marker</a>
                        <a class="collapse-item" href="#">Map</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Error Page:</h6>
                        <a class="collapse-item" href="404.html">404</a>
                        <a class="collapse-item" href="500.html">500</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Information</span></a>
            </li>

            <!-- Divider -->

            <hr class="sidebar-divider d-none d-md-block">

            <li class="nav-item">
                <a class="nav-link text-danger" href="#">
                    <i class="fas fa-sign-out-alt text-danger"></i>
                    <span>Logout</span></a>
            </li>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-black topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Lorem Ipsum</span>
                                <img class="img-profile rounded-circle" src="./img/profile.png">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-danger" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-danger"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->