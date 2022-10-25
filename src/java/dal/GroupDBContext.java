/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.jsp.jstl.sql.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Group;
import model.Lecturer;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author nguye
 */
public class GroupDBContext extends DBContext<GroupDBContext> {

    public ArrayList<Group> getGroups(int lid) {
        ArrayList<Group> groups = new ArrayList<>();
        try {
            String sql = "select g.id as gid, g.class, sub.id as subid, sub.[name] as subname from [Group] g\n"
                    + "join Lecture l on g.lectureId = l.id \n"
                    + "join [Subject] sub on g.subjectCode=sub.id\n"
                    + "where l.id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, lid);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Group g = new Group();
                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("class"));

                Subject sub = new Subject();
                sub.setId(rs.getInt("subid"));
                sub.setName(rs.getString("subname"));

                g.setSubject(sub);
                groups.add(g);
            }

        } catch (Exception ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return groups;
    }

    public Group getGroup(int sesId) {
        Group g = new Group();
        try {
            String sql = "select g.id as gid, g.class, sub.[name] as subname, sub.id as subid, g.lectureId as lid, l.[lname] from [Session] ses\n"
                    + "join [Group] g on ses.groupId = g.id\n"
                    + "join [Subject] sub on g.subjectCode = sub.id\n"
                    + "join Lecture l on ses.lid = l.id\n"
                    + "where ses.id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sesId);
            ResultSet rs = stm.executeQuery();
            Subject sub = new Subject();
            Lecturer l = new Lecturer();
            if (rs.next()) {
                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("class"));
                sub.setId(rs.getInt("subid"));
                sub.setName(rs.getString("subname"));
                l.setId(rs.getInt("lid"));
                l.setName(rs.getString("lname"));
                g.setSubject(sub);
                g.setSupervisor(l);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return g;
    }

    @Override
    public void insert(GroupDBContext model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(GroupDBContext model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(GroupDBContext model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public GroupDBContext get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<GroupDBContext> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
