<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link type="text/css" href="/css/pdf.css" rel="Stylesheet" id="estilo">
	<link type="text/css" href="/css/pdf2.css" rel="Stylesheet" id="estilo2">

    <style media="print"> button{display: none;} </style>

	<title>Examen Heces</title>
</head>
<body onload="javascript:print(); cargar();">

	@include('pdf.header')

	<section>
		<div class="panel">
			<h4>EXAMEN MACROSCOPICO</h4>

			<table>
				<tr><td style="width:140px;">COLOR</td><td>: {{$data->color}}</td></tr>
				<tr><td style="width:140px;">CONSISTENCIA</td><td>: {{$data->consistencia}}</td></tr>
				{{-- <tr><td style="width:140px;">SANGRE OCULTA</td><td>: {{$data->sangre}}</td></tr> --}}
				<tr><td style="width:140px; font-size: .8em;">RESTOS MACROSCOPICOS</td><td>: {{$data->restos}}</td></tr>
				<tr><td style="width:140px;">MUCUS</td><td>: {{$data->mucus}}</td></tr>
			</table>

			<h4>EXAMEN MICROSCOPICO</h4>
			
			<table>
				<tr><td style="width:140px;">LEUCOSITOS</td><td>: {{$data->leucositos}}</td></tr>
				<tr><td style="width:140px;">ERITROCITOS</td><td>: {{$data->entrocitos}}</td></tr>
				<tr><td style="width:140px;">LEVADURAS</td><td>: {{$data->levadura}}</td></tr>
				<tr><td style="width:140px;">FLORA BACTERIANA</td><td>: {{$data->flora}}</td></tr>
			</table>
		</div>
		<div class="panel">
			<table>
				<tr><td style="width:100px;">PROTOZOARIOS</td><td></td></tr>
				<tr><td style="width:100px;">ACTIVOS</td><td>: {{$data->protozoarios}}</td></tr>
				<tr><td style="width:100px;">QUISTES</td><td>: {{$data->quistes}}</td></tr>
				<tr><td style="width:100px;"><br>METAZOARIOS</td><td></td></tr>
				<tr><td style="width:100px;">LARVAS</td><td>: {{$data->larvas}}</td></tr>
				<tr><td style="width:100px;">HUEVOS</td><td>: {{$data->metazueros}}</td></tr>
				<tr><td><br><br>OBSERVACIONES</td><td><br><br>: {{$data->observaciones}}</td></tr>
			</table>
		</div>	
	</section>

	@include('pdf.footer')

</div>
</body>
</html>