<?php
class Competition_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}

	public function get_competition($id = FALSE)
	{
		if ($id === FALSE)
		{
			return FALSE;
		}
		
		$query = $this->db->get_where('competition', array('id' => $id));
		return $query->row_array();
	}
}