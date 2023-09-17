<?php $this->load->view('templates/header'); ?>
<?php $this->load->view('templates/navbar'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">Drawer Leaflet</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-8 col-md-8">

            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Drawer Leaflet</h6>
                </div>
                <div class="card-body">
                    <div id="map" style="height: 500px;"></div>
                </div>
                <div class="card-footer">
                    <button href="index.html" class="btn btn-primary btn-block"> Submit </button>
                </div>
            </div>

        </div>

        <div class="col-lg-4 col-md-4">

            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Drawer Leaflet</h6>
                </div>
                <div class="card-body">
                    <div class="from-group">
                        <label class="font-weight-bold" for="geoJson">geoJson</label>
                        <textarea name="geojson" id="geoJson" class="form-control" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-8">
                            <button type="submit" class="btn btn-success btn-block"> Save </button>
                        </div>
                        <div class="col-4">
                            <button onclick="prettyPrint()" class="btn btn-info btn-block"> pretty json </button>
                        </div>
                    </div>
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
    // FeatureGroup is to store editable layers
    var drawnItems = new L.FeatureGroup();
    map.addLayer(drawnItems);
    var drawControl = new L.Control.Draw({
        draw: {
            polygon: true,
            marker: false,
            circle: false,
            circlemarker: false,
            rectangle: false,
            polyline: false,
        },
        edit: {
            featureGroup: drawnItems
        }
    });
    map.addControl(drawControl);

    // create geojson
    map.on('draw:created', function(event) {
        var layer = event.layer;
        var feature = layer.feature = layer.feature || {};
        feature.type = feature.type || "Feature";
        var props = feature.properties = feature.properties || {};
        drawnItems.addLayer(layer);
        $("[name=geojson]").html(JSON.stringify(drawnItems.toGeoJSON()));
    });

    // edit geojson
    map.on('draw:edited', function(event) {
        $("[name=geojson]").html(JSON.stringify(drawnItems.toGeoJSON()));
    });

    // delete geojson
    map.on('draw:deleted', function(event) {
        $("[name=geojson]").html("");
    });

    function prettyPrint() {
        var ugly = document.getElementById('geoJson').value;
        var obj = JSON.parse(ugly);
        var pretty = JSON.stringify(obj, undefined, 4);
        document.getElementById('geoJson').value = pretty;
    }
</script>
<?php $this->load->view('templates/footer'); ?>