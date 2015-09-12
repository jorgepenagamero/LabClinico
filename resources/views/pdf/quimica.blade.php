<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link href="{{ asset('css/pdf.css') }}" rel="stylesheet">
	<style>
	    table th{border-bottom: 1px solid black;}
		.fila{width: 240px; text-align: center; font-size:1.1em; }
		.line{position: fixed; border-left: 1px solid gray; height: 160px; width: 1px; }
		.uno{left: 253px; }
		.dos{right: 128px; }
	</style>
    <style media="print"> button{display: none;} </style>
	<title>Examen Quimica</title>
</head>
<body onload="javascript:print();">

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
	</section>

	@include('pdf.footer')
	
</div>
</body>
</html>