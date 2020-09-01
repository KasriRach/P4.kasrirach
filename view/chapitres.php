<?php $this->title = 'chapitres'; ?>
<div class="chapters">
    <?php
    foreach ($articles as $article) {
    ?>

    <!--<?= htmlspecialchars($article->getId()); ?></h3>-->
    <a
        href="../public/index.php?route=article&articleId=<?= htmlspecialchars($article->getId()); ?>"><?= htmlspecialchars($article->getTitle()); ?></a>
    <p><?= nl2br(substr(htmlspecialchars_decode($article->getContent()), 0, 50000)); ?></p>
    <p><?= htmlspecialchars($article->getAuthor()); ?></p>
    <p>Créé le : <?= htmlspecialchars($article->getCreatedAt()); ?></p>

    <!--<a href="../public/index.php?route=editArticle&articleId=<?= $article->getId(); ?>">Modifier</a><br>
        <a href="../public/index.php?route=deleteArticle&articleId=<?= $article->getId(); ?>">Supprimer</a><br>-->
    <br>

    <?php
    }
    ?>
</div>