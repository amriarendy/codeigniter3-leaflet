<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Map extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('MapModel');
    }

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

    public function polygon()
    {
        $this->load->view('map/polygon');
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
        $data = [
            'maps' => $this->MapModel->get()->result(),
        ];
        $this->load->view('map/markdb', $data);
    }

    public function circledb()
    {
        $data = [
            'maps' => $this->MapModel->get()->result(),
        ];
        $this->load->view('map/circledb', $data);
    }

    public function clusterdb()
    {
        $data = [
            'maps' => $this->MapModel->get()->result(),
        ];
        $this->load->view('map/clusterdb', $data);
    }

    public function heat()
    {
        $data = [
            'maps' => $this->MapModel->get()->result(),
        ];
        $this->load->view('map/heat', $data);
    }

    public function search_control()
    {
        $data = [
            'maps' => $this->MapModel->get()->result(),
        ];
        $this->load->view('map/search-control', $data);
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
