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

	<title>Examen Orina</title>
</head>
<body>
	<header>
		<div id="info">
			@include('pdf.infoLab')
		</div>
		<div id="logo">
			<h1>General de Orina</h1>
		</div>
		<hr>
		<div id="paciente">
			<p style="margin-right: 20px;"><strong>NOMBRE:</strong> {{$paciente->nombre}}</p>
			<p style="margin-right: 20px;"><strong>EDAD:</strong> {{$paciente->edad}} {{$paciente->detalle_edad}}</p>
			<p><strong>FECHA:</strong> {{ date("d-m-Y",strtotime($data->created_at))}}</p>
			<br>
			<p><strong>MEDICO:</strong> {{$paciente->medico}}</p>
		</div>

	</header>
	<section>
		<div id="panel">
			<h4>EXAMEN FISICO</h4>
			<table>
				<tr><td>COLOR</td> <td>: {{$data->color}}<td></tr>
				<tr><td>ASPECTO</td> <td>: {{$data->aspecto}}<td></tr>
				<tr><td>DENCIDAD</td> <td>: {{$data->dencidad}}<td></tr>
				<tr><td>REACCION</td> <td>: {{$data->reaccion}}<td></tr>
			</table>

			<h4>SEDIMENTO DE URINARIO</h4>
			
			<table>
				<tr><td>LEUCOCITOS</td><td>: {{$data->leucocitos}}</td></tr>
				<tr><td>HEMATIES</td><td>: {{$data->hematies}}</td></tr>
				<tr><td>CILINDROS</td><td>: {{$data->cilindros}}</td></tr>
				<tr><td>CRISTALES</td><td>: {{$data->cristales}}</td></tr>
				<tr><td>CELULAS</td><td>: {{$data->celulas}}</td></tr>
			</table>
		</div>
		<div id="panel">
			<h4>EXAMEN QUIMICO</h4>
			<table>
				<tr><td>ESTERAS LEUC.</td><td>: {{$data->esterasa}}</td></tr>
				<tr><td>NITRITOS</td><td>: {{$data->nitritos}}</td></tr>
				<tr><td>PROTEINAS</td><td>: {{$data->proteinas}}</td></tr>
				<tr><td>GLUCOSA</td><td>: {{$data->glucosa}}</td></tr>
				<tr><td>C. CETONICOS</td><td>: {{$data->cetonicos}}</td></tr>
				<tr><td>UROBILINOGENO</td><td>: {{$data->urobitmogeno}}</td></tr>
				<tr><td>BILIRRUBINA</td><td>: {{$data->bilirubina}}</td></tr>
				<tr><td>SANGRE</td><td>: {{$data->sangre}}</td></tr>
				<tr><td>BACTERIAS</td><td>: {{$data->bacterias}}</td></tr>
				<tr><td>OTROS</td><td>: {{$data->otros}}</td></tr>
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