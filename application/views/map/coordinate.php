<?php $this->load->view('templates/header'); ?>
<?php $this->load->view('templates/navbar'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">Get Coordinate</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 col-md-12">

            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Get Coordinate</h6>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="latitude">Latitude</label>
                        <input id="latitude" name="latitude" class="form-control" type="text" placeholder="Latitude" />
                    </div>
                    <div class="form-group">
                        <label for="longitude">Longitude</label>
                        <input id="longitude" name="longitude" class="form-control" type="text" placeholder="Longitude" />
                    </div>
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
    var curLocation = [0, 0];
    if (curLocation[0] === 0 && curLocation[1] === 0) {
        curLocation = [-6.174745602970009, 106.8270924213689];
    }
    var map = L.map('map').setView([-6.174745602970009, 106.8270924213689], 15);

    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    map.attributionControl.setPrefix(false);

    var marker = new L.marker(curLocation, {
        draggable: true
    });

    marker.on('dragend', function(event) {
        var position = marker.getLatLng();
        marker.setLatLng(position, {
            draggable: true
        }).bindPopup(position).update();
        $("#latitude").val(position.lat);
        $("#longitude").val(position.lng).keyup();
    });

    $("#latitude, #longitude").change(function() {
        var position = [parseInt($("#latitude").val()), parseInt($("#longitude").val())];
        marker.setLatLng, position({
            draggable: true
        }).bindPopup(position).update();
        map.panTo(position);
    });
    map.addLayer(marker);
</script>
<?php $this->load->view('templates/footer'); ?>