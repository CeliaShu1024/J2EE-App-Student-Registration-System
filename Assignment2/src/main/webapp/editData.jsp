<%@page import="com.dr.service.impl.StudentServiceImpl"%>
<%@page import="com.dr.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student Info</title>
    <link href="resources/bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	System.out.println("----------------------------------------");
	System.out.println("editData.jsp");
	String Passport=request.getParameter("IC");
	Student result=StudentServiceImpl.searchByIC(Passport);
	request.setAttribute("s",result);
%>

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
                        <h2 class="title text-center fs-3">Student Registration Information Edit Form</h2>
                        <br>

                        <!-- Fetch Data from Service implementation -->
                        <input type="hidden" name="Gender" id="Gender" value="${s.getGender()}">
                        <input type="hidden" name="Programme" id="Programme" value="${s.getProgramme()}">
                        <input type="hidden" name="Intake" id="Intake" value="${s.getIntake()}">
                        <input type="hidden" name="Regtime" id="Regtime" value="${s.getRegtime()}">
                        <input type="hidden" name="Nationality" id="Nationality" value="${s.getNationality()}">

                        <!--Student Info-->
                        <form name="studentinfo" action="student?method=update&SID=${s.getSID() }" method="post">
                            <div class="row">
                                <div class="col-md-1">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        SID</label>
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" name="SID" value="${s.getSID()}" disabled>
                                </div>
                            </div>

                            <p class="desc text-justify fs-5" style="margin-top: 40px;">Please fill in the form below to edit the student information record.</p>

                            <!--Student Infomation-->
                            <div class="row">
                                <div class="col-md-1">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        Name</label>
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" name="SName" value="${s.getSName()}">
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-1">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        Gender</label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-select" name="Gender">
                                        <option value="">--please select--</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        NRIC / Passport</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" name="Passport" value="${s.getPassport()}"> 
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        Programme</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <select class="form-select" name="Programme">
                                        <option selected value="">--please select--</option>
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
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        Intake</label>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-6">
                                        <label class="form-label fs-5 fw-bold">
                                            <span style="color:crimson;">*</span>
                                            Registration Time</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <select class="form-select" name="Intake">
                                        <option value="">--please select--</option>
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
                                    <select class="form-select" name="Regtime"">
                                        <option value="">--please select--</option>
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
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        Nationality</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <select class="form-select" name="Nationality">
                                        <option value="">--please select--</option>
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
                                <div class="col-md-3">
                                    <label class="form-label fs-5 fw-bold">
                                        <span style="color:crimson;">*</span>
                                        Phone</label>
                                </div>
                                <div class="col-md-5">
                                    <input type="text" class="form-control" name="phone" value="${s.getPhone()}">
                                </div>
                            </div>

                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-5"></div>
                                <div class="col-md-2">
                                    <input type="submit" class="form-control btn btn-success" name="submit" value="Update">
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
    
    <script src="resources/js/data.js" type="text/javascript"></script>
</body>
</html>