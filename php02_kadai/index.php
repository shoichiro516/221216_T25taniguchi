<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>感想を登録</title>
    <link href="bootstrap.min.css" rel="stylesheet">

    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>

</head>

<body>


    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">2022年読後の感想一覧</a></div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <form method="post" action="insert.php">
        <div class="jumbotron">
            <fieldset>
                <legend>感想を登録しましょう</legend>
                <label>書籍名 : <input type="text" name="name"></label><br>
                <label>書籍URL : <input type="text" name="url"></label><br>
                <label><textArea name="content" rows="5" cols="40"></textArea></label><br>
                <input type="submit" value="登録する">
            </fieldset>
        </div>
    </form>
    <!-- Main[End] -->


</body>

</html>
