<?php $this->title = 'Article'; ?>


<div class="single">
    <h1><?= htmlspecialchars($article->getTitle());?></h1>
    <p><?= nl2br(htmlspecialchars_decode($article->getContent()));?></p>
    <p><?= htmlspecialchars($article->getAuthor());?></p>
    <p>Créé le : <?= htmlspecialchars($article->getCreatedAt());?></p>
</div>
<br>


<div id="comments">
    <?php include('form_comment.php'); ?>
    <h3>Commentaires</h3>
    <?php
    foreach ($comments as $comment)
    {
        ?>
     <div class="comment_article"><img src="../public/images/imgNEW1.jpg" alt="" width="100%">   
    <h4><?= htmlspecialchars($comment->getPseudo());?></h4>
    <p><?= nl2br(htmlspecialchars_decode($comment->getContent()));?></p>
    <p>Posté le <?= htmlspecialchars($comment->getCreatedAt());?></p><br></div><br>  
    <?php
        if($comment->isFlag()) {
            ?>
    <p>Ce commentaire a déjà été signalé</p>
         
     
    <?php
    
        } else {
            ?>
    <p><a class="designale" href="../public/index.php?route=flagComment&commentId=<?= $comment->getId(); ?>">Signaler le commentaire</a>
    </p><br>
    <?php
        }
        ?>
    <!--<p><a class="supprime" href="../public/index.php?route=deleteComment&commentId=<?= $comment->getId(); ?>">Supprimer le
commentaire</a></p>-->
    <br>
    <?php
    }
    ?>
    
</div>
<br>
