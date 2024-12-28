<?php
require('CProduct.php');
$db = new CProduct();
$products = $db->getProducts();
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Products</title>
</head>

<body>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Article</th>
                <th>Quantity</th>
                <th>Date Created</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($products as $product): ?>
                <tr data-id="<?= $product['id'] ?>">
                    <td><?= $product['product_id'] ?></td>
                    <td><?= $product['product_name'] ?></td>
                    <td><?= $product['product_price'] ?></td>
                    <td><?= $product['product_article'] ?></td>
                    <td class="quantity">
                        <button class="decrease">-</button>
                        <span><?= $product['product_quantity'] ?></span>
                        <button class="increase">+</button>
                    </td>
                    <td><?= $product['date_create'] ?></td>
                    <td>
                        <button class="hide">Скрыть</button>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>

    <script src="./assets/main.js"></script>
</body>

</html>
