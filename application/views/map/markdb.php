<?php $this->load->view('templates/header'); ?>
<?php $this->load->view('templates/navbar'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">Marked From Database</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 col-md-12">

            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Marked From Database</h6>
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
    var map = L.map('map').setView([-6.901727610260317, 107.61856198355486], 15);

    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);
    <?php foreach ($maps as $key => $value) { ?>
        var location = L.marker([<?= $value->latitude ?>, <?= $value->longitude ?>]).bindPopup("<span><?= $value->vilage ?></span>").addTo(map).openPopup();
    <?php } ?>
</script>
<?php $this->load->view('templates/footer'); ?>