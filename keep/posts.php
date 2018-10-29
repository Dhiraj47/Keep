<?php
include "php_functions.php";
if ($_SESSION['email']) {
    $email = $_SESSION['email'] ?>

    <html>
    <head>
        <title>Home | Flickr</title>
        <link rel="shortcut icon" type="image/ico" href="icons/favicon.ico">
        <link type="text/css" rel="stylesheet" href="css/myCSS.css">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">

    </head>
    <body style="background-color: #f5f5f5">
<span id="editor">

<?php
include 'navigation.php';
include 'upload.php';

?>
    <br>
<div id="myDIV" class="container">
<?php
include 'list.php';
?>

</div>


    <!-- The Modal -->
<div id="myModal" class="modal">
    <span id="close" class="close">&times;</span>
    <img class="modal-content" id="img01">
    <div id="caption"></div>
</div>

</span>
<script type="text/javascript" src="js/myJS.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script>


    function goto_detail(id) {
        window.location.href = 'detail.php?id=' + id;
    }

    function gotopic(photo_id, title, detail) {
        if (photo_id !== "") {
            var modal = document.getElementById('myModal');

            var modalImg = document.getElementById("img01");
            var captionText = document.getElementById("caption");

            modal.style.display = "block";
            modalImg.src = 'photos/' + photo_id;
            captionText.innerHTML = '<b>' + title + '</b><br><i>' + detail + '</i>';

            var span = document.getElementsByClassName("close")[0];

            span.onclick = function () {
                modal.style.display = "none";
            }
        }
    }

    $(document).ready(function () {
        $('#search').keyup(function () {

            // Search text
            var text = $(this).val();

            // Hide all content class element
            $('.content').hide();

            // Search and show
            $('.content:contains("' + text + '")').show();

        });

    });

</script>

    </body>
    </html>
<?php } else
    header('Location: index.php'); ?>