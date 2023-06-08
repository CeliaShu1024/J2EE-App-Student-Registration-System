<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Academic Admin</title>
    <link href="resources/bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
</head>
<body>
  
    <div class="container-fluid">
        <div class="loginbox">
            <div class="header">
                <h1 class="title text-center fs-3">Student Registration System</h1>
            </div>

            <div class="content">
                <p class="desc text-center fs-5">
                Welcome to student affairs system! Please use your staff username and password to log in.
                </p>
                <div class="loginform">
                    <form action="admininfo?method=login" method="post">
                         <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-2">
                                <label class="fw-bold">Username</label>
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="username" placeholder="username">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-2">
                                <label class="fw-bold">Password</label>
                            </div>
                            <div class="col-md-6">
                                <input type="password" class="form-control" name="password" placeholder="password">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                            <input type="submit" class="form-control btn btn-primary" value="Login">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="breakline"></div>
        </div>
    </div>

    <footer class="footer">
        <div class="container-fluid">
                <small class="copyright">Copyright @ SWE306 A2 GROUP 5. All Rights Reserved | SWE2009499 SWE2009495</small>
        </div><!--container-->
    </footer><!--footer-->
</body>
</html>