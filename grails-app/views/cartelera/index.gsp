<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>SCC</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<content tag="nav">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cartelera<span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><g:link controller="cartelera" action="create">Crear</g:link></li>
            <li><g:link controller="cartelera" action="edit">Modificar/Eliminar</g:link></li>
        </ul>
    </li>
</content>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Sistema de Carteleras de Cine</h1>

        <h2>Lista:</h2>
        <ul>
            <g:each var="c" in="${cines?}">
                <li>
                    ${c.nombre}
                    <ul>
                        <g:each var="cart" in="${c.carteleras?}">

                            <li>

                                <label>${cart.id}</label>
                                <label>${cart.fechaInicio}</label>
                                <ul>


                                </ul>
                            </li>
                        </g:each>


                    </ul>
                </li>
            </g:each>
        </ul>

    </section>
</div>

</body>
</html>
