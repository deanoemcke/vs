<?php
class Game_model extends CI_Model {

	private $game_fields = ['date', 'competition_id', 'winner_id'];
	private $score_fields = ['game_id', 'competitor_id', 'detail_id', 'score'];

	public function __construct()
	{
		$this->load->database();
	}

	public function get_game($id = FALSE) {

		if ($id === FALSE) {
			return FALSE;
		}
		
		$this->db->from('game');
		$this->db->join('detail', 'game.detail_id = detail.id');
		$this->db->where(array('game.id' => $id));

		$query = $this->db->get();
		//var_dump($this->db->last_query());
		return $query->row_array();
	}

	public function get_games($params = FALSE) {

		$this->db->from('game');
		$this->db->join('score', 'game.id = score.game_id');
		$this->db->join('detail', 'score.detail_id = detail.id');
		$this->db->join('competitor', 'score.competitor_id = competitor.id');

		foreach ($params as $key => $value) {
			$this->db->where('game.'.$key, $value);
		}

		$query = $this->db->get();
		return $query->result();
	}

	public function save_game($new_data = FALSE) {

		if ($new_data === FALSE) {
			return FALSE;
		}

		//filter game data
		$new_game = $this->_filter_game_fields($new_data);

		//filter scores data
		$new_scores = array();
		if (isset($new_data->scores)) {

			foreach ($new_data->scores as $score_data) {
				$new_score = $this->_filter_score_fields($score_data);
				array_push($new_scores, $new_score);
			}
		}

		//if we're doing an update
        if (isset($new_data->id) && $new_data->id !== false) {

        	//TODO: make sure we delete from score table based on game id
/*            $this->db->where('game.id', $id);
            $this->db->update('game', $new_data);
            return$new_data->id;
*/
            return "update to be implemented!";

        } else {

            $this->db->insert('game', $new_game);
        	$game_id = $this->db->insert_id();

        	foreach ($new_scores as $new_score) {
        		$new_score->game_id = $game_id;
        		$this->db->insert('score', $new_score);
        	}
            return $game_id;
        }
	}

    public function delete_game($id = FALSE)
	{
		if ($id === FALSE)
		{
			return FALSE;
		}
		
        $this->db->delete('game', array('game.id' => $id)); 
        return TRUE;
    }


    private function _filter_game_fields($game_data) {

    	$new_game = new stdClass();

        foreach($game_data as $key => $value){
            if(in_array($key, $this->game_fields)){
                $new_game->$key = $value;
            }
        }
		return $new_game;
    }

    private function _filter_score_fields($score_data) {

		$new_score = new stdClass();
	    foreach($score_data as $key => $value){
            if(in_array($key, $this->score_fields)){
                $new_score->$key = $value;
            }
        }
		return $new_score;
    }
}