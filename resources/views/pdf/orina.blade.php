<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link type="text/css" href="/css/pdf.css" rel="Stylesheet" id="estilo">
	<link type="text/css" href="/css/pdf2.css" rel="Stylesheet" id="estilo2">
    <style media="print"> button{display: none;} </style>
	<title>Examen Orina</title>
</head>
<body onload="javascript:print(); cargar();">
		
	@include('pdf.header')

	<section>
		
		<div class="panel">
			<h4>EXAMEN FISICO</h4>
			<table>
				<tr><td style="width:100px;">COLOR</td> <td>: {{$data->color}}<td></tr>
				<tr><td style="width:100px;">ASPECTO</td> <td>: {{$data->aspecto}}<td></tr>
				<tr><td style="width:100px;">DENCIDAD</td> <td>: {{$data->dencidad}}<td></tr>
				<tr><td style="width:100px;">REACCION</td> <td>: {{$data->reaccion}}<td></tr>
			</table>

			<h4>SEDIMENTO URINARIO</h4>
			
			<table>
				<tr><td style="width:100px;">LEUCOCITOS</td><td>: {{$data->leucocitos}}</td></tr>
				<tr><td style="width:100px;">HEMATIES</td><td>: {{$data->hematies}}</td></tr>
				<tr><td style="width:100px;">CILINDROS</td><td>: {{$data->cilindros}}</td></tr>
				<tr><td style="width:100px;">CRISTALES</td><td>: {{$data->cristales}}</td></tr>
				<tr><td style="width:100px;">CELULAS</td><td>: {{$data->celulas}}</td></tr>
			</table>
		</div>
		<div class="panel">
			<h4>EXAMEN QUIMICO</h4>
			<table>
				<tr><td style="width:100px;">ESTERAS LEUC.</td><td>: {{$data->esterasa}}</td></tr>
				<tr><td style="width:100px;">NITRITOS</td><td>: {{$data->nitritos}}</td></tr>
				<tr><td style="width:100px;">PROTEINAS</td><td>: {{$data->proteinas}}</td></tr>
				<tr><td style="width:100px;">GLUCOSA</td><td>: {{$data->glucosa}}</td></tr>
				<tr><td style="width:100px;">C. CETONICOS</td><td>: {{$data->cetonicos}}</td></tr>
				<tr><td style="width:100px;">UROBILINOGENO</td><td>: {{$data->urobitmogeno}}</td></tr>
				<tr><td style="width:100px;">BILIRRUBINA</td><td>: {{$data->bilirubina}}</td></tr>
				<tr><td style="width:100px;">SANGRE</td><td>: {{$data->sangre}}</td></tr>
				<tr><td style="width:100px;">BACTERIAS</td><td>: {{$data->bacterias}}</td></tr>
				<tr><td style="width:100px;">OTROS</td><td>: {{$data->otros}}</td></tr>
			</table>
		</div>
	</section>
	
	@include('pdf.footer')

</div>
</body>
</html>