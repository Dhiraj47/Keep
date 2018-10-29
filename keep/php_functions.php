<?php
/**
 * Created by PhpStorm.
 * User: Dhiraj
 */
include 'db_connection.php';
ob_flush();
session_start();


if (isset($_POST['login'])) {
    $user_id = $_POST['user_id'];
    $pass = $_POST['pass'];
    $query = "SELECT * FROM users WHERE email='$user_id' AND password='$pass'";
    $result = mysqli_query($connection, $query);

    $count = mysqli_num_rows($result);
    $row = mysqli_fetch_assoc($result);
    if ($count != 0) {
        $_SESSION['email'] = $row['email'];
        $_SESSION['name'] = $row['name'];
        $_SESSION['profile_pic'] = $row['profile_pic'];
        $_SESSION['gender'] = $row['gender'];

        $_SESSION['upload'] = 0;
        $_SESSION['like'] = 0;
        $_SESSION['comment'] = 0;
        $_SESSION['online_time'] = time();

        header('Location: posts.php');
    } else
        header('Location: index.php');

    unset($query, $result, $row);
}

if (isset($_POST['make_posts'])) {
    $email = $_SESSION['email'];
    $pic = $_SESSION['profile_pic'];

  if ($_FILES['file']['name']) {
      $photo = uniqid(rand(), true) . $_FILES['file']['name'];;
      $image_temp = $_FILES['file']['tmp_name'];
      move_uploaded_file($image_temp, "photos/$photo");
  }
  else
      $photo="";

    $add = $_POST['address'];
    $title = $_POST['title'];
    $content = $_POST['content'];
    $date = $_POST['date'];

    $query = "INSERT INTO posts(email,address,profile_pic,photo_id,title,content,date) VALUES ('$email','$add','$pic','$photo','$title','$content','$date')";
    $result = mysqli_query($connection, $query);

    if ($result) {
        echo "<script type='text/javascript'>alert('Successfully Uploaded');</script>";
        header('Location: posts.php');
    } else
        echo "<script type='text/javascript'>alert('Error - " . mysqli_error($connection) . ");</script>";

    unset($query, $result, $row);

}

if (isset($_GET['logout'])) {

        session_destroy();
        header('Location: index.php');

}

if (isset($_POST['signup'])) {

    $email = $_POST['u_email'];
    $name = $_POST['u_name'];
    $psw = $_POST['u_psw'];
    $gender = $_POST['gender'];

    $photo = uniqid(rand(), true) . $_FILES['file']['name'];
    $image_temp = $_FILES['file']['tmp_name'];
    move_uploaded_file($image_temp, "profile_pic/$photo");

    $insert = "INSERT INTO users (email,password,name,profile_pic,gender) VALUES('$email','$psw','$name','$photo','$gender')";
    $s=mysqli_query($connection, $insert);
    if($s)
        echo "Successfully SignUp";
    else
        echo "Error: ".mysqli_error($connection);

    header('Location: signup.php');
}


if (isset($_GET['status'])) {

    $sl = $_GET['status'];

    $insert = "UPDATE `posts` SET `status` = 'Done' WHERE `sl_no` = $sl";
    $s=mysqli_query($connection, $insert);

      header('Location: posts.php');


}


?>