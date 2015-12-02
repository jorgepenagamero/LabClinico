<footer>
    <p>F.:_______________________________</p>
    <p style="margin-top:2px;"><strong>Lic. CARMEN MARISOL FLORES ARIAS</strong> J.V.P.L.C° 2172</p>
</footer>

<button id="p" onClick="window.close();" autofocus>Cerrar</button>


<script>
function cargar(){
  if (localStorage.getItem("impresora") == "No") {
    // window.document.getElementById("linkestilo").setAttribute("href", "/css/pdf2.css");
    var x = window.document.getElementById("estilo2");

    document.head.removeChild(x);
  }
};

</script>