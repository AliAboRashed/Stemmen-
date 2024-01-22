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

 // Controleer of het formulier is ingediend
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        // Ontvang de geselecteerde verkiesbaren
        $verkiesbareIDs = $_POST["verkiesbareIDs"];

// Voeg elke stem toe aan de database
        $verkiezingID = 1;  
        $stemgerechtigdeID = $_SESSION["user_id"];

        foreach ($verkiesbareids as $verkiesbareid) {
            $stmt = $pdo->prepare("INSERT INTO stemmen (verkiezingid, verkiesbareid, stemgerechtigdeid, stemdatum) VALUES (?, ?, ?, ?)");
            $stmt->execute([$verkiezingid, $verkiesbareid, $stemgerechtigdeID, $stemdatum]);
        } echo "Stemmen succesvol toegevoegd!";
    } else {
        echo "Ongeldige aanvraag.";
         }
} catch (PDOException $e) {
    die("Fout bij het verbinden met de database: " . $e->getMessage());
}
function clean_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}