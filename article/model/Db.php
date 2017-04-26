<?php

$servername='localhost';
$username='root';
$password='';
$dbname='tasks';

$db = new Db($servername, $username,$password,$dbname);

class Db{
    private $cont;
    function __construct($servername, $username,$password,$dbname){
        $this->cont = mysqli_connect($servername, $username,$password,$dbname);
        if($this->cont->connect_error){
            die('Connection failed: '.$this->cont->connect_error);
        }
    }

    function get_all($table,$arr,$addition){
        $sql = "select * from $table where 1 ";
        foreach($arr as $key=>$value){
            $sql .= 'and '.$key.'="'.$value.'" ';
        }
        $index = 0;

        $returnData = array();
        $sql .= $addition;
        $result = mysqli_query($this->cont, $sql);
        if($result){
            if(mysqli_num_rows($result) > 0){
                while($row = $result->fetch_assoc()){
                    $returnData[$index] = $row;
                    $index ++ ;
                }
            }
        }

        return $returnData;
    }

    function runQuery($query){
      $result = $this->cont->query($query);
      $index = 0;
      $returnData = array();
      while($row = $result->fetch_assoc()){
          $returnData[$index] = $row;
          $index ++ ;
      }
      return $returnData;
    }

    function get_one($table,$arr){
        $sql = "select * from $table where 1 ";
        foreach($arr as $key=>$value){
            $sql .= 'and '.$key.'="'.$value.'" ';
        }

        $returnData = array();

        $result = $this->cont->query($sql);

        return $result->fetch_assoc();

    }


}

?>
