<?php
session_start();
session_unset();
session_destroy();
header( "location: ../hafizh_login.php" );
?>
