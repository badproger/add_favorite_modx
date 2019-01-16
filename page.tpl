<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="assets/template/demo/css/style.css">
    <title>Demo</title>
</head>
<body>
    {'@FILE snippets/addFavorite.php' | snippet}

    <div class="container">
        <div class="row">

            {'!msProducts' | snippet : [
                'parents'=>'4',
                'includeThumbs'=>'medium',
                'tpl'=>'@FILE chunks/product.tpl'
            ]}
        </div>
        <h2>Товары в избранном</h2><br>
        <div class="row">
            {set $ids = $.session['favorites'] | join}
            {if $ids?}
                {'!msProducts' | snippet : [
                    'parents'=>'4',
                    'resources'=>$ids,
                    'includeThumbs'=>'medium',
                    'tpl'=>'@FILE chunks/product.tpl'
                ]}
            {else}
                <p>Товаров нет в избранном</p>
            {/if}
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="assets/template/demo/js/script.js"></script>
</body>
</html>