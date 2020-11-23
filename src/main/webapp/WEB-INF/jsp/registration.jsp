<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
    <title>My TO-DO List</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
          rel="stylesheet">

</head>

<body>
<div class="modal-dialog">
<form:form method="POST" modelAttribute="userForm">
        <div class="form-group">
            <label for="inputLogin">User name</label>
            <form:input type="text" class="form-control has-error" id="inputLogin" placeholder="Enter username" path="username"  data-required-error="Поле не заполнено"/>
            <form:errors path="username"/>
            <p class="text-danger">
                ${usernameError}
            </p>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <form:input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" path="password"  data-required-error="Поле не заполнено"/>
            <form:errors path="password"/>
            <p class="text-danger">
                ${passwordError}
            </p>
            </div>

        <div class="form-group">
            <label for="exampleInputPassword2">Confirm Password</label>
            <form:input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" path="passwordConfirm"  data-required-error="Поле не заполнено"/>
        </div>
        <div style="margin-top:10px" class="form-group">
            <button type="submit" class="btn btn-primary">Sign Up</button>
        </div>
    </form:form>
</div>
</body>

</html>
