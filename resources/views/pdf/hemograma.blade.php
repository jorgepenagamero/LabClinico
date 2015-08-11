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
	    table{width: 100%}

	    section{margin-top: 15px; padding: 5px; border: 1px solid gray;}

	    footer{ margin-top:40px; text-align: center;}
		
	</style>

	<title>Examen Orina</title>
</head>
<body>
	<header>

		@include('pdf.header')

	</header>
	<section>
		<div class="panel">
			<table>
				<tr><td style="width:200px;">GLOBULOS ROJOS X mm3</td> <td>: {{$data->globulos}}</td></tr>
				<tr><td style="width:200px;">HEMATOCRITO %</td> <td>: {{$data->hematocritos}}</td></tr>
				<tr><td style="width:200px;">HEMOGLOBINA gr %</td> <td>: {{$data->hemoglobina}}</td></tr>
				<tr><td style="width:200px;">V.C.M M3</td> <td>: {{$data->volumen}}</td></tr>
				<tr><td style="width:200px;">C.HB.G.M gr %</td> <td>: {{$data->concentracion}}</td></tr>
				<tr><td style="width:200px;">HGB G.M. rr</td> <td>: {{$data->globular}}</td></tr>
			</table>
		</div>
		<div class="panel">
			<table>
				<tr><td style="width:200px;">GLOBULOS BLANCOS X mm3</td> <td>: {{$data->blancos}}</td></tr>
				<tr><td style="width:200px;">BASOFITOS %</td> <td>: {{$data->basofitos}}</td></tr>
				<tr><td style="width:200px;">EOSINOFILOS %</td> <td>: {{$data->eosinofilos}}</td></tr>
				<tr><td style="width:200px;">NEUTROFILOS %</td> <td>: {{$data->neutrofilos}}</td></tr>
				<tr><td style="width:200px;">LINFOCITOS %</td> <td>: {{$data->liniocitos}}</td></tr>
				<tr><td style="width:200px;">MONOCITOS %</td> <td>: {{$data->monocitos}}</td></tr>
				<tr><td style="width:200px;">PLAQUETAS X mmS</td> <td>: {{$data->plaquetas}}</td></tr>
			</table>
			
		<br>
		</div>
			<table>
			
			<tr><td style="width:200px;">OBSERVACIONES: {{$data->observaciones}}</td></tr>
			
			</table>
		
	</section>
	<footer>
		<p>FIRMA:_______________________________</p>
		<p><strong>CARMEN MARISOL FLORES ARIAS</strong></p>
	</footer>
</div>
</body>
</html>