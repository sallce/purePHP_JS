<?php
header("Content-Type: application/json");
require_once('../model/Db.php');

if($_SERVER['REQUEST_METHOD'] === 'GET'){
  if($_GET['id']=='all'){
    $data = $db->get_all('articles' , ['article_archived'=>1],'order by article_date DESC');
    echo json_encode($data);
  }else{
    $query = 'SELECT * FROM articles art JOIN article_image_mapping imartmap ON (art.article_ID=imartmap.aim_articleID) JOIN images ON(imartmap.aim_imageID=images.image_ID) where aim_archived=1 and art.article_ID='.$_GET['id'];
    $data = $db->runQuery($query) ? $db->runQuery($query) : $db->get_one('articles',['article_ID'=>$_GET['id'],'article_archived'=>1]);
    echo json_encode($data);
  }
  flush();
}

?>
