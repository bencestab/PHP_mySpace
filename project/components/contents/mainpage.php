
<section class="single">
<?php    
    $sql = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 ORDER BY n.news_id DESC LIMIT 1;';

    // MYSQLI
    $result = $db->query($sql);
    while ($row = $result->fetch_assoc()) {
        foreach ($row as $key => $value) ${$key} = $value;
        ?>
        <div style="background-image: url('<?php echo $news_img; ?>');"></div>
        <!--a href="index.php?component=news&id=<?php echo $news_id;?>"-->
        <a href="hir/<?php echo $news_id;?>">
            <h2>
                <?php echo $news_title; ?>
            </h2>
            <h4>
                szerző: <?php echo $user_realname; ?>
            </h4>
            <?php echo $news_content; ?>
        </a>
    <?php } ?>
</section>


<section class="triple-cards" id="dynamic_content">
    <?php    
    $sql = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 ORDER BY n.news_id DESC LIMIT 1,3;';
    // MYSQLI
    $result = $db->query($sql);
    while ($row = $result->fetch_assoc()) {
        foreach ($row as $key => $value) ${$key} = $value;
        ?>
        <a href="hir/<?php echo $news_id;?>">
            <div class="card-image"
                style="background-image: url('<?php echo $news_img; ?>');"></div>
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
