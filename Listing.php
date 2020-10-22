<?php
session_start();
function connexion_bd()
{
    try {
        $c = new PDO('mysql:host=127.0.0.1;dbname=borabora', 'root', '');
        $c->query("SET CHARACTER SET utf8");
        return $c;
    } catch (PDOException $e) {
        //vérification de la connexion
        echo "Erreur!" . $e->getMessage() . "\n";
        exit;
    }
}
    $connect = connexion_bd();
    $_SESSION['numChambre'] = $_GET['numero_chambre'];
    $reqSejours = ("SELECT Num_Sejour, Date_Arrivee, Date_Depart, Nom, Prenom FROM facture 
                    INNER JOIN sejour ON sejour.Num_Sejour = facture.num_fact
                    INNER JOIN client ON client.Num_Client = sejour.Num_Cli 
                    INNER JOIN chambre_sejour ON chambre_sejour.Num_sej = sejour.Num_Sejour                
                    WHERE NumChambre = " . $_SESSION['numChambre'] . "
                    ORDER BY Date_Arrivee DESC");
    $res = $connect->query($reqSejours);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Le Bora-Bora</title>
    <?php require_once 'include/head.php' ?>
</head>
<body>
    <?php include_once 'include/header.php' ?>
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/Facturation.css">
    <main>
<table>
    <thead>
    <tr>
        <th>Numéro de séjour</th>
        <th>Date</th>
        <th>Nom</th>
        <th>Prenom</th>
    </tr>
    </thead>
    <?php
    //boucle pour la chambre
    while ($ligne = $res->fetch()) {
        $_SESSION['numSej'] = $ligne[0];
        $Date_Arrivee = $ligne[1];
        $Date_Depart = $ligne[2];
        $_SESSION['Nom'] = $ligne[3];
        $Prenom = $ligne[4];
        ?>
        <tr>
            <td><?= $_SESSION['numSej'] ?></td>
            <td><?= $Date_Arrivee ?> AU <?= $Date_Depart ?></td>
            <td><?= $_SESSION['Nom']  ?></td>
            <td><?= $Prenom ?></td>
            <td><a href="Facturation.php">Facture</a></td>
        </tr>
        <?php } ?>
    </main>
