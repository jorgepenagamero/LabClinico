<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="{{ asset('css/pdf.css') }}" rel="stylesheet">
    <style>
        h3{text-align: center; margin: 0;}
        textarea{width: 100%; height: 110px;border: none; white-space: pre-line; resize:none; font-size: 1.2em;}

    </style>
    <style media="print"> button{display: none;} </style>

    <title>Examen Diverso</title>
</head>
<body onload="javascript:print();">

    @include('pdf.header')

    <section style="padding:10px 20px 0 20px;">
        <p>MUESTRA: {{$data->muestra}}</p>
        <p>EXAMEN REALIZADO:  {{$data->examen}}</p>
        <h3>RESULTADO</h3>
        <textarea readonly>{{$data->resultado}}</textarea>
    </section>

    @include('pdf.footer')
    
</div>
</body>
</html>