<?php

require('../CProduct.php');
$db = new CProduct();

$response = json_decode(file_get_contents("php://input"), true);
$db->updateQuantity(intval($response['id']), intval($response['quantity']));
