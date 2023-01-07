<?php
require "layout/head.php";
require "include/conn.php";
$sql = 'SELECT id_alternative,name FROM saw_alternatives';
$result = $db->query($sql);
$i = 0;
while ($row = $result->fetch_object()) {
}
$result->free();
?>