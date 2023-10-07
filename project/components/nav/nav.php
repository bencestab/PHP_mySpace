<nav>
        <mark></mark>
        <section>
            <a href="/">Főoldal</a>
            <?php
            $sql = 'SELECT * FROM navigation WHERE nav_state=1 ORDER BY nav_id ASC';
            $result = $db->query($sql);
            while ($row = $result->fetch_assoc()) {

                // Az asszociatív tömb kulcsaiból változókat generálunk
                foreach ($row as $key => $value) ${$key} = $value;
            
                /*
                A .htaccess fájlban leírt URL átírási szabályoknak köszönhetően a navigációs elemek href értékeit szebbé varázsolhatjuk.
                - eredeti url: index.php?component=content&id=1
                - átírt url: tartalom/1
                Amennyiben nem contentId-t kapcsoltunk a menüponthoz, hanem komponenst nevet, az átírási szabály így alakul:
                - eredeti url: index.php?component=comp-name
                - átírt url: comp-name
                */

                // Ha tartalom ID-re hivatkozunk:
                if ($nav_contentid > 0) {
                    echo '<a href="/tartalom/' . $nav_contentid . '">' . $nav_title . '</a>';
                }
                // Ha listázó komponeneshez kapcsoltunk:
                else {
                    echo '<a href="/' . $nav_component . '">' . $nav_title . '</a>';
                }
            }
            ?>
        </section>
</nav>