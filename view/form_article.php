<?php
$route = isset($post) && $post->get('id') ? 'editArticle&articleId=' . $post->get('id') : 'addArticle';
$submit = $route === 'addArticle' ? 'Envoyer' : 'Mettre à jour';
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <script src="https://cdn.tiny.cloud/1/m5ofnsyl70jzk5wnieh88g8kjks4anus4u6k318hira2gdp7/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: 'textarea', // change this value according to the HTML
            toolbar: 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | outdent indent'
        });
    </script>
</head>

<div class="add_article">

    <form method="post" action="../public/index.php?route=<?= $route; ?>">
        <br>
        <input type="text" id="title" name="title" placeholder="Titre" value="<?= isset($post) ? htmlspecialchars($post->get('title')) : ''; ?>"><br>
        <?= isset($errors['title']) ? $errors['title'] : ''; ?>
        <br>
        <textarea id="content" name="content"><?= isset($post) ? htmlspecialchars_decode($post->get('content')) : ''; ?></textarea><br>
        <?= isset($errors['content']) ? $errors['content'] : ''; ?> <br>
        <input class="submit" type="submit" value="<?= $submit; ?>" id="submit" name="submit">
        <br>
    </form>
</div>