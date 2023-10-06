<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php

        $host 		= "mysql";
        $user 		= "sqluser";
        $password	= "123456";
        $database	= "myspace_db";
        $charset 	= 'utf8mb4';

        $db = new mysqli($host, $user, $password, $database);
        
        if ($_GET['order']==0) $o = 'ASC';
        if ($_GET['order']==1) $o = 'DESC';

        $sql = "SELECT * FROM persons ORDER BY id $o";
        $result = $db->query($sql);
        $result2 = $db->query($sql);

        /*for ($i=1; $i < $result->num_rows; $i++) {
            $row = $result->fetch_assoc();
            echo $row['name'].'<br>';
        }*/
    ?>

    <style>
        td {
            border: 1px solid black;
        }
    </style>

    <table>
        <thead>
            <th>id</th>
            <th>name</th>
            <th>age</th>
            <th>gender</th>
        </thead>
        <tbody>
            <?php
            while ($row = $result->fetch_assoc()) { ?>
                <tr>
                    <td><?php echo $row['id']; ?></td>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['age']; ?></td>
                    <td><?php echo $row['gender']; ?></td>
                </tr>
            <?php } ?>

            <?php
            /*while ($row2 = $result2->fetch_assoc()) {
                echo "<tr>";
                echo "<td>$row2[id]</td>";
                echo "<td>$row2[name]</td>";
                echo "<td>$row2[age]</td>";
                echo "<td>$row2[gender]</td>";
                echo "</tr>";
            } */?>

        </tbody>
    </table>

</body>
</html>