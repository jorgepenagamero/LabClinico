<header>
	
	<img src="./img/logo.png" alt="" style="width: 10%; display: inline; margin-right:10px;">

	<div id="info" style="width: 55%; display: inline-block; margin-bottom:10px;">
		<P>LABORATORIO CLINICO CENTRAL DE ILOBASCO</P>
		<P>J.V.P.L.C° 2172</P>
		<P>ILOBASCO, CABAÑAS</P>
		<P>AV CARLOS BONILLA, CASA #3 BARRIO EL CENTRO</P>
		<P>TELEFONO: 2300-6477 , 7435-5563</P>
	</div>
	<div id="analisis" style="width: 30%; display: inline-block; text-align: right;">
		<h2>{{( $titulo )}}</h2>
	</div>
	<hr>
	<div id="paciente">
		<p style="display: inline; margin-right: 30px;"><strong>NOMBRE:</strong> {{$paciente->nombre}}</p>
		<p style="display: inline; margin-right: 30px;"><strong>EDAD:</strong> {{$paciente->edad}} {{$paciente->detalle_edad}}</p>
		<p style="display: inline;"><strong>FECHA:</strong> {{ date("d-m-Y",strtotime($data->created_at))}}</p>
		<br>
		<p style="display: inline;"><strong>MEDICO:</strong> {{$paciente->medico}}</p>
	</div>
</header>