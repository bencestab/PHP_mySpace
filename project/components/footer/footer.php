    <footer>
        <div>
            <p><i class="fa-solid fa-envelope"></i> stabbence@gmail.com</p>
            <p><i class="fa-brands fa-github"></i> https://github.com/bencestab</p>
            <p><i class="fa-solid fa-phone"></i> +36 70 639 00 05</p>
        </div>

        <div>
            <?php
            $sql = 'SELECT * FROM navigation WHERE nav_state=1 ORDER BY nav_id ASC';
            $result = $db->query($sql);
            while ($row = $result->fetch_assoc()) {
                echo '<a href="index.php?component=content&id='.$row['nav_contentid'].'">'.$row['nav_title'].'</a><br>';
            }
            ?>
        </div>

        <div>
            <i>"Köszönet az Űrutazás Rajongói csapatnak, hogy mindig izgalmas tartalmakat osztanak meg velünk. Rajtatok keresztül érzem, hogy az űr mindig elérhető közelségben van!"</i>
            <br>
            <b>Tamás, Asztronauta Álmodozó</b>
        </div>
    </footer>

    <script src="./assets/js/main.js"></script>

</body>

</html>

<?php
$db->close();
?>