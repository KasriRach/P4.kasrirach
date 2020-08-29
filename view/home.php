<?php $this->title = 'Accueil'; ?>

<div class="container-slider">
    <div id="slider">
        <div class="img-slide"><img src="../public/images/3b.jpg" alt=""></div>
        <div class="img-slide"><img src="../public/images/2b.jpg" alt=""></div>
        <div class="img-slide"><img src="../public/images/1b.jpg" alt=""></div>
    </div>
</div>
<div class="title">
    <h2 class="title-book">Billet simple pour l'Alaska</h2>
    <h3>Un Roman écrit par Jean Forteroche.</h3>
</div>

<section id="bio">
    <div class="adm">
        <?= $this->session->show('add_article'); ?>
        <?= $this->session->show('edit_article'); ?>
        <?= $this->session->show('delete_article'); ?>
        <?= $this->session->show('add_comment'); ?>
        <?= $this->session->show('flag_comment'); ?>
        <?= $this->session->show('delete_comment'); ?>
        <?= $this->session->show('register'); ?>
        <?= $this->session->show('login'); ?>
        <?= $this->session->show('logout'); ?>
        <?= $this->session->show('delete_account'); ?>
  

    </div>

    <h2>Jean Forteroche</h2>
    <div class="head-bio">
        <img src="../public/images/homme.jpg" alt="Jean Forteroche">

    </div>

    <div class="text-bio">
        <p>De roman en roman, Jean Forteroche a noué un lien unique avec les lecteurs.

            Né en 1974 à Antibes, il se prend de passion pour la littérature très jeune,
            consacrant tout son temps libre à dévorer des livres dans la bibliothèque
            municipale où travaille sa mère. C’est grâce à un concours de nouvelles proposé
            par son professeur de français qu’il découvre le bonheur de l’écriture.
            À compter de ce jour, et jusqu’à aujourd’hui, il ne cessera plus de noircir des carnets.
        </p>
        <br>
        <p>
            Ses études, son long voyage aux États-Unis, ses rencontres, tout vient enrichir son imagination
            et ses projets de roman. Diplômé de sciences économiques, il devient professeur dans l’est
            puis le sud de la France.
            En 2001, il publie son premier roman, Skidamarink, mais c’est le suivant, Et Après… qui consacre
            sa rencontre avec le public. Cette histoire d’amour et de suspense soulignée de surnaturel lui
            vaut un succès fulgurant qui ne se démentira plus.
            Traduits en quarante langues, plusieurs fois adaptés au cinéma, tous ses livres connaissent un
            immense succès en France et dans le monde. Pour les lecteurs, chaque nouveau roman de Jean
            Forteroche
            est désormais un événement et un rendez-vous.
        </p>
    </div>
    <div class="last-chapter">
        <h2>Derniers chapitres</h2>
    </div>
</section>

<?php
foreach ($articles as $article) {
?>
<div class="news"><img src="../public/images/imgNEW1.jpg" alt="" width="100%">

    <h3>
        <a
            href="../public/index.php?route=article&articleId=<?= htmlspecialchars($article->getId()); ?>"><?= htmlspecialchars($article->getTitle()); ?></a>
    </h3>
    <p><?php $string = nl2br(htmlspecialchars_decode($article->getContent()));

            // strip tags to avoid breaking any html
            $string = strip_tags($string);

            if (strlen($string) > 50) {

                // truncate string
                $stringCut = substr($string, 0, 90);
                $endPoint = strrpos($stringCut, ' ');

                //if the string doesn't contain any space then it will cut without Word basis.
                $string = $endPoint ? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
            }
            echo $string . '...';
            ?></p>
    <p><?= htmlspecialchars($article->getAuthor()); ?></p>
    <p>Créé le : <?= htmlspecialchars($article->getCreatedAt()); ?></p>
</div>

<br>
<?php
}
?>