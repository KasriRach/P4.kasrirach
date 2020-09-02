<?php $this->title = 'Administration'; ?>

<?= $this->session->show('add_article'); ?>
<?= $this->session->show('edit_article'); ?>
<?= $this->session->show('delete_article'); ?>
<?= $this->session->show('unflag_comment'); ?>
<?= $this->session->show('delete_comment'); ?>
<?= $this->session->show('delete_user'); ?>

<div class="single">
    <h1>Derniers chapitres</h1>

    <h2><a href="../public/index.php?route=addArticle">Nouveau chapitre</a></h2>

    <?php
    foreach ($articles as $article) {
    ?>

        <!--<?= htmlspecialchars($article->getId()); ?></h3>-->
        <a href="../public/index.php?route=article&articleId=<?= htmlspecialchars($article->getId()); ?>"><?= htmlspecialchars($article->getTitle()); ?></a>
        <p><?= nl2br(substr(htmlspecialchars_decode($article->getContent()), 0, 50000)); ?></p>
        <p><?= htmlspecialchars($article->getAuthor()); ?></p>
        <p>Créé le : <?= htmlspecialchars($article->getCreatedAt()); ?></p>

        <a href="../public/index.php?route=editArticle&articleId=<?= $article->getId(); ?>">Modifier</a><br>
        <a href="../public/index.php?route=deleteArticle&articleId=<?= $article->getId(); ?>">Supprimer</a><br>
        <br>

    <?php
    }
    ?>

    <h3>Commentaires signalés</h3>

    <table>
        <br>
        <caption>Commentaires signalés</caption><br>
        <br>
        <tr>
            <th>Id</th>
            
            <th>Pseudo</th>
            <th>Commentaire</th>
            <th>Date</th>
            <th>Actions</th>
            <th>Chapitre</th>
        </tr>
        
        <?php
        foreach ($comments as $comment) {
        ?>
            <tr>
                <td><?= htmlspecialchars($comment->getId()); ?></td>
                
                <td><?= htmlspecialchars($comment->getPseudo()); ?></td>
                <td><?= substr(htmlspecialchars_decode($comment->getContent()), 0, 150); ?></td>
                <td>Créé le : <?= htmlspecialchars($comment->getCreatedAt()); ?></td>
                <td>
                    <a href="../public/index.php?route=unflagComment&commentId=<?= $comment->getId(); ?>">Désignaler
                        le commentaire</a>
                    <a href="../public/index.php?route=deleteComment&commentId=<?= $comment->getId(); ?>">Supprimer
                        le commentaire</a>
                </td>
                <td><?= htmlspecialchars($article->getId()); ?></td>
            </tr>
        <?php
        }
        ?>
    </table>

    <table>
        <br>
        <caption>Utilisateurs</caption><br>
        <br>
        <tr>
            <th>Pseudo</th>
            <th>Date</th>
            <th>Rôle</th>
            <th>Actions</th>
        </tr>
        <?php
        foreach ($users as $user) {
        ?>
            <tr>
                <!--<td><?= htmlspecialchars($user->getId()); ?></td>-->
                <td><?= htmlspecialchars($user->getPseudo()); ?></td>
                <td>Créé le : <?= htmlspecialchars($user->getCreatedAt()); ?></td>
                <td><?= htmlspecialchars($user->getRole()); ?></td>
                <td>
                    <?php
                    if ($user->getRole() != 'admin') {
                    ?>
                        <a href="../public/index.php?route=deleteUser&userId=<?= $user->getId(); ?>">Supprimer</a>
                    <?php } else {
                    ?>
                        Suppression impossible
                    <?php
                    }
                    ?>
                </td>
            </tr>
        <?php
        }
        ?>
    </table>
</div>

</body>

</html>