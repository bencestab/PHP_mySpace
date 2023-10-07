        
<?php    
    $sql = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 ORDER BY n.news_id DESC;';
    // MYSQLI
    $result = $db->query($sql);
    while ($row = $result->fetch_assoc()) {
        foreach ($row as $key => $value) ${$key} = $value;
        ?>
        <section class="single">
            <div style="background-image: url('<?php echo $news_img; ?>');"></div>
            <a href="hir/<?php echo $news_id;?>">
                <h2>
                    <?php echo $news_title; ?>
                </h2>
                <h4>
                    szerző: <?php echo $user_realname; ?>
                </h4>
                <?php echo $news_content; ?>
            </a>
        </section>
<?php } ?>
