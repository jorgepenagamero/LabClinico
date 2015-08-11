<div id="info">
	<P>LABORATORIO CLINICO CENTRAL DE ILOBASCO</P>
	<P>J.V.P.L.C° 2172</P>
	<P>ILOBASCO, CABAÑAS</P>
	<P>AV CARLOS BONILLA, CASA #3 BARRIO EL CENTRO</P>
	<P>TELEFONO: 2300-6477 , 7435-5563</P>
</div>
<div id="logo">
	<h1>{{( $analisis != 'hemograma' ? 'General de ' . ucfirst( $analisis) : ucfirst( $analisis) )}}</h1>
</div>
<hr>
<div id="paciente">
	<p style="margin-right: 20px;"><strong>NOMBRE:</strong> {{$paciente->nombre}}</p>
	<p style="margin-right: 20px;"><strong>EDAD:</strong> {{$paciente->edad}} {{$paciente->detalle_edad}}</p>
	<p><strong>FECHA:</strong> {{ date("d-m-Y",strtotime($data->created_at))}}</p>
	<br>
	<p><strong>MEDICO:</strong> {{$paciente->medico}}</p>
</div>