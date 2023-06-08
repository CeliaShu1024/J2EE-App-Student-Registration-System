<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student Info</title>
    <link href="resources/bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="container-fluid pageheader">
        <div class="content">
            <h1 class="title text-center">Student Registration System</h1>
        </div>
    </div>

    <div class="container-fluid sections-wrapper">
        <div class="section">
            <div class="section-inner">
                <div class="content">
                    <div class="item">
                        <a href="afterlogin.jsp" class="btn btn-outline-danger">Return to Homepage</a>
                        <h2 class="title text-center fs-3">Student Registration Information Adding Form</h2>
                        <br>

                        <!--Student Info-->
                        <form action="student?method=add" method="post">
                            <div class="row">
                                <div class="col-md-1">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        SID</label>
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" name="SID" placeholder="Student ID">
                                </div>
                            </div>

                            <p class="desc text-justify fs-5" style="margin-top: 40px;">Please fill in the form below to add a student information record.</p>
                            
                            <!--Student Information-->
                            <div class="row">
                                <div class="col-md-1">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        Name</label>
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" name="SName" placeholder="Student Full Name">
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-1">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        Gender</label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-select" name="Gender">
                                        <option selected value="NULL">--please select--</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold" for="Passport">
                                        <span style="color:crimson;">*</span>
                                        NRIC / Passport</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" name="Passport" id="Passport" placeholder="NRIC No. / Passport"> 
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold" for="Programme">
                                        <span style="color:crimson;">*</span>
                                        Programme</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <select class="form-select" name="Programme" id="Programme">
                                        <option selected value="NULL">--please select--</option>
                                        <option value="Accounting">Accounting</option>
                                        <option value="Applied Mathematics">Applied Mathematics</option>
                                        <option value="Artificiall Intelligence">Artificial Intelligence</option>
                                        <option value="Chemical Engineering">Chemical Engineering</option>
                                        <option value="Computer Science Technology">Computer Science Technology</option>                                        
                                        <option value="Digital Media Technology">Digital Media Technology</option>                                        
                                        <option value="Finance">Finance</option>
                                        <option value="Management in International Business">Management in International Business</option>
                                        <option value="Software Engineering">Software Engineering</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="form-label fs-5 fw-bold" for="Intake">
                                        <span style="color:crimson;">*</span>
                                        Intake</label>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-6">
                                        <label class="form-label fs-5 fw-bold" for="Regtime">
                                            <span style="color:crimson;">*</span>
                                            Registration Time</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <select class="form-select" name="Intake" id="Intake">
                                        <option value="NULL">--please select--</option>
                                        <option value="202209">202209</option>
                                        <option value="202302">202302</option>
                                        <option value="202304">202304</option>
                                        <option value="202309">202309</option>
                                        <option value="202402">202402</option>
                                        <option value="202404">202404</option>
                                    </select>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-4">
                                    <select class="form-select" name="Regtime" id="Regtime">
                                        <option value="NULL">--please select--</option>
                                        <option value="202209">202209</option>
                                        <option value="202302">202302</option>
                                        <option value="202304">202304</option>
                                        <option value="202309">202309</option>
                                        <option value="202402">202402</option>
                                        <option value="202404">202404</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="form-label fs-5 fw-bold" for="Nationality">
                                        <span style="color:crimson;">*</span>
                                        Nationality</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <select class="form-select" name="Nationality" id="Nationality">
                                        <option value="NULL">--please select--</option>
                                        <option value="Malaysian">Malaysian</option>
                                        <option value="Chinese">Chinese</option>
                                        <option value="Indonesian">Indonesian</option>
                                        <option value="Indian">Indian</option>
                                        <option value="Tunisian">Tunisian</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-1">
                                    <label class="form-label fs-5 fw-bold" for="phone">
                                        <span style="color:crimson;">*</span>
                                        Phone</label>
                                </div>
                                <div class="col-md-5">
                                    <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone Number">
                                </div>
                            </div>

                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-5"></div>
                                <div class="col-md-2">
                                    <input type="submit" class="form-control btn btn-primary" value="Add">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer-dynamic">
        <div class="container-fluid">
                <small class="copyright">Copyright @ SWE306 A2 GROUP 5. All Rights Reserved | SWE2009499 SWE2009495</small>
        </div><!--container-->
    </footer><!--footer-->
</body>
</html>