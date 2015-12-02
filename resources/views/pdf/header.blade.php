<header style="width: 100%;">
	
	<img src="/img/logo.png" alt="" id="logo" style="width: 55px; float:left; margin-right:10px;">
	<div id="topheader">
		
	<div id="datos">
		<P>LABORATORIO CLÍNICO CENTRAL DE ILOBASCO</P>
		<P>INSCRIPCIÓN AL CONSEJO DE SALUD PÚBLICA 1554</P>
		<P>AV CARLOS BONILLA, CASA #3 BARRIO EL CENTRO, ILOBASCO, CABAÑAS</P>
		<P>TELEFONO: 2300-6477 , 7435-5563</P>
	</div>
	<div id="titulo">
		@if($analisis == 'orina' or $analisis == 'heces')
			General de <br> {{ ucfirst($analisis)}}
		@elseif($analisis == 'diversos' or $analisis == 'quimica')
		@else
			<span style="font-size:1.4em;">{{ ucfirst($analisis)}}</span>
		@endif		
	</div>
	</div>

	<div id="paciente">
		<p style="display: inline; margin-right: 200px;"><strong>NOMBRE: {{strtoupper($paciente->nombre)}}</strong></p>
		<p style="display: inline; margin-right: 30px;">EDAD: 
			@if($paciente->edad != 0)
			{{$paciente->edad}} {{$paciente->detalle_edad}}
			@endif
		</p>
		<p style="display: inline;">FECHA: {{ date("d-m-Y",strtotime($data->created_at))}}</p>
		<br>
		<p style="display: inline;">MÉDICO: {{ strtoupper($paciente->medico)}}</p>
	</div>
</header>