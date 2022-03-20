<?php
class database{
	function db() {
		static $conn;
		if ($conn===NULL){ 
			$conn = mysqli_connect ("localhost", "root", "", "db_kasirbos");
		}
		return $conn;
	}
	function db_close(){
		$conn = $this->db();
		mysqli_close($conn);
		return;
	}
	function all_barang() {
		$conn = $this->db();
		$data = $conn->query("select id_barang, nama_barang, qty, status from barang");
		return $data;
	}
	function get_barang($id){
		$conn = $this->db();
		$data = $conn->query("select * from barang WHERE id_barang = '$id'");
		$data = $data->fetch_assoc();
		return json_encode($data);
	}
	function all_menu() {
		$conn = $this->db();
		$data = $conn->query("select * from menu");
		return $data;
	}
	function get_menu($id){
		$conn = $this->db();
		$data = $conn->query("select * from menu WHERE id_menu = '$id'");
		$data = $data->fetch_assoc();
		return json_encode($data);
	}
	function all_akun() {
		$conn = $this->db();
		$data = $conn->query("select id_user, username, level from user where level != 1");
		return $data;
	}
	function login_akun($user, $pwd) {
		$conn = $this->db();
		$user    = mysqli_real_escape_string($conn, $user);
		$pwd    = md5(mysqli_real_escape_string($conn, $pwd));
		$data = $conn->query("select id_user, username, level from user where username = '$user' and password = '$pwd'");
		$data = $data->fetch_assoc();
		return json_encode($data);
	}
} 

$db  = new database();