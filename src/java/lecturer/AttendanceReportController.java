/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lecturer;

import dal.AttendanceDBContext;
import dal.GroupDBContext;
import dal.LecturerDBContext;
import dal.SessionDBContext;
import dal.StudentDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Attandance;
import model.Group;
import model.Lecturer;
import model.Session;
import model.Student;

/**
 *
 * @author nguye
 */
public class AttendanceReportController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int lid = Integer.parseInt(req.getParameter("lid"));
        
        LecturerDBContext lecturerDB = new LecturerDBContext();
        Lecturer lecturer = lecturerDB.get(lid);
        req.setAttribute("lecturer", lecturer);

        GroupDBContext groupDB = new GroupDBContext();
        ArrayList<Group> groups = groupDB.getGroups(lid);
        req.setAttribute("groups", groups);

        req.getRequestDispatcher("../Attendance_Report/report.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int gid = Integer.parseInt(req.getParameter("gid"));
        int lid = Integer.parseInt(req.getParameter("lid"));

        LecturerDBContext lecturerDB = new LecturerDBContext();
        Lecturer lecturer = lecturerDB.get(lid);
        req.setAttribute("lecturer", lecturer);

        GroupDBContext groupDB = new GroupDBContext();
        ArrayList<Group> groups = groupDB.getGroups(lid);
        req.setAttribute("groups", groups);

        AttendanceDBContext attendDB = new AttendanceDBContext();
        ArrayList<Attandance> attandances = attendDB.getByGroup(gid);
        req.setAttribute("attendances", attandances);

        StudentDBContext studentDB = new StudentDBContext();
        ArrayList<Student> students = studentDB.getByGid(gid);
        req.setAttribute("students", students);

        SessionDBContext sessionDB = new SessionDBContext();
        ArrayList<Session> sessions = sessionDB.getByGroup(gid);
        req.setAttribute("sessions", sessions);

        req.getRequestDispatcher("../Attendance_Report/report.jsp").forward(req, resp);
    }

}
