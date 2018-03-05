<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Practicando Git</title>
</head>
<body>
<table>
    <th>Nombre</th>
    <g:each var="category" in="${categoryList}">
        <tr>
            <td><a href="/grailsGit/categoryVisities/${category.id}">${category.name}</a></td>
        </tr>
    </g:each>
</table>
</body>
</html>