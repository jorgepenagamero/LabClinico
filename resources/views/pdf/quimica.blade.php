<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link type="text/css" href="/css/pdf.css" rel="Stylesheet" id="estilo">
	<link type="text/css" href="/css/pdf2.css" rel="Stylesheet" id="estilo2">
	<style>
	    table th{border-bottom: 1px solid black;}
	    table td{font-size: 5px;}
	</style>
    <style media="print"> button{display: none;} </style>
	<title>Examen Quimica</title>
</head>
<body onload="javascript:print(); cargar();">

	@include('pdf.header')

	<section style="padding:0px">
		<table>
			<tr>
				<th class="fila">Examen Realizado</th>
				<th class="fila">Resultado</th>
				<th class="fila">Valores Normales</th>
			</tr>
		@foreach($data as $d)
			<tr>
				<td style="border-bottom: 1px solid gray;"class="fila">{{$d->examen}}</td>
				<span class="line uno"></span>
				<td style="border-bottom: 1px solid gray;"class="fila">{{$d->resultado}}</td>
				<span class="line dos"></span>
				{{-- <td style="border-bottom: 1px solid gray;"class="fila">{{$d->valor}}</td> --}}
				<td style="border-bottom: 1px solid gray;"class="fila">
					<?php 
						$i = explode(',', $d->valor);

						foreach ($i as $value) {
							echo $value;
							echo "<br>";
						}
					 ?>

				</td>
			</tr>
		@endforeach
		</table>
		<p>{{$data->observaciones}}</p>
	</section>

	@include('pdf.footer')
	
</div>
</body>
</html>