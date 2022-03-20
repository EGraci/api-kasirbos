<?php
include("config.php");
if($_SERVER['REQUEST_METHOD'] === 'GET'){
    if(isset($_GET['id'])){
        echo $db->get_barang($_GET['id']);
    }else{
		$hasil = array();
        $i = 0;
        $query = $db->all_barang();
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