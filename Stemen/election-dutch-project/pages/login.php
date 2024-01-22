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
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Query om de gebruikersgegevens uit de database te halen
    $result = $conn->query("SELECT * FROM users WHERE username = '$username'");

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        // Vergelijk het opgegeven wachtwoord met het gehashte wachtwoord in de database
        if (password_verify($password, $row["password"])) {
            // Inloggen geslaagd
            $_SESSION["user_id"] = $row["id"];
            $_SESSION["username"] = $username;
            header("Location: dashboard.php");
            exit();
        } else {
            echo "Ongeldige gebruikersnaam of wachtwoord";
        }
    } else {
        echo "Ongeldige gebruikersnaam of wachtwoord";
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
