        <section class="single">
            <?php
            
                $sql = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 and n.news_id='.$_GET['id'];

                // MYSQLI
                $result = $db->query($sql);
                $row = $result->fetch_assoc();
                ?>
                <div style="background-image: url('<?php echo $row['news_img']; ?>');"></div>
                <article>
                    <h2>
                        <?php echo $row['news_title']; ?>
                    </h2>
                    <h4>
                        szerző: <?php echo $row['user_realname']; ?>
                    </h4>
                    <?php echo $row['news_content']; ?>
                </article>

        </section>