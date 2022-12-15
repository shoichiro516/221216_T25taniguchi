<?php
ini_set('display_errors', 'On');  // ここ：エラーを表示させるようにしてください
error_reporting(E_ALL);  
/**
 * 1. index.phpのフォームの部分がおかしいので、ここを書き換えて、
 * insert.phpにPOSTでデータが飛ぶようにしてください。
 * 2. insert.phpで値を受け取ってください。
 * 3. 受け取ったデータをバインド変数に与えてください。
 * 4. index.phpフォームに書き込み、送信を行ってみて、実際にPhpMyAdminを確認してみてください！
 */

//1. POSTデータ取得
// 12/10、postで送られてきたデータを取得したいので、、、
$name=$_POST['name'];
$url=$_POST['url'];
$content=$_POST['content'];


//2. DB接続します
try {
  //ID:'root', Password: xamppは 空白 ''
// 12/10はここを触った。xaampを使う時のおまじない。
  $pdo = new PDO('mysql:dbname=gs_shoshi_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}
// tryの中を頑張って処理して、それでダメなら（エラーをキャッチしたら）catch以降を処理してね


//３．データ登録SQL作成

// 1. SQL文を用意
// 12/10ここにインサート文を書く。さっきSQLで書いたやつね
$stmt = $pdo->prepare("INSERT INTO 
                      gs_bm_table(id,bookname,bookurl,bookcom,date)
                      VALUES(NULL,:name,:url,:content,sysdate() )");
                      // ↑言われた通りに書く。コロンname、、、

//  2. バインド変数を用意
// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR
// ↓12/10、ここも言われた通りに書く
// （書いたつもりが＄contentを＄emailをコピペしたままにしていて、DBにコンテンツが保存されなかった。
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':content', $content, PDO::PARAM_STR);

//  3. 実行
$status = $stmt->execute();

//４．データ登録処理後
if($status === false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit('ErrorMessage:'.$error[2]);
}else{
  //５．index.phpへリダイレクト
  // ↓12/10ここも写経すること
  header('Location:index.php');

}
?>
