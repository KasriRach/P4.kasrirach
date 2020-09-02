<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title><?= $title ?></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../public/css/styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div id="container">
        <section id="slideshow">
        </section>
        <header>
            <nav id="menu">
                <ul>
                    <li class="billet"><a href="index.php"> Billet simple pour l'Alaska</a></li>
                    <li class="billet1"><a href="index.php"> Accueil</a></li>
                    <li class="billets"><a href="../public/index.php?route=chapitres">Chapitres</a></li>
                    <?php
                    if ($this->session->get('pseudo')) {

                    ?>

                    <?php if ($this->session->get('role') === 'admin') { ?>
                    <li class="navc"><a href="../public/index.php?route=administration">Administration</a></li>
                    <?php } ?>
                    
                    <?php
                    } else {
                    ?>

                    <?php
                    }
                    ?>

                </ul>
            </nav>
            <div class="btn-navigation">
                <div class="barre"></div>
                <div class="barre"></div>
                <div class="barre"></div>
            </div>

            <div class="navigation">
                <ul>
                    <ul>
                        <li class="billet"><a href="index.php">Alaska</a></li>
                        <li class="billet1"><a href="index.php"> Accueil</a></li>
                        <?php
                        if ($this->session->get('pseudo')) {

                        ?>
                        <li><a href="../public/index.php?route=logout">Déconnexion</a></li>
                        <li><a href="../public/index.php?route=profile">Profil</a></li>
                        <?php if ($this->session->get('role') === 'admin') { ?>
                        <li><a href="../public/index.php?route=administration">Administration</a></li>
                        <?php } ?>
                        <?php echo  "  Bienvenue !  "; ?>
                        <?php
                        } else {
                        ?>

                        <li><a href="../public/index.php?route=register">Inscription</a></li>
                        <li><a href="../public/index.php?route=login">Connexion</a></li>

                        <?php
                        }
                        ?>

                    </ul>
                </ul>
            </div>
        </header>

        <div class="content">
            <?= $content ?>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-1.11.3.js"
        integrity="sha256-IGWuzKD7mwVnNY01LtXxq3L84Tm/RJtNCYBfXZw3Je0=" crossorigin="anonymous"></script>
    <script src="../public/js/app.js"></script>
    <!-- <script src="slider.js"></script> -->
</body>
<footer>
    <p>Copyright © Rachid Kasri - 2020. Tous droits réservés</p>
</footer>

</html>