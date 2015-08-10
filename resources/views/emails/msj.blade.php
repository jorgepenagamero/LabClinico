
<p style='text-align: justify'>
	{{ $data['nombre'] }} te ha escrito a <strong>Websis</strong>.
	<br/><br/>
	
	<strong>Correo:</strong> {{ $data['correo'] }}
	<strong>Nota</strong>: {{ $data['nota'] }}

	<a href="{{ route('dashboard') }}">Ir a Websis</a>.
</p>
