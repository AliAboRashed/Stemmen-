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


    //Haal alle verkiezingen op
    $stmt = $pdo->query("SELECT * FROM verkiezingen");
    $stemgerechtigden = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Toon de resultaten
     foreach ($verkiezingen as $verkiezing) {
        echo "ID: " . $verkiezing['verkiezingID'] . "<br>";
        echo "Datum: " . $verkiezing['datum'] . "<br>";
        echo "Naam: " . $verkiezing['naam'] . "<br>";
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
