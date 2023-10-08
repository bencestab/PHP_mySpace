<section class="single">
    <?php
    $sql2 = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 ORDER BY n.news_id DESC LIMIT 1;';

    // MYSQLI
    $result2 = $db->query($sql2);
    while ($row2 = $result2->fetch_assoc()) { ?>
        <div style="background-image: url('<?php echo $row2['news_img']; ?>');"></div>
        <a href="index.php?component=news&id=<?php echo $row2['news_id']; ?>">
            <h2>
                <?php echo $row2['news_title']; ?>
            </h2>
            <h4>
                szerző:
                <?php echo $row2['user_realname']; ?>
            </h4>
            <?php echo $row2['news_content']; ?>
        </a>
    <?php } ?>
</section>

<section>
    <a href="" class="big_img_article">
        <img src="../../assets/img/5.png" alt="">
        <div class="tool">
            <h1>Kiemelt hírek</h1>
            <h2>Történelmi pillanat</h2>
            <p>Az egyik legendás és sokak által ismert találkozás az emberek és az UFO-k között az 1947-es Roswell-i
                incidens, amely az Egyesült Államokban, New Mexico állam Roswell városában történt. 1947 júliusában egy
                helyi farmer, Mac Brazel egy furcsa, roncsolt tárgyat talált a birtokán. A roncsok között olyan furcsa
                anyagokat is talált, amelyek nem voltak azonnal azonosíthatók.

                Az események következtében az amerikai hadsereg beavatkozott, és kijelentette, hogy egy repülőgép
                roncsát találták meg. Azonban később a történet ellentmondásokkal és titokzatossággal terjedt el. Sokan
                azt hitték, hogy valójában egy idegen űrhajó roncsáról van szó, és az emberek találkoztak az UFO-kkal.

                Az eset a fantasztikus és a földönkívüli találkozások világában ikonikusnak számít, és a Roswell-i
                incidens azóta is sok találgatás és feltételezés tárgyát képezi. Bár a hivatalos verzió szerint a talált
                roncsok egy földi repülőgépé voltak, a történet körüli misztérium és a váratlan felfedezés még mindig
                élénkíti a képzeletet és a kíváncsiságot az emberek között az UFO-k és a földönkívüli lét létezése
                iránt.</p>
        </div>
    </a>
</section>

<section class="triple-cards" id="dynamic_content">

    <?php
    $sql = 'SELECT * FROM news n LEFT JOIN user u ON(n.news_creator=u.user_id) WHERE n.news_state=1 ORDER BY n.news_id DESC LIMIT 1,999999 ';

    // MYSQLI
    $result = $db->query($sql);
    while ($row = $result->fetch_assoc()) { ?>
        <a href="index.php?component=news&id=<?php echo $row['news_id']; ?>">
            <div class="card-image" style="background-image: url('<?php echo $row['news_img']; ?>');"></div>
            <div class="card-text">
                <h2>
                    <?php echo $row['news_title']; ?>
                </h2>
                <h4>
                    szerző:
                    <?php echo $row['user_realname']; ?>
                </h4>
                <?php echo $row['news_content']; ?>
            </div>
        </a>
    <?php } ?>
</section>

<section class="frame">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/_hHwz1UWJmI?si=k9uGhKCbXVyF0iio&amp;controls=0"
        title="YouTube video player"></iframe>
</section>