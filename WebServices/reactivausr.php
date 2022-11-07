<?php
if (isset($_REQUEST['usr']) && isset($_REQUEST['estado']))
{
	$usr=$_REQUEST['usr'];
	$estado=$_REQUEST['estado'];
	$cnx =  mysqli_connect("localhost","root","","empresa") or die("Ha sucedido un error inexperado en la conexion de la base de datos");
	$result = mysqli_query($cnx,"select * from usuarios where usr = '$usr'");
	if (mysqli_num_rows($result)>0)
	{
		mysqli_query($cnx,"UPDATE usuarios SET estado='$estado' WHERE usr = '$usr'");
	}
	else
	{
		echo "Usuario No existe....";
	}
	mysqli_close($cnx);
}
else
{
	echo "Debe especificar usr, clave, nombre y correo, respectivamente";
}
?>