        <section class="single">
            <?php
            
                $sql2 = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 and n.news_id='.$_GET['id'];

                // MYSQLI
                $result2 = $db->query($sql2);
                $row2 = $result2->fetch_assoc();
                ?>
                <div style="background-image: url('<?php echo $row2['news_img']; ?>');"></div>
                <article>
                    <h2>
                        <?php echo $row2['news_title']; ?>
                    </h2>
                    <h4>
                        szerző: <?php echo $row2['user_realname']; ?>
                    </h4>
                    <?php echo $row2['news_content']; ?>
                    <br><br>
                    <a href="index.php">vissza a főoldalra</a>
                </article>

        </section>