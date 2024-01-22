<?php
// Database-inloggegevens
$dbHost = 'localhost';
$dbName = 'tweede_kamer';
$dbUser = 'root';
$dbPass = '';

try {
    // Maak een PDO-verbinding
    $pdo = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


    //Haal alle stemgerechtigden op
    $stmt = $pdo->query("SELECT * FROM stemgerechtigden");
    $stemgerechtigden = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Toon de resultaten
    foreach ($stemgerechtigden as $stemgerechtigde) {
        echo "ID: " . $stemgerechtigde['stemgerechtigdeID'] . "<br>";
        echo "Naam: " . $stemgerechtigde['stemgerechtigdeNaam'] . "<br>";
        echo "Geboortedatum: " . $stemgerechtigde['geboortedatum'] . "<br>";
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
