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
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <a href="https://fap.fpt.edu.vn/Student.aspx">Home</a>
                    | <span>View Schedule</span>
                </div>
                <div class="col-md-4">
                    <a href="https://fap.fpt.edu.vn/User/UserDetail.aspx">${requestScope.group.supervisor.name}</a> |
                    <a href="https://fap.fpt.edu.vn/Default.aspx">Logout</a> |
                    <span>CAMPUS: FPTU-Hòa Lạc</span>
                </div>
            </div>
            <p> Attendance of ${requestScope.group.subject.name}-${requestScope.group.name}</p>
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
                    <c:forEach items="${requestScope.attandances}" var="a">
                        <tr>
                            <td>${a.student.id}</td>
                            <td>${a.student.name}</td>
                            <td></td>
                            <td>
                                <form action="" method="get">
                                    <c:if test="${!a.present}">
                                        <input type="radio" name="attend" value="present">present
                                        <input type="radio" name="attend" value="absent" checked="checked">absent
                                    </c:if>
                                    <c:if test="${a.present}">
                                        <input type="radio" name="attend" value="present" checked="checked">present
                                        <input type="radio" name="attend" value="absent" >absent
                                    </c:if>
                                </form>
                            </td>
                            <td>${a.description}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
