<?php
ini_set('display_errors', 0);
error_reporting(0);
include './components/database/database.php';       // MySQL Database Connection
include './components/meta/meta.php';               // META Header
include './components/header/header.php';           // Layout Header
include './components/nav/nav.php';                 // Navigation
include './components/main/main_start.php';         // Content container open

// Ha van komponens
if ($_GET['component']) {

    // Hír
    if ($_GET['component']=='news') {
        if ($_GET['id']) include './components/contents/news.php';
        else include './components/error/error.php';
    }

    // Tartalom
    if ($_GET['component']=='content') {
        if ($_GET['id']) include './components/contents/content.php';
        else include './components/error/error.php';
    }

// Ha nincs komponens, akkor főoldal
} else include './components/contents/mainpage.php';


include './components/main/main_end.php';           // Content container close
include './components/footer/footer.php';           // Footer
?>