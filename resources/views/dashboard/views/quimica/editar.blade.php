@foreach($quimica->resultados as $index => $resultado)

	<tr id='{{ 'addr'.$index }}'>

		<td class="text-center"> {{ $index + 1 }} </td>
		<td> 
			<input type="text" value="{{$resultado->examen}}" name='{{ 'examen[' . $index . ']' }}' class="form-control" required/> 
		</td>
		<td> 
			<input type="text" value="{{$resultado->resultado}}" name='{{ 'resultado[' . $index . ']' }}' class="form-control" required/> 
		</td>
		<td> 
			<input type="text" value="{{$resultado->valor}}" name='{{ 'valor[' . $index . ']' }}' class="form-control" required/> 
		</td>

		<td class="text-center">    
			<a onClick="eliminar({{$index}});" class="btn btn-danger" alt="Eliminar"><i class="fa fa-minus"></i></a>
		</td>

	</tr>

@endforeach

<input type="hidden" id="numvalores" value="{{ count($quimica->resultados) }}">

<tr id='{{ 'addr'. count($quimica->resultados) }}'></tr>