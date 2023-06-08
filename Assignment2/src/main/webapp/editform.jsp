<%@page import="com.dr.service.impl.FormServiceImpl"%>
<%@page import="com.dr.entity.Form"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Questionnaire</title>
    <link href="resources/bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
</head>
<body>
<%
String SID=request.getParameter("SID");
System.out.println("editform.jsp");
System.out.println("SID为"+SID);
Form f=FormServiceImpl.searchBySID(SID);
request.setAttribute("f",f);
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
                        <h2 class="title text-center fs-3">Student Registration Questionnaire</h2>
                        <br>

                        <!-- fetch data from serviceimpl -->
                        <input type="hidden" name="Q1" id="Q1" value="${f.getQ1()}">
                        <input type="hidden" name="Q2" id="Q2" value="${f.getQ2()}">
                        <input type="hidden" name="Q3" id="Q3" value="${f.getQ3()}">

                        <!-- Questionnaire -->
                        <form name="questionnaire" action="form?method=update&SID=${f.getSID()}" method="post">
                            <!-- Student ID -->
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold">Student ID</label>
                                </div>
                                <div class="col-md-4">
                                    <input class="form-control" type="text" name="SID" value="${SID }" disabled>
                                </div>
                            </div>
                            <br>

                            <!-- Question 1 -->
                            <div class="row">
                                <p class="desc text-justify fs-5">Please fill in the form below to add the questionnaire answer record.</p>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold">Question 1</label>
                                </div>
                            </div>
                            <div class="row">
                                <p class="desc text-justify fs-5">
                                    <span style="color:crimson;">*</span>Choice of your study mode:
                                </p>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q1" value="Online">
                                        <label class="form-check-label fs-5">Online</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q1" value="Physical">
                                        <label class="form-check-label fs-5">Physical</label>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <!-- Question 2 -->
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold">Question 2</label>
                                </div>
                            </div>
                            <div class="row">
                                <p class="desc text-justify fs-5">
                                    <span style="color:crimson;">*</span>Your current qualification:
                                </p>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q2" value="STPM">
                                        <label class="form-check-label fs-5">STPM</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q2" value="Diploma">
                                        <label class="form-check-label fs-5">Diploma</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q2" value="A-Level">
                                        <label class="form-check-label fs-5">A-Level</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q2" value="Others">
                                        <label class="form-check-label fs-5">Others</label>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <!-- Question 3 -->
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold">Question 3</label>
                                </div>
                            </div>
                            <div class="row">
                                <p class="desc text-justify fs-5">
                                    <span style="color:crimson;">*</span>Have you taken your Covid-19 vaccination?
                                </p>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q3" value="Yes, 1 dose.">
                                        <label class="form-check-label fs-5">Yes, 1 dose.</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q3" value="Yes, 2 dose.">
                                        <label class="form-check-label fs-5">Yes, 2 dose.</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="Q3" value="No.">
                                        <label class="form-check-label fs-5">No.</label>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <!-- Question 4 -->
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold">Question 4</label>
                                </div>
                            </div>
                            <div class="row">
                                <p class="desc text-justify fs-5">
                                    <span style="color:crimson;">*</span>About yourself :
                                </p>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <textarea class="form-control" row="5" name="Q4">${f.getQ4()}</textarea>
                                </div>
                            </div>
                            <br>

                            <!-- Question 5 -->
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="form-label fs-5 fw-bold">Question 5</label>
                                </div>
                            </div>
                            <div class="row">
                                <p class="desc text-justify fs-5">
                                    <span style="color:crimson;">*</span>Your expectation for your chosen program:
                                </p>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <textarea class="form-control" row="5" name="Q5">${f.getQ5()}</textarea>
                                </div>
                            </div>
                            <br>

                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-5"></div>
                                <div class="col-md-2">
                                    <input type="submit" class="form-control btn btn-success" value="Update">
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

    <script src="resources/js/form.js"></script>
</body>
</html>