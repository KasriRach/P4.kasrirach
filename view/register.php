<?php $this->title = "Inscription"; ?>

<div class="register">
    <h1>Inscription</h1>

    <form method="post" action="../public/index.php?route=register">

        <input type="text" id="pseudo" name="pseudo" placeholder="Pseudo" value="<?= isset($post) ? htmlspecialchars($post->get('pseudo')) : ''; ?>"><br>
        <?= isset($errors['pseudo']) ? $errors['pseudo'] : ''; ?><br>

        <input type="password" id="password" name="password" placeholder="Mot de passe"><br>
        <?= isset($errors['password']) ? $errors['password'] : ''; ?><br>

        <input class="submit" type="submit" value="Inscription" id="submit" name="submit">
        <br>
        <p class="box_register">Déjà inscrit? <a href="../public/index.php?route=login">Connectez-vous ici</a></p>
    </form>

</div>