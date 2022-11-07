<?php 
if (isset($_REQUEST['codfactura']) && isset($_REQUEST['fechafactura']) && isset($_REQUEST['codusr']) && isset($_REQUEST['nameusrfactura']) && isset($_REQUEST['comprador']) && isset($_REQUEST['moto']) && isset($_REQUEST['refmoto']) && isset($_REQUEST['descmoto']) && isset($_REQUEST['valormoto']))
{
	$codfactura=$_REQUEST['codfactura'];
	$fechafactura=$_REQUEST['fechafactura'];
	$codusr=$_REQUEST['codusr'];
	$nameusrfactura=$_REQUEST['nameusrfactura'];
	$comprador=$_REQUEST['comprador'];
	$cnx =  mysqli_connect("localhost","root","","Empresa") or die("Ha sucedido un error inexperado en la conexion de la base de datos");
	$result = mysqli_query($cnx,"select codfactura from ventas_moto where codfactura = '$codfactura'");
	if (mysqli_num_rows($result)>0)
	{
		mysqli_query($cnx,"UPDATE ventas_moto SET fechafactura='$fechafactura',codusr='$codusr',nameusrfactura='$nameusrfactura',comprador='$comprador' WHERE codfactura = '$codfactura'");
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