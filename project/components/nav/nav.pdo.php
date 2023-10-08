<nav>
        <mark></mark>
        <section>
            <?php
            $sql = 'SELECT * FROM navigation WHERE nav_state=1 ORDER BY nav_id ASC';
			$result2 = $db2->query($sql);
			while ($row2 = $result2->fetch()) {
                echo '<a href="/">'.$row2['nav_title'].'</a>';
            }
            ?>
        </section>
</nav>