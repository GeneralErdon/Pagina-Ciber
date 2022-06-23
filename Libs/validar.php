<?php
$usuario = $_POST['user'];
$contraseña = $_POST['password'];
session_start();
$_SESSION['user'] = $usuario;


include('../conexion.php');


$consulta = "SELECT*FROM usuario where usuario= '$usuario' and contraseña = '$contraseña'";
$resultado = mysqli_query($conexion, $consulta);

$fila = mysqli_num_rows($resultado);

if($fila){
    header("location:../Index.html");
}
else{
    
    include("../Pg/InicioSesion.php");
    ?>
    <script>alert("Autentificación Incorrecta","error")</script>
    <?php
};
mysqli_free_result($resultado);
mysqli_close($conexion);
?>