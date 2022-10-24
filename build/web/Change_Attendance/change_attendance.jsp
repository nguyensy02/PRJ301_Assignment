<%-- 
    Document   : change_attendance
    Created on : Oct 21, 2022, 4:16:02 PM
    Author     : nguye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h1><span>FPT University Academic Portal</span>
                    </h1>
                </div>
                <div class="col-md-4">
                    <table>
                        <tr>
                        <p>FAP mobile app (myFAP) is ready at</p>
                        </tr>
                        <tr>
                            <td>
                                <a href="https://apps.apple.com/app/id1527723314"><img src="Image\app-store.svg"
                                                                                       alt="apple store" style="height: 50px; width: auto"></a>
                            </td>
                            <td>
                                <a href="https://play.google.com/store/apps/details?id=com.fuct"><img
                                        src="Image\play-store.svg" alt="play store" style="height: 50px; width: auto"></a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <a href="https://fap.fpt.edu.vn/Student.aspx">Home</a>
                    | <span>View Schedule</span>
                </div>
                <div class="col-md-4">
                    <a href="https://fap.fpt.edu.vn/User/UserDetail.aspx">synthe160686</a> |
                    <a href="https://fap.fpt.edu.vn/Default.aspx">Logout</a> |
                    <span>CAMPUS: FPTU-Hòa Lạc</span>
                </div>
            </div>
            <table>
                <thead>
                    <tr>
                        <td>INDEX</td>
                        <td>NAME</td>
                        <td>CODE</td>
                        <td>ATTENDANCE</td>
                        <td>COMMENT</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach>
                        <tr>
                            <td>1</td>
                            <td>mr A</td>
                            <td>HE1321</td>
                            <td>True</td>
                            <td>wtd</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
