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
                <div class="detail">
                    <p style="font-size: 40px;">Activities for SyNTHE160686 (Nguyễn Tiến Sỹ)</p><br>
                    <p><b>Note:</b> These activities do not include extra-curriculum activities, such as club activities ...
                    </p>
                    <p><b>Chú thích:</b> Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa, ví dụ như hoạt
                        động câu lạc
                        bộ ...</p>
                    <div class="note">
                        <p>Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...</p>
                        <p>Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..</p>
                        <p>Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...</p>
                        <p>Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.</p>
                        <p>Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..</p>
                        <p>Little UK (LUK) thuộc tầng 5 tòa nhà Delta</p>
                    </div>
                </div>
                <form action="timetable" method="GET">
                    Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/>
                    <input type="hidden" name="lid" value="${param.lid}"/>
                    From: <input type="date" name="from" value="${requestScope.from}"/>
                    To: <input type="date" name="to" value="${requestScope.to}"/>
                    <input type="submit" value="View"/> 
                </form>
                <table class="report">

                    <tr>
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
                                                <img src="../img/male-icon.png" alt=""/>
                                            </c:if>
                                            <c:if test="${!ses.attandated}">
                                                <img src="../img/female-icon.png" alt=""/>
                                            </c:if>
                                        </c:if>

                                    </c:forEach>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
                <!--                <table style="border: 1px solid black;">
                                    <thead>
                                        <tr>
                                            <th>
                                                <span>YEAR</span>
                                                <select name="years" id="">
                                                    <option value="2019">2019</option>
                                                    <option value="2020">2020</option>
                                                    <option value="2021">2021</option>
                                                    <option value="2022">2022</option>
                                                </select>
                                            </th>
                                            <th>Mon</th>
                                            <th>Tue</th>
                                            <th>Wed</th>
                                            <th>Thu</th>
                                            <th>Fri</th>
                                            <th>Sat</th>
                                            <th>Sun</th>
                                        </tr>
                                        <tr>
                                            <th>
                                                <span>WEEK</span>
                                                <select name="weeks" id="">
                                                    <option value="10/10 to 16/10">10/10 to 16/10</option>
                                                </select>
                                            </th>
                                            <th>10/10</th>
                                            <th>11/10</th>
                                            <th>12/10</th>
                                            <th>13/10</th>
                                            <th>14/10</th>
                                            <th>15/10</th>
                                            <th>16/10</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                
                                    </tbody>
                                    <tr>
                                        <td>Slot 0</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>Slot 1</td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1033648">IOT102-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>-</td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1033648">IOT102-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>-</td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1033648">IOT102-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>Slot 2</td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1025955">PRJ301-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>-</td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1025955">PRJ301-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1029091">JPD123-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1025955">PRJ301-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>Slot 3</td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1022669">MAS291-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1029091">JPD123-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1022669">MAS291-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1029091">JPD123-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>
                                            <p><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=1022669">MAS291-</a><a
                                                    class="label label-warning"
                                                    href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d"
                                                    target="_blank">View Materials</a><br> at DE-C205 <a>
                                                    <br>(<font color="Green">attended</font>)<br><span
                                                        class="label label-success">(9:10-10:40)</span><br></a>
                                            </p>
                                        </td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>Slot 4</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>Slot 5</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>Slot 6</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>Slot 7</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>Slot 8</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                </table>
                <div class="Morenote">
                    <p><b>More note / Chú thích thêm:</b></p>
                    <ul>
                        <li>(<font color="Green">attended</font>): SyNTHE160686 had attended this activity / Nguyễn Tiến Sỹ
                            đã tham gia hoạt động này</li>
                        <li>(<font color="Red">absent</font>): SyNTHE160686 had NOT attended this activity / Nguyễn Tiến Sỹ
                            đã vắng mặt buổi này</li>
                        <li>(-): no data was given / chưa có dữ liệu</li>
                    </ul>
                </div>
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
