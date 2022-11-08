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
        <style><%@include file="css/bootstrap.min.css"%></style>
        <style><%@include file="style_change_attendance.css"%></style>

    </head>
    <body>
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
                                <a href="https://apps.apple.com/app/id1527723314"><img src="..\Attendance_Report\Image\app-store.svg"
                                                                                       alt="apple store" style="height: 50px; width: auto"></a>
                            </td>
                            <td>
                                <a href="https://play.google.com/store/apps/details?id=com.fuct"><img
                                        src="..\Attendance_Report\Image\play-store.svg" alt="play store" style="height: 50px; width: auto"></a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-8">
                    <a href="../home">Home</a>|
                    <a href="timetable?lid=${sessionScope.lecturer.id}">View Schedule</a>
                </div>
                <div class="col-md-4">
                    <p>${requestScope.group.supervisor.name}</p> |
                    <a href="../logout">Logout</a> |
                    <span>CAMPUS: FPTU-Hòa Lạc</span>
                </div>
            </div>

            <p> Attendance of ${requestScope.group.subject.name}-${requestScope.group.name}-Slot${requestScope.session.index}</p>
            <form action="att" method="post">
                <input type="hidden" name="lid" value="${requestScope.group.supervisor.id}"/>
                <input type="hidden" name="sesid" value="${requestScope.sesid}"/>
                <table class="attandance">
                    <thead>
                        <tr>
                            <td>ID</td>
                            <td>NAME</td>
                            <td>ATTENDANCE</td>
                            <td>COMMENT</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.attandances}" var="a">
                            <tr>
                                <td>${a.student.id}</td>
                                <td>${a.student.name}</td>
                                <td>
                                    <c:if test="${!a.present}">
                                        <input type="radio" name="${a.student.id}" value="present">present
                                        <input type="radio" name="${a.student.id}" value="absent" checked="checked">absent
                                    </c:if>
                                    <c:if test="${a.present}">
                                        <input type="radio" name="${a.student.id}" value="present" checked="checked">present
                                        <input type="radio" name="${a.student.id}" value="absent" >absent
                                    </c:if>
                                </td>
                                <td>
                                    <input type="text" value="${a.description}" name="des${a.student.id}">
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <input type="submit" value="Save">
            </form>
        </div>
    </body>
</html>
