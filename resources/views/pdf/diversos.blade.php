<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" href="/css/pdf.css" rel="Stylesheet" id="estilo">
    <link type="text/css" href="/css/pdf2.css" rel="Stylesheet" id="estilo2">
    <style>
        h3{text-align: center; margin: 0;}

         .form-control {
             border-radius: 0 !important;
             box-shadow: none;
             /*border-color: #d2d6de;*/
         }
         .form-control {
             display: block;
             width: 100%;
             padding: 6px 12px;
             font-size: 14px;
             line-height: 1.42857143;
             color: #555;
             background-color: #fff;
             background-image: none;
             border: 1px solid #ccc;
             border-radius: 4px;
             -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
             box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
             -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
             -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
             transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
         }
        textarea {
             font-family: inherit;
             font-size: inherit;
             line-height: inherit;
             overflow: hidden;
             margin: 0;
             font: inherit;
             color: inherit;
             -webkit-box-sizing: border-box;
             -moz-box-sizing: border-box;
             box-sizing: border-box;
             -webkit-appearance: textarea;
             background-color: white;
             border: 1px solid;
             border-image-source: initial;
             border-image-slice: initial;
             border-image-width: initial;
             border-image-outset: initial;
             border-image-repeat: initial;
             -webkit-rtl-ordering: logical;
             -webkit-user-select: text;
             flex-direction: column;
             padding: 2px;
             white-space: pre-wrap;
             word-wrap: break-word;
         }
        textarea, keygen, select {
             margin: 0em;
             font: 13.3333px Arial;
             text-rendering: auto;
             color: initial;
             letter-spacing: normal;
             word-spacing: normal;
             text-transform: none;
             text-indent: 0px;
             text-shadow: none;
             display: inline-block;
             text-align: start;
             height: 110px;
         }
         textarea, keygen, select, meter, progress {
             -webkit-writing-mode: horizontal-tb;
         }

    </style>
    <style media="print"> button{display: none;} </style>

    <title>Examen Diverso</title>
</head>
<body onload="javascript:print(); cargar();">

    @include('pdf.header')

    <section style="padding:10px 20px 0 20px;">
        <p>MUESTRA: {{$data->muestra}}</p>
        <p>EXAMEN REALIZADO:  {{$data->examen}}</p>
        <h3>RESULTADO</h3>
        {{-- <p>{{$data->resultado}}</p> --}}
        {{-- <textarea readonly>{{$data->resultado}}</textarea> --}}
        <textarea rows="8" class="form-control" style="white-space: normal; resize: none;" required>
          {{$data->resultado}}
        </textarea>
    </section>

    @include('pdf.footer')
    
</div>
</body>
</html>