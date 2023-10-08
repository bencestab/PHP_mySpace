        <section class="triple-cards" id="dynamic_content">

            <?php    
            $sql = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 ORDER BY n.news_id DESC;';

            // MYSQLI
            $result = $db->query($sql);
            $i = 1;
            while ($row = $result->fetch_assoc()) {
                foreach ($row as $key => $value) ${$key} = $value;
                if ($i <= 3) $class='';
                else $class='class="small-card"';
                ?>
                <a href="hir/<?php echo $news_id;?>" <?php echo $class; ?>>
                    <?php
                    if ($i <= 3) { ?>
                        <div class="card-image"
                            style="background-image: url('<?php echo $news_img; ?>');">
                        </div>
                    <?php }
                    $i++;
                    ?>
                    <div class="card-text">
                        <h2>
                            <?php echo $news_title; ?>
                        </h2>
                        <h4>
                            szerző: <?php echo $user_realname; ?>
                        </h4>
                        <?php echo $news_content; ?>
                    </div>
                </a>
            <?php } ?>   

        </section>