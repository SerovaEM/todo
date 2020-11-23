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
            <form method="POST" action="/login">
                <div class="form-group">
                    <label for="exampleInputLogin1">User name</label>
                    <input type="text" class="form-control" id="exampleInputLogin1" name="username" placeholder="Enter username">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
                </div>
                <div style="margin-top:10px" class="form-group">
                <button type="submit" class="btn btn-primary">Login</button>
                </div>
                <div class="form-group">
                    <div class="col-md-12 control" style="border-top: 1px solid#888; padding-top:15px">
                            Don't have an account?
                            <a href="/registration">
                                Sign Up Here
                            </a>
                    </div>
                </div>
            </form>
        </div>
</body>
</html>
