<header style="width: 100%;">
	
	{{-- <img src="/img/logo.png" alt="" style="width: 75px; float:left; margin-right:10px;"> --}}
	<div style="height:50px;">
		
	<div style="position: absolute; display: inline-block; margin: 2px 0px; font-size: 1em;">
		<P>LABORATORIO CLÍNICO CENTRAL DE ILOBASCO</P>
		<P>INSCRIPCIÓN AL CONSEJO DE SALUD PÚBLICA</P>
		<P>AV CARLOS BONILLA, CASA #3 BARRIO EL CENTRO, ILOBASCO, CABAÑAS</P>
		<P>TELEFONO: 2300-6477 , 7435-5563</P>
	</div>
	<div style="position: absolute; width:90%; float:right; font-size: 2.1em; text-align: right; margin-top:20px; font-weight: 500;:">
		{{( $titulo )}}
	</div>
	</div>

	<div id="paciente" style="margin: 2px 0;">
		<p style="display: inline; margin-right: 30px;"><strong>NOMBRE:</strong> {{$paciente->nombre}}</p>
		<p style="display: inline; margin-right: 30px;"><strong>EDAD:</strong> {{$paciente->edad}} {{$paciente->detalle_edad}}</p>
		<p style="display: inline;"><strong>FECHA:</strong> {{ date("d-m-Y",strtotime($data->created_at))}}</p>
		<br>
		<p style="display: inline;"><strong>MÉDICO:</strong> {{$paciente->medico}}</p>
	</div>
</header>