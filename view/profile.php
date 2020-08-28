<?php $this->title = 'Mon profil'; ?>

<?= $this->session->show('update_password'); ?>

<h2>Profil</h2>
<div class="profil"><img src="../public/images/imgNEW1.jpg" alt="" width="100%">
    <p><?= $this->session->get('pseudo'); ?></p><br>
    <!--<p><?= $this->session->get('id'); ?></p>-->
    <a class="designale" href="../public/index.php?route=updatePassword">Modifier son mot de passe</a><br>
    <br>
    <br>
    <a class="supprime" href="../public/index.php?route=deleteAccount">Supprimer mon compte</a><br>
    <br>
    <a href="../public/index.php">Retour à l'accueil</a>
</div>
<br>