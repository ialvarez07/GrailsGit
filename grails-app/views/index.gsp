<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Practicando Git</title>
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Google<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="http://www.google.com/gmail">Gmail</a></li>
                <li><a href="https://drive.google.com/drive/my-drive">Drive</a></li>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Git<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="https://github.com/laufernandez">Perfil</a></li>
                <li><a href="https://github.com/ialvarez07/GrailsGit">Repo de la App</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">MercadoLibre<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="http://mercadolibre.turecibo.com">TuRecibo</a></li>
                </g:each>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mi Perfil<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="/grailsGit/change">Cambiar Contraseña</a></li>
                </g:each>
            </ul>
        </li>
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white1.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>NACHO GATO</h1>

            <p>
                Los tres integrantes trabajarán sobre el GrailsGitController.
                Uno creará un método que permitirá sumar 1 a la
                categoría cada vez que un usuario la visite. El segundo
                integrante creará un método que liste, al iniciar la
                aplicación, los sitios activos en verde y los inactivos en
                rojo. El tercero creará un método que permita hacer el
                login de un usuario antes de mostrar la lista de sitios.
                Resolver los conflictos y hacer un merge.
            </p>

            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>

</body>
</html>
