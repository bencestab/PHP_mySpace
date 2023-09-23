<nav>
        <mark></mark>
        <section>
            <a href="/">Főoldal</a>
            <?php
            $sql = 'SELECT * FROM navigation WHERE nav_state=1 ORDER BY nav_id ASC';
            $result = $db->query($sql);
            while ($row = $result->fetch_assoc()) {
                //echo '<a href="index.php?component=content&id='.$row['nav_contentid'].'">'.$row['nav_title'].'</a>';
                echo '<a href="'.$row['nav_contentid'].'">'.$row['nav_title'].'</a>';
            }
            ?>
        </section>
</nav>