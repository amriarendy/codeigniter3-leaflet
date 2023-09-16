<?php $this->load->view('templates/header'); ?>
<?php $this->load->view('templates/navbar'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">Polygon</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 col-md-12">

            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Polygon</h6>
                </div>
                <div class="card-body">
                    <div id="map" style="height: 500px;"></div>
                </div>
                <div class="card-footer">
                    <button href="index.html" class="btn btn-primary btn-block"> Submit </button>
                </div>
            </div>

        </div>

    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<script>
    var map = L.map('map').setView([-6.174745602970009, 106.8270924213689], 15);

    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    var latlngs = [
        [-6.1710516588736635, 106.82965792716023],
        [-6.1711369921951125, 106.8231777102231],
        [-6.180587573086518, 106.82285584512945],
        [-6.180278245232358, 106.83222211901918]
    ];

    var polygon = L.polygon(latlngs, {
        color: 'red'
    }).bindPopup("<span>Monument Nasional (Monas) Indonesia</span>").addTo(map).openPopup();

    var latlngs2 = [
        [-6.212345707823786, 106.8066242208911],
        [-6.214521533173565, 106.79819135556208],
        [-6.2293041083328635, 106.79853467824202],
        [-6.219491767175213, 106.81237487689916]
    ];

    var polygon2 = L.polygon(latlngs2, {
        color: 'blue'
    }).bindPopup("<span>Gelora Bung Karno (GBK)</span>").addTo(map).openPopup();
    // zoom the map to the polygon
    map.fitBounds(polygon.getBounds());
</script>
<?php $this->load->view('templates/footer'); ?>