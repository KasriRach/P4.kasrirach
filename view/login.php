<?php $this->title = "Connexion"; ?>

<div class="login">
    <h1>Connexion</h1>

    <form method="post" action="../public/index.php?route=login">
        <br>
        <input type="text" id="pseudo" name="pseudo" placeholder="Pseudo" required
            value="<?= isset($post) ? htmlspecialchars($post->get('pseudo')): ''; ?>"><br>
        <?= isset($errors['pseudo']) ? $errors['pseudo'] : ''; ?>
        <br>

        <input type="password" id="password" name="password" placeholder="Mot de passe" required><br>
        <?= isset($errors['password']) ? $errors['password'] : ''; ?><br>
        <input class="submit" type="submit" value="Connexion" id="submit" name="submit">
        <br>
        <p class="box_register">Vous êtes nouveau ici? <a href="../public/index.php?route=register">S'inscrire</a></p>
    </form>
    <?= $this->session->show('error_login'); ?>


</div>