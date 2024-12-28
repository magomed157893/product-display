<?php

class CProduct
{
    private $connection;

    public function __construct()
    {
        $config = [
            'host'    => 'db',
            'port'    => 3306,
            'dbname'  => 'store',
            'charset' => 'utf8mb4'
        ];

        $dsn = 'mysql:' . http_build_query($config, '', ';');

        $username = 'root';
        $password = 'root';

        $options = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false
        ];

        $this->connection = new PDO($dsn, $username, $password, $options);
    }

    public function getProducts($limit = 10)
    {
        $stmt = $this->connection->prepare('SELECT * FROM Products WHERE is_hidden = FALSE ORDER BY date_create DESC LIMIT ?');
        $stmt->bindValue(1, $limit, PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetchAll();
    }

    public function hideProduct($id)
    {
        $stmt = $this->connection->prepare('UPDATE Products SET is_hidden = TRUE WHERE id = ?');
        $stmt->bindValue(1, $id, PDO::PARAM_INT);
        $stmt->execute();
    }

    public function updateQuantity($id, $quantity)
    {
        $stmt = $this->connection->prepare('UPDATE Products SET product_quantity = ? WHERE id = ?');
        $stmt->bindValue(1, $quantity, PDO::PARAM_INT);
        $stmt->bindValue(2, $id, PDO::PARAM_INT);
        $stmt->execute();
    }
}
