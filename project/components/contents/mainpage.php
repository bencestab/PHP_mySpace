
        <section class="single">
        <?php    
            $sql2 = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 ORDER BY n.news_id DESC LIMIT 1;';

            // MYSQLI
            $result2 = $db->query($sql2);
            while ($row2 = $result2->fetch_assoc()) { ?>
                <div style="background-image: url('<?php echo $row2['news_img']; ?>');"></div>
                <a href="index.php?component=news&id=<?php echo $row2['news_id'];?>">
                    <h2>
                        <?php echo $row2['news_title']; ?>
                    </h2>
                    <h4>
                        szerző: <?php echo $row2['user_realname']; ?>
                    </h4>
                    <?php echo $row2['news_content']; ?>
                </a>
            <?php } ?>

        </section>



        <section class="triple-cards" id="dynamic_content">

            <?php    
            $sql = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 ORDER BY n.news_id DESC LIMIT 1,3;';

            // MYSQLI
            $result = $db->query($sql);
            while ($row = $result->fetch_assoc()) { ?>
                <a href="index.php?component=news&id=<?php echo $row['news_id'];?>">
                    <div class="card-image"
                        style="background-image: url('<?php echo $row['news_img']; ?>');"></div>
                    <div class="card-text">
                        <h2>
                            <?php echo $row['news_title']; ?>
                        </h2>
                        <h4>
                            szerző: <?php echo $row['user_realname']; ?>
                        </h4>
                        <?php echo $row['news_content']; ?>
                    </div>
                </a>
            <?php } ?>
            
            

        </section>
