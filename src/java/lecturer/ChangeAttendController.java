/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lecturer;

import dal.AttendanceDBContext;
import dal.GroupDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Attandance;
import model.Group;

/**
 *
 * @author nguye
 */
public class ChangeAttendController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
    
    protected void processRequest(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException{
        int sesId = Integer.parseInt(req.getParameter("id"));
        AttendanceDBContext attDB = new AttendanceDBContext();
        ArrayList<Attandance> attandances = attDB.filter(sesId);
        req.setAttribute("attandances", attandances);
        GroupDBContext groupDB = new GroupDBContext();
        Group group = groupDB.getGroup(sesId);
        req.setAttribute("group", group);
        
        resp.getWriter().println(attandances.get(0).isPresent());
        req .getRequestDispatcher("../Attendance/attandance.jsp").forward(req, resp);
    }  
}
