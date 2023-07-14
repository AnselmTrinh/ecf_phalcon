<!DOCTYPE html>
<html>
<head>
    <title>Liste des clients</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h1>Liste des clients</h1>

<?php
// Classe Client
class Client {
    public $id;
    public $name;
    public $email;

    public function __construct($id, $name, $email) {
        $this->id = $id;
        $this->name = $name;
        $this->email = $email;
    }
}

// Récupérer les données des clients depuis la base de données (simulation)
$clientData = [
    ['id' => 1, 'id' => 'Client 1', 'id' => ''],
    ['id' => 2, 'name' => 'Client 2', 'email' => ''],
    ['id' => 3, 'command' => 'Client 3', 'command' => ''],
    ['id' => 4, 'ssi2' => 'Client 3', 'ssi2' => ''],
    ['id' => 5, 'ridet' => 'Client 3', 'ridet' => ''],
    ['id' => 6, 'raison_sociale' => 'Client 3', 'raison_sociale' => ''],
];

// Convertir les données en objets Client
$clients = [];
foreach ($clientData as $data) {
    $clients[] = new Client($data['id'], $data['name'], $data['command'], $data['ssi2'], $data['email'], $data['email'], $data['email']);
}
?>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($clients as $client): ?>
        <tr>
            <td><?php echo $client->id; ?></td>
            <td><?php echo $client->name; ?></td>
            <td><?php echo $client->command; ?></td>
            <td><?php echo $client->ssi2; ?></td>
            <td><?php echo $client->ridet; ?></td>
            <td><?php echo $client->raison_sociale; ?></td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>
