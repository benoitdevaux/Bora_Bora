<header>
    <link rel="stylesheet" type="text/css" media="screen" href="/css/style.css">
  <div>
    <div>
      <h1 class="text-3a"><a href="/">Le BORA<span>-BORA</span></a></h1>
      <nav>
        <ul class="menu">
          <li<?php echo $_SERVER['SCRIPT_NAME'] == 'index.php' ? ' class="current"' : '' ?>>
            <a href="index.php">Accueil</a>
          </li>
          <li<?php echo $_SERVER['SCRIPT_NAME'] == 'a-propos.php' ? ' class="current"' : '' ?>>
            <a href="a-propos.php">A propos</a>
          </li>
          <li<?php echo $_SERVER['SCRIPT_NAME'] == 'nos-prestations.php' ? ' class="current"' : '' ?>>
            <a href="nos-prestations.php">Nos prestations</a>
          </li>
          <li<?php echo $_SERVER['SCRIPT_NAME'] == 'nos-tarifs.php' ? ' class="current"' : '' ?>>
            <a href="nos-tarifs.php">Nos tarifs</a>
          </li>
          <li<?php echo $_SERVER['SCRIPT_NAME'] == 'products.php' ? ' class="current"' : '' ?>>
            <a href="#">Calendrier</a>
          </li>
          <li<?php echo $_SERVER['SCRIPT_NAME'] == 'contacts.php' ? ' class="current"' : '' ?>>
            <a href="#">Contacts</a>
          </li>
            <li<?php echo $_SERVER['SCRIPT_NAME'] == 'facture.php' ? ' class="current"' : '' ?>>
            <a href="facture.php">Espace Personnel</a>
            </li>
        </ul>
      </nav>
      <div class="clear"></div>
    </div>
  </div>
</header>