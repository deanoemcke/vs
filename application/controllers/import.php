<?php

class Import extends CI_Controller {

	public function __construct() {

		parent::__construct();
	    $this->load->library('csv_parser_tool');
        $this->load->model('game_model');
	}

	public function index() {


        $filecsv = file_get_contents('C:\Users\dean\Downloads\scoresheet.csv');
	    $data = $this->csv_parser_tool->parse_csv($filecsv);
	    $header = true;

	    foreach ($data as $row) {

	    	if ($header) {
	    		$header = FALSE;
	    		continue;
	    	}

	    	$new_game = new stdClass();
	    	$new_game->date = date('Y-m-d', $this->_uk_strtotime($row['date']));

	    	$new_game->competition_id = 1;

	    	if ($row['winner name'] == 'dean') {
	    		$new_game->winner_id = 1;
	    	} else {
	    		$new_game->winner_id = 2;
	    	}

	    	$new_score_a = new stdClass();
	    	$new_score_a->competitor_id = 1;
	    	$new_score_a->score = $row['dean points'];

	    	if ($row['dean team'] == 'yellow') {
	    		$new_score_a->detail_id = 1;
	    	} else {
	    		$new_score_a->detail_id = 2;
	    	}

	    	$new_score_b = new stdClass();
	    	$new_score_b->competitor_id = 2;
	    	$new_score_b->score = $row['liam points'];

	    	if ($row['liam team'] == 'yellow') {
	    		$new_score_b->detail_id = 1;
	    	} else {
	    		$new_score_b->detail_id = 2;
	    	}

	    	$new_game->scores = [$new_score_a, $new_score_b];
	    	$result = $this->game_model->save_game($new_game);

	    	//echo "attempting to save: ".print_r($new_game, true)."<br />";
	    }
	}

	private function _uk_strtotime($str) {
	    return strtotime(preg_replace("/^([0-9]{1,2})[\/\. -]+([0-9]{1,2})[\/\. -]+([0-9]{1,4})/", "\\2/\\1/\\3", $str));
	}
}