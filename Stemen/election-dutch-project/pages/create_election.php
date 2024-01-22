<?php
require_once '';


// Database-inloggegevens
$dbHost = 'localhost';
$dbName = 'tweede_kamer';
$dbUser = 'root';
$dbPass = '';

// Maak een PDO-verbinding
try {
    $pdo = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Fout bij het verbinden met de database: " . $e->getMessage());
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $verkiezingsoort = clean_input($_POST["verkiezingsoort"]);
    $datum = clean_input($_POST["datum"]);

    // Voeg een nieuwe verkiezing toe
    $sql = "INSERT INTO Verkiezingen (Soort, Datum) VALUES ('$verkiezingsoort', '$datum')";
    if ($conn->query($sql) === TRUE) {
        echo "Verkiezing aangemaakt!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
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
