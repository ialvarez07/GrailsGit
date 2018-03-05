<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Practicando Git</title>
</head>
<body>
    <table>
        <g:each var="sitio" in="${lista}">
            <g:if test="${sitio.active==true}">
                <tr style="background-color: #3c763d">
                <td><a href="categories/${sitio.id}">${sitio.name}</a></td>
            </g:if>
            <g:else>
                <tr style="background-color: #761c19">
                <td>${sitio.id}">${sitio.name}</td>
            </g:else>
                </tr>
        </g:each>
    </table>
</body>
</html>