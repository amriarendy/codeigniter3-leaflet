<?php $this->load->view('templates/header'); ?>
<?php $this->load->view('templates/navbar'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">Marker</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 col-md-12">

            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Marker</h6>
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
        [
            [-6.170956680399256, 106.82727470681472],
            [-6.171315267871856, 106.82320791942534],
            [-6.179897541885665, 106.82282234460912],
            [-6.187854682573355, 106.8232729557534],
            [-6.1950436632987635, 106.823068155563]
        ],
        [
            [-6.221239157588542, 106.80981804290843],
            [-6.229046357156852, 106.7993681565381],
            [-6.227723834177395, 106.79885317240529],
            [-6.219063359912527, 106.79827381526468],
            [-6.214605079924703, 106.79812361155653],
            [-6.212642571318187, 106.8055694237388],
        ]
    ];
    var polyline = L.polyline(latlngs, {
        color: 'red'
    }).bindPopup("<span>Jl. Thamrin - Gelora Bung Karno (GBK)</span>").addTo(map).openPopup();

    var latlngs2 = [
        [
            [-6.224379279744728, 106.82656792695899],
            [-6.225385000350398, 106.825909996451],
            [-6.226693707352406, 106.82599929863528],
            [-6.227354970509814, 106.82490495733303],
        ],
    ];
    var polyline2 = L.polyline(latlngs2, {
        color: 'blue'
    }).bindPopup("<span>SCBD</span>").addTo(map).openPopup();
    // zoom the map to the polyline
    map.fitBounds(polyline2.getBounds());
</script>
<?php $this->load->view('templates/footer'); ?>