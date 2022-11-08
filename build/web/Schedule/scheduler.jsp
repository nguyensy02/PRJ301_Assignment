<%-- 
    Document   : scheduler
    Created on : Oct 21, 2022, 9:12:49 AM
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
        <style type="text/css">
            <%@include file="../Schedule/style-scheduler.css"%>
            <%@include file="css/bootstrap.min.css" %>
        </style>

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
                                <a href="https://apps.apple.com/app/id1527723314"><img src="..\Schedule\Image\app-store.svg"
                                                                                       alt="apple store" style="height: 50px; width: auto"></a>
                            </td>
                            <td>
                                <a href="https://play.google.com/store/apps/details?id=com.fuct"><img
                                        src="..\Schedule\Image\play-store.svg" alt="play store" style="height: 50px; width: auto"></a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <a href="../home">Home</a>
                    | <span>View Schedule</span>
                </div>
                <div class="col-md-4">
                    <p>${sessionScope.account.username}</p>
                    <a href="../logout">Logout</a> |
                    <span>CAMPUS: FPTU-Hòa Lạc</span>
                </div>
            </div>
            <div class="row">
                <form action="timetable" method="GET">
                    Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/>
                    <input type="hidden" name="lid" value="${param.lid}"/>
                    From: <input type="date" name="from" value="${requestScope.from}"/>
                    To: <input type="date" name="to" value="${requestScope.to}"/>
                    <input type="submit" value="View"/> 
                </form>
                <table class="report">

                    <tr style="background-color: #007bff">
                        <td> </td>
                        <c:forEach items="${requestScope.dates}" var="d">
                            <td>${d}<br/>${helper.getDayNameofWeek(d)}</td>
                            </c:forEach>
                    </tr>

                    <c:forEach items="${requestScope.slots}" var="slot">
                        <tr>
                            <td>${slot.description}</td>
                            <c:forEach items="${requestScope.dates}" var="d">
                                <td>
                                    <c:forEach items="${requestScope.sessions}" var="ses">
                                        <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}">
                                            <a href="att?id=${ses.id}">${ses.group.name}-${ses.group.subject.name}</a>
                                            <br/>
                                            ${ses.room.name}
                                            <c:if test="${ses.attandated}">
                                                <font color="Green">attended</font>
                                            </c:if>
                                            <c:if test="${!ses.attandated}">
                                                <font color="Red">absent</font>
                                            </c:if>
                                        </c:if>

                                    </c:forEach>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
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
