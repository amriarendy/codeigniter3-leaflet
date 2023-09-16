<?php $this->load->view('templates/header'); ?>
<?php $this->load->view('templates/navbar'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">Search Control</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 col-md-12">

            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Search Control</h6>
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
    var data = [
        <?php foreach ($maps as $key => $value) { ?> {
                "lct": [<?= $value->latitude ?>, <?= $value->longitude ?>],
                "vilage": "<?= $value->vilage ?>"
            },
        <?php } ?>
    ];
    var map = new L.Map('map', {
        zoom: 13,
        center: new L.latLng(-6.901727610260317, 107.61856198355486)
    });
    map.addLayer(new L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }));
    var markersLayer = new L.LayerGroup();
    map.addLayer(markersLayer);
    var controlSearch = new L.Control.Search({
        position: 'topleft',
        layer: markersLayer,
        initial: false,
        zoom: 17,
        marker: false,
    });
    map.addControl(new L.Control.Search({
        layer: markersLayer,
        initial: false,
        collapsed: true
    }));

    for (i in data) {
        var vilage = data[i].vilage; //value searched
        var lct = data[i].lct; //position found
        var marker = new L.Marker(new L.latLng(lct), {
            title: vilage
        }); //se property searched
        marker.bindPopup('title: ' + vilage);
        markersLayer.addLayer(marker);
    }
</script>
<?php $this->load->view('templates/footer'); ?>