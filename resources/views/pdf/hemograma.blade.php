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
	    .panel{width: 49%; display: inline-block;}
	    .panel p {margin: 5px 0px;}

	    section{margin-top: 15px; padding: 5px; border: 1px solid gray;}

	    footer{ margin-top:40px; text-align: center;}
		
	</style>

	<title>Examen Orina</title>
</head>
<body>
	<header>
		<div id="info">
			@include('pdf.infoLab')
		</div>
		<div id="logo">
			<h1>Hemograma</h1>
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
		<div class="panel">
			<table>
				<tr> <td>GLOBULOS ROJOS X mm3</td> <td>: {{$data->globulos}}</td></tr>
				<tr> <td>HEMATOCRITO %</td> <td>: {{$data->hematocritos}}</td></tr>
				<tr> <td>HEMOGLOBINA gr %</td> <td>: {{$data->hemoglobina}}</td></tr>
				<tr> <td>V.C.M M3</td> <td>: {{$data->volumen}}</td></tr>
				<tr> <td>C.HB.G.M gr %</td> <td>: {{$data->concentracion}}</td></tr>
				<tr> <td>HGB G.M. rr</td> <td>: {{$data->globular}}</td></tr>
			</table>
		</div>
		<div class="panel">
			<table>
				<tr><td>GLOBULOS BLANCOS X mm3</td> <td>: {{$data->blancos}}</td></tr>
				<tr><td>BASOFITOS %</td> <td>: {{$data->basofitos}}</td></tr>
				<tr><td>EOSINOFILOS %</td> <td>: {{$data->eosinofilos}}</td></tr>
				<tr><td>NEUTROFILOS %</td> <td>: {{$data->neutrofilos}}</td></tr>
				<tr><td>LINFOCITOS %</td> <td>: {{$data->liniocitos}}</td></tr>
				<tr><td>MONOCITOS %</td> <td>: {{$data->monocitos}}</td></tr>
				<tr><td>PLAQUETAS X mmS</td> <td>: {{$data->plaquetas}}</td></tr>
			</table>
			
		</div>
			<p>OBSERVACIONES: {{$data->observaciones}}</p>
		
	</section>
	<footer>
		<p>FIRMA:_______________________________</p>
		<p><strong>CARMEN MARISOL FLORES ARIAS</strong></p>
	</footer>
</div>
</body>
</html>