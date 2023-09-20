<section class="single-content">
            <?php
                $sql2 = 'SELECT * FROM content c LEFT JOIN user u ON(c.cont_creator=u.user_id) WHERE c.cont_state=1 and c.cont_id='.$_GET['id'];

                // MYSQLI
                $result2 = $db->query($sql2);
                $row2 = $result2->fetch_assoc();
                ?>
                <article>
                    <h2>
                        <?php echo $row2['cont_title']; ?>
                    </h2>
                    <br><br>
                    <?php echo $row2['cont_content']; ?>
                    <br><br>
                    <a href="index.php">vissza a főoldalra</a>
                </article>

        </section>