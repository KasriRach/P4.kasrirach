<?php
$route = isset($post) && $post->get('id') ? 'editComment' : 'addComment';
$submit = $route === 'addComment' ? 'Ajouter' : 'Mettre à jour';
?>

<div class="comment">
    <h1>Commentaire</h1>
    <form method="post"
        action="../public/index.php?route=<?= $route; ?>&articleId=<?= htmlspecialchars($article->getId()); ?>">
        <input type="text" id="" name="" placeholder=""
            value="<?= htmlspecialchars_decode($article->getTitle()); ?>"><br>
        <br>
        <input type="text" id="pseudo" name="pseudo" placeholder="Pseudo"
            value="<?= isset($post) ? htmlspecialchars($post->get('pseudo')) : ''; ?>"><br>
        <?= isset($errors['pseudo']) ? $errors['pseudo'] : ''; ?><br>

        <input class="textarea" id="content" placeholder="Message"
            name="content"><?= isset($post) ? htmlspecialchars_decode($post->get('content')) : ''; ?><br>
        <?= isset($errors['content']) ? $errors['content'] : ''; ?><br>
        <input class="submit" type="submit" value="Envoyer" id="submit" name="submit">
        <br>
    </form>
</div>