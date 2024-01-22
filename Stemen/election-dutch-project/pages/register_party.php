<?php
require_once '';


// Database-inloggegevens
$dbHost = 'localhost';
$dbName = 'tweede_kamer';
$dbUser = 'root';
$dbPass = '';

// Maak een PDO-verbinding
try {
    // Maak een PDO-verbinding
    $pdo = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Voer een query uit om gegevens op te halen uit de 'partijen' tabel
    $stmt = $pdo->query("SELECT * FROM partijen");

    // Haal alle rijen op
    $partijen = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Toon de resultaten
    foreach ($partijen as $partij) {
        echo "Partij ID: " . $partij['partijID'] . "<br>";
        echo "Naam: " . $partij['partijNaam'] . "<br>";
        echo "<hr>";
    }
} catch (PDOException $e) {
    die("Fout bij het verbinden met de database: " . $e->getMessage());
}

// Sluit de databaseverbinding
$conn->close();

function clean_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>
