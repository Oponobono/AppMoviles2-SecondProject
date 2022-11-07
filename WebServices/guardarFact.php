<?php
if (isset($_REQUEST['codfactura']) && isset($_REQUEST['fechafactura']) && isset($_REQUEST['codusr']) && isset($_REQUEST['nameusrfactura']) && isset($_REQUEST['comprador']) && isset($_REQUEST['moto']) && isset($_REQUEST['refmoto']) && isset($_REQUEST['descmoto']) && isset($_REQUEST['valormoto']))
{
	$codfactura=$_REQUEST['codfactura'];
	$fechafactura=$_REQUEST['fechafactura'];
	$codusr=$_REQUEST['codusr'];
	$nameusrfactura=$_REQUEST['nameusrfactura'];
	$comprador=$_REQUEST['comprador'];
	$moto=$_REQUEST['moto'];
	$refmoto=$_REQUEST['refmoto'];
	$descmoto=$_REQUEST['descmoto'];
	$valormoto=$_REQUEST['valormoto'];
	$cnx =  mysqli_connect("localhost","root","","empresa") or die(mysqli_error());
	$result = mysqli_query($cnx,"SELECT codfactura FROM ventas_moto WHERE codfactura='$codfactura'");
	if (mysqli_num_rows($result)==0)
	{
		mysqli_query($cnx,"INSERT INTO ventas_moto (codfactura,fechafactura,codusr,nameusrfactura,comprador,moto,refmoto,descmoto,valormoto) VALUES ('$codfactura','$fechafactura','$codusr','$nameusrfactura','$comprador','$moto','$refmoto','$descmoto','$valormoto')");
	}
	else
	{
		echo "Ya existe la factura";
	}
	mysqli_close($cnx);
}
else
{
	echo "Debe especificar los datos para el registro";
}
?>