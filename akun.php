<?php
include("config.php");
if($_SERVER['REQUEST_METHOD'] === 'GET'){
    if(isset($_GET['user'])&&isset($_GET['pass'])){
        echo $db->login_akun($_GET['user'], $_GET['pass']);
    }else{
		$hasil = array();
        $i = 0;
        $query = $db->all_akun();
		while($data = $query->fetch_assoc()){
            $hasil[$i] = $data;
            $i++;
        }
        echo json_encode($hasil);
    }
}else if($_SERVER['REQUEST_METHOD'] === 'POST'){
    // post
}else if($_SERVER['REQUEST_METHOD'] === 'DELETE'){
    parse_str(file_get_contents('php://input'), $_DELETE);
    // DELETE $_DELETE[]
}else if($_SERVER['REQUEST_METHOD'] === 'PUT'){
    parse_str(file_get_contents('php://input'), $_PUT);
    // PUT => $_PUT[] 
}
$db->db_close();
?>