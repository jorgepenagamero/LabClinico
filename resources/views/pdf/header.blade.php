<header style="width: 100%;">
	
	{{-- <img src="/img/logo.png" alt="" style="width: 75px; float:left; margin-right:10px;"> --}}
	<div style="height:50px; border-bottom: 1px solid gray; padding-bottom: -5px;">
		
	<div style="position: absolute; display: inline-block; margin: 0px; font-size: 1em;">
		<P>LABORATORIO CLÍNICO CENTRAL DE ILOBASCO</P>
		<P>INSCRIPCIÓN AL CONSEJO DE SALUD PÚBLICA 1554</P>
		<P>AV CARLOS BONILLA, CASA #3 BARRIO EL CENTRO, ILOBASCO, CABAÑAS</P>
		<P>TELEFONO: 2300-6477 , 7435-5563</P>
	</div>
	<div style="position: absolute; top:0; right: 50px; font-size: 2.7em; text-align: center; font-weight: 500; font-family: 'Times New Roman';">
		@if($analisis == 'orina' or $analisis == 'heces')
			General de <br> {{ ucfirst($analisis)}}
		@elseif($analisis == 'diversos')
		@else
			<span style="font-size:1.4em;">{{ ucfirst($analisis)}}</span>
		@endif		
	</div>
	</div>

	<div id="paciente" style="margin: 2px 0;">
		<p style="display: inline; margin-right: 200px;"><strong>NOMBRE: {{strtoupper($paciente->nombre)}}</strong></p>
		<p style="display: inline; margin-right: 30px;">EDAD: 
			@if($paciente->edad != 0)
			{{$paciente->edad}} {{$paciente->detalle_edad}}
			@endif
		</p>
		<p style="display: inline;">FECHA: {{ date("d-m-Y",strtotime($data->created_at))}}</p>
		<br>
		<p style="display: inline;">MÉDICO: {{$paciente->medico}}</p>
	</div>
</header>