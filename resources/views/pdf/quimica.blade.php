<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<style>
	    @page { margin: 20px 30px;}

	    p{margin: 0px; padding: 0px; font-size: 14px;}
	    h4{margin: 5px 0;}

	    .panel{width: 49%; display: inline-block;}
	    .panel p {margin: 5px 0px;}
	    table{width: 100%;}
	    table th{border-bottom: 1px solid gray;}
		.fila{width: 240px; text-align: center;}
	    section{margin-top: 15px; padding: 5px; border: 1px solid gray;}
		
	</style>

	<title>Examen Quimica</title>
</head>
<body>

	@include('pdf.header')

	<section>
		<div class="panel">
		<table>
			<tr>
				<th class="fila">Examen Realizado</th>
				<th class="fila">Resultado</th>
				<th class="fila">Valores Normales</th>
			</tr>
		@foreach($data as $d)
			<tr>
				<td class="fila">{{$d->examen}}</td>
				<td class="fila">{{$d->resultado}}</td>
				<td class="fila">{{$d->valor}}</td>
			</tr>
		@endforeach
		</table>
		</div>
	</section>

	@include('pdf.footer')
	
</div>
</body>
</html>