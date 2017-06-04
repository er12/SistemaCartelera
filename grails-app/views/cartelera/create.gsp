<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Crear</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="icons/font-awesome-4.7.0/css/font-awesome.min.css"></asset:stylesheet>


</head>
<body>

    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cartelera<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><g:link controller="cartelera" action="edit">Modificar/Eliminar</g:link></li>
            </ul>
        </li>
    </content>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Crear cartelera</h1>

            <g:form controller="cartelera" action="save">
                <label>Cine: </label>
                <g:textField name="cine"/><button type="button"><i class="fa fa-user"></i>Buscar</button> <br/> <br/>
                <label>Fecha de inicio: </label>
                <g:datePicker name="fechaInicio" precision="day" /><br/> <br/>


                <!--Aqui se van a listar las pelis-->
                <br/> <br/>

                <h1>Peliculas: </h1><br/>

                <div name="seccionAgregarPeli">

                    <label>Sala: </label>
                    <g:textField name="sala"/><br/><br/>
                    <label>Nombre: </label>
                    <g:textField name="nombrePeli"/><br/>

                    <label>Dia: </label><br/>
                    <g:select name="dia" from="${["Lunes","Martes","Miércoles","Jueves", "Viernes", "Sábado", "Domingo"].toList()}" value="Jueves"/>
                    <br><br>
                    <label>Hora Inicio: </label><br/>
                    <g:select name="hora" from="${0..12}" value="6"/>
                    <g:select name="minutos"  from="${(10..50).step(5)}" value="00"/>
                    <br><br>
                    <label>Duración: </label><br/>
                    <g:select name="duracionH"  from="${0..12}" value="2"/>
                    <g:select name="duracionM"  from="${0..60}" value="00"/>
                    <br/>
                    <label>Hora fin: </label><label id="horaFinJS">2 horas despues</label>
                    <br><br>
                </div>

                <br/>
                <g:submitButton name="Registrar" value="Registrar"/>
            </g:form>

        </section>
    </div>
<script>
    //$("#horaFinJS").value =

</script>

</body>
</html>
