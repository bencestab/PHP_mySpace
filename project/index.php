<?php
ini_set('display_errors', 0);
error_reporting(0);
include './components/database/database.php';       // MySQL Database Connection
include './components/meta/meta.php';               // META Header
include './components/header/header.php';           // Layout Header
include './components/nav/nav.php';                 // Navigation
include './components/main/main_start.php';         // Content container open

if ($_GET['type']) {             // 1: content
    if ($_GET['type']==1) {             // 1: content
        if ($_GET['id'])    include './components/contents/content.php';        // Content sections...
    }
    else if ($_GET['type']==0) {     // 0: simple text
        if ($_GET['id'])    include './components/contents/content.php';        // Content sections...
    }
} else {
    include './components/contents/mainpage.php';       // Content sections...
}


include './components/main/main_end.php';           // Content container close
include './components/footer/footer.php';           // Footer
?>