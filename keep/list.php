<div class="row">
    <?php

    $query = "SELECT * FROM posts WHERE email= '$email' ORDER BY date DESC";

    $result = mysqli_query($connection, $query);

    while ($row = mysqli_fetch_assoc($result)) {
        ?>

        <div class="rounded p-3 content"
             style="margin:1% 8% 0 2%; background-color: white; max-height: max-content; width: 40%">
                <span ><a style="font-size: medium;" data-toggle="collapse" href="#id<?php echo $row['sl_no']; ?>">
                        <?php echo $row['title']; ?> </a>
                    <label style="font-size: small; float: right;color: #b7b0b0;">Scheduled on: <?php echo $row['date']; ?></label>

                </span>
            <div class="collapse" id="id<?php echo $row['sl_no'];?>">
                <?php if($row['photo_id']){?>
                    <img onclick="gotopic('<?php echo $row['photo_id']; ?>','<?php echo $row['title']; ?>','<?php echo $row['content']; ?>')"
                         style="margin-top: 2%; margin-bottom: 1%"
                         class="img-thumbnail" src="photos/<?php echo $row['photo_id']; ?>">
                <?php }?><hr>
                <h6 class="mt-3" style="font-size: small;" id="<?php echo $row['title']; ?>"><b> <?php echo $row['content']; ?></b></h6>
                <br>
                <p>Location: <a class="text-primary" href="https://www.google.com/maps?q=<?php echo $row['address']; ?>" target='_blank'><?php echo $row['address']; ?></a></p>
                <p>Status : <?php echo $row['status']; ?></p>
                    <a class="text-primary text-right" href="php_functions.php?status=<?php echo $row['sl_no']; ?>">
                        Mark as Done
                    </a>
            </div>
        </div>
    <?php } ?>

</div>