<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>

    <g:form method="POST" action="login">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control"/>
        </div>
        <g:submitButton name="login">Login</g:submitButton>

    </g:form>
</body>