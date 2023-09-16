<?php $this->load->view('templates/header'); ?>
<?php $this->load->view('templates/navbar'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">GeoJson (Polygon)</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 col-md-12">

            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">GeoJson (Polygon)</h6>
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
    var map = L.map('map').setView([-0.3046487690678686, 100.36951148163308], 6);

    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // west sumatera
    $.getJSON("<?= base_url('public/geojson/13.geojson') ?>", function(data) {
        geoLayer = L.geoJson(data, {
            style: function(feature) {
                return {
                    opacity: 1.0,
                    color: 'green',
                    fillOpacity: 0.5,
                    fillColor: 'green',
                }
            },
        }).addTo(map);
        geoLayer.eachLayer(function(layer) {
            layer.bindPopup("West Sumatera")
        })
    });

    // north sumatera
    $.getJSON("<?= base_url('public/geojson/12.geojson') ?>", function(data) {
        geoLayer = L.geoJson(data, {
            style: function(feature) {
                return {
                    opacity: 1.0,
                    color: 'red',
                    fillOpacity: 0.5,
                    fillColor: 'red',
                }
            },
        }).addTo(map);
        geoLayer.eachLayer(function(layer) {
            layer.bindPopup("North Sumatera")
        })
    });

    // Jambi
    $.getJSON("<?= base_url('public/geojson/15.geojson') ?>", function(data) {
        geoLayer = L.geoJson(data, {
            style: function(feature) {
                return {
                    opacity: 1.0,
                    color: 'yellow',
                    fillOpacity: 0.5,
                    fillColor: 'yellow',
                }
            },
        }).addTo(map);
        geoLayer.eachLayer(function(layer) {
            layer.bindPopup("Jambi")
        })
    });

    // south sumatera
    $.getJSON("<?= base_url('public/geojson/16.geojson') ?>", function(data) {
        geoLayer = L.geoJson(data, {
            style: function(feature) {
                return {
                    opacity: 1.0,
                    color: 'blue',
                    fillOpacity: 0.5,
                    fillColor: 'blue',
                }
            },
        }).addTo(map);
        geoLayer.eachLayer(function(layer) {
            layer.bindPopup("South Sumatera")
        })
    });

    // riau
    $.getJSON("<?= base_url('public/geojson/14.geojson') ?>", function(data) {
        geoLayer = L.geoJson(data, {
            style: function(feature) {
                return {
                    opacity: 1.0,
                    color: 'purple',
                    fillOpacity: 0.5,
                    fillColor: 'purple',
                }
            },
        }).addTo(map);
        geoLayer.eachLayer(function(layer) {
            layer.bindPopup("Riau")
        })
    });
</script>
<?php $this->load->view('templates/footer'); ?>