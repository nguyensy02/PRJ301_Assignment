<%-- 
    Document   : Attendance_Report
    Created on : Oct 24, 2022, 11:54:09 AM
    Author     : nguye
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="css\bootstrap.css">
        <link rel="stylesheet" href="css\bootstrap.min.css">
        <link rel="stylesheet" href="style-scheduler.css">
        <link rel="stylesheet" href="style_attendance_report.css">
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
                    <a href="https://fap.fpt.edu.vn/User/UserDetail.aspx">${requestScope.lecturer.name}</a> |
                    <a href="https://fap.fpt.edu.vn/Default.aspx">Logout</a> |
                    <span>CAMPUS: FPTU-Hòa Lạc</span>
                </div>
                <table></table>
            </div>

            <form action="report" method="post">
                <input type="hidden" name="lid" value="${requestScope.lecturer.id}"/>
                <select name="gid">
                    <c:forEach items="${requestScope.groups}" var="gid">
                        <option value="${gid.id}">${gid.subject.name}-${gid.name}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="Save"/>
            </form>

            <table>
                <thead>
                    <tr>
                        <th rowspan="2">ID</th>
                        <th rowspan="2">Name</th>
                        <th colspan="5" style="text-align: center;">Slot</th>
                        <th rowspan="2">Total</th>
                    </tr>
                    <tr>
                        <c:forEach items="${requestScope.sessions}" var="ses">
                            <th>${ses.index}</th>
                            </c:forEach>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.students}" var="s">
                        <tr>
                            <td>${s.id}</td>
                            <td>${s.name}</td>
                            <c:forEach items="${requestScope.sessions}" var="ses">
                                <td>
                                    <c:forEach items="${requestScope.attendances}" var="a">
                                        <c:if test="${(a.student.id eq s.id) and (a.session.index eq ses.index)}">
                                            <c:if test="${a.present}"> 
                                                <p>x</p>
                                            </c:if>
                                            <c:if test="${!a.present}"> 
                                                <p>o</p>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="row" style="text-align: center;">
                <div class="col-md-12">
                    <b> Mọi góp ý, thắc mắc xin liên hệ:</b>Phòng dịch vụ sinh viên: Email: dichvusinhvien@fe.edu.vn. Điện
                    thoại: (024)7308.13.13
                </div>
                <div class="col-md-12">
                    © Powered by FPT University | CMS | library | books24x7
                </div>
            </div>
        </div>
    </body>
</html>