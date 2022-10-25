/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lecturer;

import dal.AttendanceDBContext;
import dal.GroupDBContext;
import dal.StudentDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Attandance;
import model.Group;
import model.Session;
import model.Student;

/**
 *
 * @author nguye
 */
public class ChangeAttendController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int sesId = Integer.parseInt(req.getParameter("sesid"));
        int lid =  Integer.parseInt(req.getParameter("lid"));

        AttendanceDBContext attDB = new AttendanceDBContext();
        ArrayList<Attandance> attandances = attDB.filter(sesId);
        req.setAttribute("attandances", attandances);
        
        for (int i = 0; i<attandances.size(); i++) {
            int sid = attandances.get(i).getStudent().getId();
            Student s = new Student();
            s.setId(sid);
            resp.getWriter().println(sid);
            
            Session ses  = new Session();
            ses.setId(sesId);
            
            String valuePresent = req.getParameter(String.valueOf(sid));
            boolean present;
            present = valuePresent.equals("present");
            
            resp.getWriter().println(present);
            
            Attandance a = new Attandance();
            a.setStudent(s);
            a.setSession(ses);
            a.setPresent(present);
            
            attDB.update(a);
        }
        resp.getWriter().println("OK");
        resp.sendRedirect("timetable?lid="+lid);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int sesId = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("sesid", sesId);

        AttendanceDBContext attDB = new AttendanceDBContext();
        ArrayList<Attandance> attandances = attDB.filter(sesId);
        req.setAttribute("attandances", attandances);

        GroupDBContext groupDB = new GroupDBContext();
        Group group = groupDB.getGroup(sesId);
        req.setAttribute("group", group);

        req.getRequestDispatcher("../Attendance/attandance.jsp").forward(req, resp);
    }
}
