<?php 
if (isset($_REQUEST['codfactura']))
{
	$codfactura=$_REQUEST['codfactura'];
	$cnx =  mysqli_connect("localhost","root","","Empresa") or die("Ha sucedido un error inexperado en la conexion de la base de datos");
	$result = mysqli_query($cnx,"select codfactura from ventas_moto where codfactura = '$codfactura'");
	if (mysqli_num_rows($result)>0)
	{
		mysqli_query($cnx,"UPDATE ventas_moto SET estado='no' WHERE codfactura = '$codfactura'");	
	}
	else
	{
		echo "No existe la factura....";
	}
	mysqli_close($cnx);
}
else
{
	echo "Debe especificar un codigo de factura";
}
?>