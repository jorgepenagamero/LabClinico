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
	    table tr{font-size: 13px;}
	    table{width: 100%}

	    section{margin-top: 15px; padding: 5px; border: 1px solid gray;}

	    footer{ margin-top:25px; text-align: center;}
		
	</style>

	<title>Examen Orina</title>
</head>
<body>
	<header>
		
		@include('pdf.header')
		
	</header>
	<section>
		<div id="panel">
			<h4>EXAMEN FISICO</h4>
			<table>
				<tr><td style="width:100px;">COLOR</td> <td>: {{$data->color}}<td></tr>
				<tr><td style="width:100px;">ASPECTO</td> <td>: {{$data->aspecto}}<td></tr>
				<tr><td style="width:100px;">DENCIDAD</td> <td>: {{$data->dencidad}}<td></tr>
				<tr><td style="width:100px;">REACCION</td> <td>: {{$data->reaccion}}<td></tr>
			</table>

			<h4>SEDIMENTO DE URINARIO</h4>
			
			<table>
				<tr><td style="width:100px;">LEUCOCITOS</td><td>: {{$data->leucocitos}}</td></tr>
				<tr><td style="width:100px;">HEMATIES</td><td>: {{$data->hematies}}</td></tr>
				<tr><td style="width:100px;">CILINDROS</td><td>: {{$data->cilindros}}</td></tr>
				<tr><td style="width:100px;">CRISTALES</td><td>: {{$data->cristales}}</td></tr>
				<tr><td style="width:100px;">CELULAS</td><td>: {{$data->celulas}}</td></tr>
			</table>
		</div>
		<div id="panel">
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
	<footer>
		<p>FIRMA:_______________________________</p>
		<p><strong>CARMEN MARISOL FLORES ARIAS</strong></p>
	</footer>
</div>
</body>
</html>