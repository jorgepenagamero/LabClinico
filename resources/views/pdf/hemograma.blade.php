<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link href="{{ asset('css/pdf.css') }}" rel="stylesheet">
    <style media="print"> button{display: none;} </style>
	<title>Examen Hemograma</title>
</head>
<body onload="javascript:print();">

	@include('pdf.header')

	<section>
		<div class="panel">
			<table>
				<tr><td style="width:160px;">GLOBULOS R, X mm3</td> <td>: {{$data->globulos}}</td></tr>
				<tr><td style="width:160px;">HEMATOCRITO %</td> <td>: {{$data->hematocritos}}</td></tr>
				<tr><td style="width:160px;">HEMOGLOBINA gr %</td> <td>: {{$data->hemoglobina}}</td></tr>
				<tr><td style="width:160px;">V.C.M M3</td> <td>: {{$data->volumen}}</td></tr>
				<tr><td style="width:160px;">C.HB.G.M gr %</td> <td>: {{$data->concentracion}}</td></tr>
				<tr><td style="width:160px;">HGB G.M. rr</td> <td>: {{$data->globular}}</td></tr>
			</table>
		</div>
		<div class="panel">
			<table>
				<tr><td style="width:160px;">GLOBULOS B. X mm3</td> <td>: {{$data->blancos}}</td></tr>
				<tr><td style="width:160px;">BASOFITOS %</td> <td>: {{$data->basofitos}}</td></tr>
				<tr><td style="width:160px;">EOSINOFILOS %</td> <td>: {{$data->eosinofilos}}</td></tr>
				<tr><td style="width:160px;">NEUTROFILOS %</td> <td>: {{$data->neutrofilos}}</td></tr>
				<tr><td style="width:160px;">LINFOCITOS %</td> <td>: {{$data->liniocitos}}</td></tr>
				<tr><td style="width:160px;">MONOCITOS %</td> <td>: {{$data->monocitos}}</td></tr>
				<tr><td style="width:160px;">PLAQUETAS X mmS</td> <td>: {{$data->plaquetas}}</td></tr>
			</table>
		</div>
		<table>
		<tr><td style="width:160px;"><br>OBSERVACIONES: {{$data->observaciones}}</td></tr>
		</table>
		
	</section>
	
	@include('pdf.footer')

</div>
</body>
</html>