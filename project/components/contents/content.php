<section class="single">
    <?php
            
        $sql = 'SELECT * FROM content c LEFT JOIN user u ON(c.cont_creator=u.user_id) WHERE c.cont_state=1 and c.cont_id='.$_GET['id'];

        // MYSQLI
        $result = $db->query($sql);
        $row = $result->fetch_assoc();
        ?>
        <div style="background-image: url('./assets/img/content.jpg');"></div>
        <article>
            <h2>
                <?php echo $row['cont_title']; ?>
            </h2>
            <br><br>
            <?php echo $row['cont_content']; ?>
            <br><br>
            <a href="index.php" class="link">< vissza a főoldalra</a>
        </article>

</section>