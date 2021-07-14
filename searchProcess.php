<?php 
include "koneksi.php";
include "fungsi.php";

$get_keyword = $_GET['search'];

mysqli_query($conn, "DELETE FROM tbkeyword");
mysqli_query($conn, "TRUNCATE TABLE tbterm");

$user_keyword = $get_keyword;
$user_keyword = preprocessing($user_keyword);

$words = str_word_count($user_keyword, 1);
$words = array_count_values($words);
$count_words = count($words);

if($count_words > 0){

    foreach($words as $w => $value){

        mysqli_query($conn, "INSERT INTO tbkeyword (term, jumlahTerm) VALUES ('$w', $value)");
    }
    header('location:result.php?search='.$get_keyword);
}


?>