<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MapModel extends CI_Controller
{
    public function get()
    {
        $this->db->select('*');
        $this->db->from('maps');
        return $this->db->get();
    }
}
