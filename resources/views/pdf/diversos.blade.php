<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <style>
        @page { margin: 20px 30px;}

        p{margin: 0px; padding: 0px; font-size: 14px;}
        h4{margin: 5px 0;}

        .panel{width: 100%; padding: 10px;}
        .panel p {margin: 5px 0px;}
        section{margin-top: 15px; padding: 5px; border: 1px solid gray;}
        h3{text-align: center;}
        textarea{height: auto; white-space: pre-line; border: none;}

    </style>

    <title>Examen Diverso</title>
</head>
<body>

    @include('pdf.header')

    <section>
        <div class="panel">

            <p>MUESTRA: {{$data->muestra}}</p>
            <p>EXAMEN REALIZADO:  {{$data->examen}}</p>
            <h3>RESULTADO</h3>
            <textarea>{{$data->resultado}}</textarea>

        </div>
    </section>

    @include('pdf.footer')
    
</div>
</body>
</html>