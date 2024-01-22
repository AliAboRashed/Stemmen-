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


    //Haal alle verkiesbaren op
    $stmt = $pdo->query("SELECT * FROM verkiesbaren");
    $stemgerechtigden = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Toon de resultaten
    foreach ($verkiesbaren as $verkiesbare) {
        echo "ID: " . $verkiesbare['verkiesbareID'] . "<br>";
        echo "Naam: " . $verkiesbare['naam'] . "<br>";
        echo "Partij ID: " . $verkiesbare['partijID'] . "<br>";
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
