<?php
	if (isset($_REQUEST['codfactura']))
	{
		$codfactura=$_GET['codfactura'];
		$cnx =  mysqli_connect("localhost","root","","empresa");
		$res=$cnx->query("select * from ventas_moto where codfactura = '$codfactura'");
		if (mysqli_num_rows($res)>0){
			$json = array();
			foreach ($res as $row)
			{
				$json[] = array_map("utf8_encode", $row);
			}
			echo json_encode($json);
		}else{
			echo "Factura No existe....";
		}
		$res -> close();
	}
	else
	{
		echo "El código de factura es obligatorio";
	}

?>