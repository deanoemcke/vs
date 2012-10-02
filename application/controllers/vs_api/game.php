<?php

class Game extends CI_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('game_model');
    }

    public function index() {

        $method = $this->input->server('REQUEST_METHOD');
        if ($method == 'POST') {
            $this->new_game();
        }
        else if ($method == 'DELETE') {
            $this->delete_game();
        }
        else if ($method == 'PUT') {
            $this->save_game();
        }
        else if ($method == 'GET') {
            $this->get_game();
        }
        else {
            show_ajax_error('unknown request method',500);
        }

    }

    public function get_game() {

        $params = $_GET;

        try {

            if (isset($params['id'])) {
                $res = $this->game_model->get_game($params['id']);
            } else {
                $res = $this->game_model->get_games($params);
            }

            $this->_render($res);
        }
        catch (Exception $e) {
            show_ajax_error($e->getMessage(), 500);
        }
    }


    public function new_game() {

        try {

            $game_JSON = $this->input->post('model');
            if (!$game_JSON) {
                show_ajax_error('No game submitted', 500);
            }
            $game= json_decode($game_JSON);
            if (!$game) {
                show_ajax_error('JSON parse error when reading game', 500);
            }

            if (isset($game->id)) {
                unset($game->id);
            }

            if (isset($game->name) && $game->name) {

                $game_id = $this->game_model->save_game($game);

                $response = array('data'=>array('id'=>$game_id), 'status_code'=>($game_id ? "0" : "1"));
                $this->_render($response);

            }
            else {
                show_ajax_error('Game is missing name', 500);
            }

        }
        catch (Exception $e) {
            show_ajax_error($e->getMessage(), 500);
        }
    }


    public function save_game() {

        try {

            $game_JSON = $this->input->put('model');
            if (!$game_JSON) {
                show_ajax_error('No Game submitted', 500);
            }
            $game= json_decode($game_JSON);
            if (!$game) {
                show_ajax_error('JSON parse error when reading Game', 500);
            }

            if (!isset($game->id)) {
                show_ajax_error('Game is missing ID', 500);
            }

            $game_id = $this->game_model->save_game($game);

            $response = array('data'=>array('id'=>$game_id), 'status_code'=>($game_id ? "0" : "1"));
            $this->_render($response);

        }
        catch (Exception $e) {
            show_ajax_error($e->getMessage(), 500);
        }
    }

    public function delete_game() {

        $game_id = $this->input->get('id');

        try {

            if (!$game_id) {
                show_ajax_error('No Game ID specified', 500);
            }

            $res = $this->game_model->delete_game($game_id);

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
