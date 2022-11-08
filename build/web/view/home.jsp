<%-- 
    Document   : home
    Created on : Oct 17, 2022, 10:28:01 AM
    Author     : sonnt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="ex" uri="../WEB-INF/custom.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--<ex:Hello/>--%>
        <c:if test="${sessionScope.account ne null}">
            Hello ${sessionScope.account.displayname},  click 
            <a href="logout">here</a> 
            to logout.
            <br>
            
            <a href="lecturer/timetable?lid=${sessionScope.lecturer.id}">View timetable of ${sessionScope.lecturer.name}</a> 
            <br>
            <a href="lecturer/report?lid=${sessionScope.lecturer.id}">View report of ${sessionScope.lecturer.name}</a>
        </c:if>
        <c:if test="${sessionScope.account eq null}">
            You are not logged in yet!
            Click <a href="login">here</a> to login
        </c:if>
    </body>
</html>
