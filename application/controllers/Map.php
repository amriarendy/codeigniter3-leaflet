<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Map extends CI_Controller
{

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/userguide3/general/urls.html
     */
    public function index()
    {
        $this->load->view('map/index');
    }

    public function marker()
    {
        $this->load->view('map/marker');
    }

    public function polyline()
    {
        $this->load->view('map/polyline');
    }

    public function routing()
    {
        $this->load->view('map/routing');
    }

    public function circle()
    {
        $this->load->view('map/circle');
    }

    public function coordinate()
    {
        $this->load->view('map/coordinate');
    }

    public function markdb()
    {
        $this->load->view('map/mark-db');
    }

    public function circledb()
    {
        $this->load->view('map/circle-db');
    }

    public function clusterdb()
    {
        $this->load->view('map/cluster-db');
    }

    public function heat()
    {
        $this->load->view('map/heat');
    }

    public function search_control()
    {
        $this->load->view('map/search-control');
    }

    public function geojson()
    {
        $this->load->view('map/geo-json');
    }

    public function base()
    {
        $this->load->view('map/base');
    }

    public function drawer()
    {
        $this->load->view('map/drawer');
    }
}
