<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<style>
	    @page { margin: 20px 30px;}

	    header{}
	    p{margin: 0px; padding: 0px; font-size: 14px;}
	    h4{margin: 5px 0;}

	    #info{  width: 64%; display: inline-block;}
	    #logo{  width: 35%; display: inline-block; text-align: right;}
	    #paciente p {display: inline;}
	    #panel{width: 49%; display: inline-block;}
	    table tr{font-size: 12px;}
	    table{width: 100%}

	    section{margin-top: 15px; padding: 5px; border: 1px solid gray;}

	    footer{ margin-top:35px; text-align: center;}
		
	</style>

	<title>Examen Heces</title>
</head>
<body>
	<header>
		@include('pdf.header')
	</header>
	<section>
		<div id="panel">
			<h4>EXAMEN MACROSCOPICO</h4>

			<table>
				<tr><td style="width:150px;">COLOR</td><td>: {{$data->color}}</td></tr>
				<tr><td style="width:150px;">CONSISTENCIA</td><td>: {{$data->consistencia}}</td></tr>
				<tr><td style="width:150px;">SANGRE OCULTA</td><td>: {{$data->sangre}}</td></tr>
				<tr><td style="width:150px;">RESTOS MACROSCOPICOS</td><td>: {{$data->restos}}</td></tr>
				<tr><td style="width:150px;">MUCUS</td><td>: {{$data->mucus}}</td></tr>
			</table>

			<h4>EXAMEN MICROSCOPICO</h4>
			
			<table>
				<tr><td style="width:150px;">LEUCOSITOS</td><td>: {{$data->leucositos}}</td></tr>
				<tr><td style="width:150px;">ERITROCITOS</td><td>: {{$data->entrocitos}}</td></tr>
				<tr><td style="width:150px;">LEVADURA</td><td>: {{$data->levadura}}</td></tr>
				<tr><td style="width:150px;">FLORA BACTERIANA</td><td>: {{$data->flora}}</td></tr>
			</table>
		</div>
		<div id="panel">
			<br>
			<table>
				<tr><td style="width:150px;">PROTOZOARIOS ACTIVOS</td><td>: {{$data->protozoarios}}</td></tr>
				<tr><td style="width:150px; padding-top:10px;">QUISTES</td><td>: {{$data->quistes}}</td></tr>
				<tr><td style="width:150px; padding-top:10px;">METAZOARIOS</td><td>: {{$data->metazueros}}</td></tr>
				<tr><td style="width:150px; padding-top:10px;">LARVAS/HUEVOS</td><td>: {{$data->larvas}}</td></tr>
				<tr><td style="width:150px; padding-top:10px;">OBSERVACIONES</td><td>: {{$data->observaciones}}</td></tr>
			</table>
		</div>		
	</section>
	<footer>
		<p>FIRMA:_______________________________</p>
		<p><strong>CARMEN MARISOL FLORES ARIAS</strong></p>
	</footer>
</div>
</body>
</html>