        <section class="single">
            <?php
            if (!$_GET['id']) {
                echo 'Nincs megjeleníthető tartalom';
            } else {
                $sql2 = 'SELECT * FROM content c LEFT JOIN user u ON(c.cont_creator=u.user_id) WHERE c.cont_state=1 and c.cont_id='.$_GET['id'];

                // MYSQLI
                $result2 = $db->query($sql2);
                $row2 = $result2->fetch_assoc();
                ?>
                    <div style="background-image: url('<?php echo $row2['cont_img']; ?>');"></div>
                    <article>
                        <h2>
                            <?php echo $row2['cont_title']; ?>
                        </h2>
                        <h4>
                            szerző: <?php echo $row2['user_realname']; ?>
                        </h4>
                        <?php echo $row2['cont_content']; ?>
                        <br><br>
                        <a href="index.php">vissza a főoldalra</a>
                    </article>
            <?php } ?>

        </section>