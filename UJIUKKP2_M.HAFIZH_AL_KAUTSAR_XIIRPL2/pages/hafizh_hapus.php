<?php
$idcatatan = $_GET['id'];

include '../config.php';
$sql = "DELETE FROM tbperjalanan WHERE idCatatan='$idcatatan'";
$query = mysqli_query( $conn, $sql );

if ( $query ) {
    echo '<script>alert("Data berhasil dihapus"); window.location = "hafizh_catatan.php";</script>';
} else {
    echo 'alert("Data gagal dihapus");';
}
?>