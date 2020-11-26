<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Le Bora-Bora</title>
    <?php require_once 'include/head.php' ?>
</head>
<body>
<?php include_once 'include/header.php' ?>


<link rel="stylesheet" type="text/css" media="screen" href="../borabora/css/Facturation.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">

<!--==============================content=================================-->
<div class="l-banner">
    <img src="img/ml.jpg" class="img1" alt="img"/>
</div>

<?php
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
//Cette procédure vérifie la requete SQL
function verif_erreur_mysql($var, $co)
{
    if (!$var) {
        $err = $co->errorInfo();
        echo "---------------------\nErreur SQL : \n" . $err[2] . "\n";
        echo "Vérifiez votre code !\n---------------------\n";
        exit;
    }
}


//Connexion à la base de données


//Début du programme
////////////////////////////////////////////////////////
//Connexion à la base de données


//récupération des dates de séjour
$req = ("SELECT sejour.Date_Arrivee, sejour.Date_Depart, chambre_cate.Libelle,(sejour.Date_Depart - sejour.Date_Arrivee), chambre_cate.Prix, (sejour.Date_Depart - sejour.Date_Arrivee)*chambre_cate.Prix, Nom 
  FROM facture 
      INNER JOIN sejour 
        ON sejour.Num_Sejour = facture.Num_Sej 
      INNER JOIN chambre_sejour 
        ON sejour .Num_Sejour = chambre_sejour.Num_sej 
      INNER JOIN chambre 
        ON chambre.Num_Chambre = chambre_sejour.NumChambre 
      INNER JOIN chambre_cate 
        ON chambre_cate.Id_Cat = chambre.Categorie
      INNER join client 
        ON sejour.num_cli = client.num_client
WHERE Num_Sejour = " . $_POST['numSej']);

$res = $connect->query($req);
verif_erreur_mysql($res, $connect);

//récupération des soin spa
$req1 = ("SELECT spa_facture.Date_Spa, `Lib_Soin`, spa_facture.Quantite_Spa, spa.Prix, spa.Prix*spa_facture.Quantite_Spa 
  FROM facture 
      INNER JOIN sejour 
        ON facture.Num_Sej = sejour.Num_Sejour 
      INNER JOIN spa_sejour 
        ON sejour.Num_Sejour = spa_sejour.Num_Sej 
      INNER JOIN spa_facture 
        ON spa_facture.NumFactureSpa = spa_sejour.NumFactSpa
      INNER JOIN spa_concerne 
        ON spa_concerne.Num_FactSpa = spa_facture.NumFactureSpa
      INNER JOIN spa 
        ON spa_concerne.Num_soinSpa = spa.Num_Soin 
      INNER join client 
        ON num_cli = num_client
      Inner Join chambre_sejour 
        ON Num_Sejour= chambre_sejour.Num_sej
WHERE Num_Sejour = " . $_POST['numSej']);

$res_spa = $connect->query($req1);
verif_erreur_mysql($res_spa, $connect);


//Requête récupération brasserie
$req2 = ("SELECT brasserie_facture.date, lib_plat, brasserie_facture.Quantite, brasserie.prix_plat, brasserie.prix_plat*brasserie_facture.Quantite 
  FROM facture
      INNER JOIN sejour 
        ON facture.Num_Sej = sejour.Num_Sejour
      INNER JOIN brasserie_sejour 
        ON sejour.Num_Sejour = brasserie_sejour.Num_Sej
      INNER JOIN brasserie_facture 
        ON brasserie_facture.Num_Conso_Brasserie = brasserie_sejour.Num_Conso
      INNER JOIN brasserie_concerne 
        ON brasserie_concerne.Num_Conso = brasserie_facture.Num_Conso_Brasserie
      INNER JOIN brasserie 
        ON brasserie.num_plat = brasserie_concerne.NumPlat
      Inner Join chambre_sejour 
        ON Num_Sejour= chambre_sejour.Num_sej
WHERE Num_Sejour = " . $_POST['numSej']);


$res_brass = $connect->query($req2);
verif_erreur_mysql($res_brass, $connect);


//Requête récupération bar 
$req3 = ("SELECT bar_facture.Date, Lib_cons, bar_facture.Quantite, consommation.prix_cons, consommation.prix_cons*bar_facture.Quantite 
  FROM facture
      INNER JOIN sejour 
        ON facture.Num_Sej = sejour.Num_Sejour
      INNER JOIN bar_sejour 
        ON sejour.Num_Sejour = bar_sejour.Num_Sej
      INNER JOIN bar_facture 
        ON bar_facture.Num_Conso_Bar = bar_sejour.Num_Cons
      INNER JOIN bar_concerne 
        ON bar_concerne.Num_Cons_Bar = bar_facture.Num_Conso_Bar
      INNER JOIN consommation 
        ON consommation.num_cons = bar_concerne.Num_Conso
      Inner Join chambre_sejour 
        ON Num_Sejour = chambre_sejour.Num_sej
WHERE Num_Sejour = " . $_POST['numSej']);


$res_bar = $connect->query($req3);
verif_erreur_mysql($res_bar, $connect);

$req4 = ("SELECT nom FROM sejour
    INNER JOIN client ON sejour.num_cli = client.Num_Client
    WHERE Num_Sejour = ". $_POST['numSej']);

$res_client = $connect->query($req4);
verif_erreur_mysql($res_client, $connect);


/////////////////////////////////////////////////////////////

?>
<h2 id='HOTEL de Bora-Bora'>HOTEL de Bora-Bora</h2>
<br>
<?php 
while($ligne = $res_client->fetch()) {
    $nom = $ligne[0];
} ?>
<h3> Mr/Mme : <?= $nom ?></h3>
<h3>Chambre : <?= $_SESSION["numChambre"] ?></h3>

<table>
    <thead>
    <tr>
        <th>Date</th>
        <th>Prestation</th>
        <th>Nbre</th>
        <th>PU</th>
        <th>Prix en FCP</th>
    </tr>
    </thead>
    <?php
    //boucle pour la chambre
    while ($ligne = $res->fetch()) {
        $Date_Arrivee = $ligne[0];
        $Date_Depart = $ligne[1];
        $Libelle = $ligne[2];
        $Nbre_place = $ligne[3];
        $Prix = $ligne[4];
        $prix_chambre = $ligne[5];
        ?>
        <tr>
            <td><?= $Date_Arrivee ?> AU <?= $Date_Depart ?></td>
            <td><?= $Libelle ?></td>
            <td><?= $Nbre_place ?></td>
            <td><?= $Prix ?></td>
            <td><?= $prix_chambre ?></td>
        </tr>
        <?php
    }
    //boucle pour le spa
    $Prix_spa = 0;
    while ($ligne = $res_spa->fetch()) {
        $Date_Spa = $ligne[0];
        $Lib_Soin = $ligne[1];
        $Quantite_Spa = $ligne[2];
        $Prix_PU_spa = $ligne[3];
        $Prix_spa = $ligne[4];

        ?>
        <tr>
            <td><?= $Date_Spa ?></td>
            <td><?= $Lib_Soin ?></td>
            <td><?= $Quantite_Spa ?></td>
            <td><?= $Prix_PU_spa ?></td>
            <td><?= $Prix_spa ?></td>
        </tr>
        <?php
    }
    //boucle pour la brasserie
    $total_brass = 0;
    $prix_plat = 0;
    while ($ligne = $res_brass->fetch()) {
        $date = $ligne[0];
        $lib_plat = $ligne[1];
        $Quantite = $ligne[2];
        $prix_PU_brass = $ligne[3];
        $prix_plat = $ligne[4];
        $total_brass = $total_brass + $ligne[4];

        ?>
        <tr>
            <td><?= $date ?></td>
            <td><?= $lib_plat ?></td>
            <td><?= $Quantite ?></td>
            <td><?= $prix_PU_brass ?></td>
            <td><?= $prix_plat ?></td>
        </tr>
        <?php
    }
    //boucle pour le bar
    $total_bar = 0;
    $prix_cons = 0;
    while ($ligne = $res_bar->fetch()) {
        $Date = $ligne[0];
        $Lib_cons = $ligne[1];
        $Quantite = $ligne[2];
        $prix_PU_bar = $ligne[3];
        $prix_cons = $ligne[4];
        $total_bar = $total_bar + $ligne[4];
        ?>
        <tr>
            <td><?= $Date ?></td>
            <td><?= $Lib_cons ?></td>
            <td><?= $Quantite ?></td>
            <td><?= $prix_PU_bar ?></td>
            <td><?= $prix_cons ?></td>
        </tr>
        <?php
    }
    ?>
</table>
<br>

<?php

$total = $Prix_spa + $prix_cons + $prix_chambre;
?>

<h3 class='total'>Total : <?= $total ?></h3>
<br>

<!-- Code pour le bouton imprimer-->
<script language="JavaScript" type="text/JavaScript">
    function imprimer(divID) {
        var printContents = document.getElementById(divID).innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
</script>

<div id="section_a_imprimer">
    <button><a href="Facturation.php" onclick="window.print()">Imprimer</a></button>
</div>

<?php
//Fermeture du curseur :
$res->closeCursor();

unset($connex);
?>

<!--==============================footer=================================-->
<?php include_once 'include/footer.php' ?>

</body>
</html>