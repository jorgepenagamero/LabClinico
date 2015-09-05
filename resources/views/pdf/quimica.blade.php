<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link href="{{ asset('css/pdf.css') }}" rel="stylesheet">
	<style>
	    table th{border-bottom: 1px solid gray;}
		.fila{width: 240px; text-align: center; font-size:1.1em;}		
	</style>
    <style media="print"> button{display: none;} </style>
	<title>Examen Quimica</title>
</head>
<body onload="javascript:print();">

	@include('pdf.header')

	<section>
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
	</section>

	@include('pdf.footer')
	
</div>
</body>
</html>