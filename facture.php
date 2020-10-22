<?php $racine = $_SERVER['DOCUMENT_ROOT'] ?><!DOCTYPE html>
<html lang="fr">
<head>
    <title>Connexion</title>
    <?php require_once 'include/head.php' ?>
</head>
<link rel="stylesheet" type="text/css" media="screen" href="css/Connexion.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">

<!--==============================content=================================-->

<body>

<form action='Listing.php' class='login-form' method='GET'>
    <h1>Entrez le numéro de chambre</h1>
    <div class="txtb">
        <label>
            <input type='text' name="numero_chambre" placeholder="Numéro de la chambre"/>
        </label>
    </div>
    <button class="o-form__button" type="submit" name="button">Envoyer</button>
</form>
<?php

if (isset($_GET['Num_Chambre'])) {

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

    //preparation de la requete
    //Début du programme
    ////////////////////////////////////////////////////////
    //Connexion à la base de données
    $connex = connexion_bd();


    //Fermeture du curseur :
    $res->closeCursor();

    unset($connex);
}

?>
</body>

</html>