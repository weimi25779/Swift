<?php
$user = 'root';
$password = 'root';
$db = ‘iii’;
$host = 'localhost';
$port = 3306;

$mysqli = new mysqli($host,$user,$password,$db);
$mysqli->query("SET NAMES UTF-8");

$account = $_GET['account']; $passwd = $_GET['passwd'];
$sql = "INSERT INTO member (account,passwd) VALUES (?, ?)";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param('ss', $account, $passwd);

if($stmt->execute()) {
    echo 'OK';
}else{
    echo 'XX';
}

?>