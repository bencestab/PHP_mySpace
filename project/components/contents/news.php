<?php
$sql = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 and n.news_id='.$_GET['id'];
$result = $db->query($sql);
$row = $result->fetch_assoc();
foreach ($row as $key => $value) ${$key} = $value;

if ($news_id) { ?>

    <section class="single h-100">
        <div style="background-image: url('<?php echo $news_img; ?>');"></div>
        <article>
            <h2>
                <?php echo $news_title; ?>
            </h2>
            <h4>
                szerző: <?php echo $user_realname; ?>
            </h4>
            <?php echo $news_content; ?>
            <br><br>
            <a href="/" class="link">< vissza a főoldalra</a>
        </article>
    </section>
    
    <?php
} else include './components/error/error.php';