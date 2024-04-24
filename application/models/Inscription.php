<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Inscription extends CI_Model {
    public function subscribe($connection, $email, $mdp) {
        $query="insert into utilisateurs values(null, '%s', '%s')";
        $query=sprintf($query, $this->db->escape($email),$this->db->escape($mdp));

        $this->db->query($query);
    }

} ?>