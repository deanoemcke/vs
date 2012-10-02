<?php

class Competition extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('competition_model');
        $this->load->model('game_model');
    }

    public function index() {

        $method = $this->input->server('REQUEST_METHOD');
        if ($method == 'POST') {
            $this->new_competition();
        }
        else if ($method == 'DELETE') {
            $this->delete_competition();
        }
        else if ($method == 'PUT') {
            $this->save_competition();
        }
        else if ($method == 'GET') {
            $this->get_competition();
        }
        else {
            show_ajax_error('unknown request method',500);
        }

    }


    public function get_competition() {

        $params = $_GET;

        try {

            if (isset($params['id'])) {
                $res = $this->competition_model->get_competition($params['id']);
            } else {
                $res = $this->competition_model->get_competitions($params);
            }
            
            $this->_render($res);
        }
        catch (Exception $e) {
            show_ajax_error($e->getMessage(), 500);
        }
    }


    public function new_competition() {

        try {

            $competition_JSON = $this->input->post('model');
            if (!$competition_JSON) {
                show_ajax_error('No competition submitted', 500);
            }
            $competition= json_decode($competition_JSON);
            if (!$competition) {
                show_ajax_error('JSON parse error when reading competition', 500);
            }

            if (isset($competition->id)) {
                unset($competition->id);
            }

            if (isset($competition->name) && $competition->name) {

                $competition_id = $this->competition_model->save_competition($competition);

                $response = array('data'=>array('id'=>$competition_id), 'status_code'=>($competition_id ? "0" : "1"));
                $this->_render($response);

            }
            else {
                show_ajax_error('Competition is missing name', 500);
            }

        }
        catch (Exception $e) {
            show_ajax_error($e->getMessage(), 500);
        }
    }


    public function save_competition() {

        try {

            $competition_JSON = $this->input->put('model');
            if (!$competition_JSON) {
                show_ajax_error('No Competition submitted', 500);
            }
            $competition= json_decode($competition_JSON);
            if (!$competition) {
                show_ajax_error('JSON parse error when reading Competition', 500);
            }

            if (!isset($competition->id)) {
                show_ajax_error('Competition is missing ID', 500);
            }

            $competition_id = $this->competition_model->save_competition($competition);

            $response = array('data'=>array('id'=>$competition_id), 'status_code'=>($competition_id ? "0" : "1"));
            $this->_render($response);

        }
        catch (Exception $e) {
            show_ajax_error($e->getMessage(), 500);
        }
    }

    public function delete_competition() {

        $competition_id = $this->input->get('id');

        try {

            if (!$competition_id) {
                show_ajax_error('No Competition ID specified', 500);
            }

            $res = $this->competition_model->delete_competition($competition_id);

            $response = array('data'=>array("deleted"=>$res), 'status_code'=>("0"));
            $this->_render($response);

        }
        catch (Exception $e) {
            show_ajax_error($e->getMessage(), 500);
        }
    }


    private function _render($list) {

        $data = array();
        $data['output'] = $list;

        $this->load->view('vs_ajax', $data);
    }


}
