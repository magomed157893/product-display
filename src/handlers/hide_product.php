<?php

require('../CProduct.php');
$db = new CProduct();

$response = json_decode(file_get_contents("php://input"), true);
$db->hideProduct(intval($response['id']));
