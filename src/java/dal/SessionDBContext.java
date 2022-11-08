/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Group;
import model.Lecturer;
import model.Room;
import model.Session;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author Ngo Tung Son
 */
public class SessionDBContext extends dal.DBContext<Session> {

    public ArrayList<Session> getByGroup(int gid) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql = "select ses.[index] as sesindex from [Session] ses \n"
                    + "join [Group] g on ses.groupId=g.id\n"
                    + "where g.id=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session ses = new Session();
                ses.setIndex(rs.getInt("sesindex"));
                sessions.add(ses);
            }
        } catch (Exception ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sessions;
    }

    public ArrayList<Session> filter(int lid, Date from, Date to) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql = "select \n"
                    + "	ses.id, ses.[date], ses.[index], ses.attanded,\n"
                    + "	l.id as lid, l.lname,\n"
                    + "	g.id as gid, g.class, \n"
                    + "	sub.id as subid, sub.name as subname,\n"
                    + "	r.id as rid, r.name as rname,\n"
                    + "	t.id as tid, t.description\n"
                    + "from [Session] ses\n"
                    + "join Lecture l on ses.lid = l.id\n"
                    + "join [Group] g on g.id = ses.groupId\n"
                    + "join [Subject] sub on sub.id = g.subjectCode\n"
                    + "join Room r on r.id = ses.roomId\n"
                    + "join TimeSlot t on t.id = ses.timeSlotId\n"
                    + "where l.id = ? \n"
                    + "	and ses.date >= ?\n"
                    + "	and ses.date <=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, lid);
            stm.setDate(2, from);
            stm.setDate(3, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session session = new Session();
                Lecturer l = new Lecturer();
                Room r = new Room();
                Group g = new Group();
                TimeSlot t = new TimeSlot();
                Subject sub = new Subject();
//ses.id, ses.[date], ses.[index], ses.attanded
                session.setId(rs.getInt("id"));
                session.setDate(rs.getDate("date"));
                session.setIndex(rs.getInt("index"));
                session.setAttandated(rs.getBoolean("attanded"));

                l.setId(rs.getInt("lid"));
                l.setName(rs.getString("lname"));
                session.setLecturer(l);

                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("class"));
                session.setGroup(g);

                sub.setId(rs.getInt("subid"));
                sub.setName(rs.getString("subname"));
                g.setSubject(sub);

                r.setId(rs.getInt("rid"));
                r.setName(rs.getString("rname"));
                session.setRoom(r);

                t.setId(rs.getInt("tid"));
                t.setDescription(rs.getString("description"));
                session.setTimeslot(t);

                sessions.add(session);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sessions;
    }

    @Override
    public void insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(int id) {
        Session s = new Session();
        try {
            String sql = "select  [index] from [Session] where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                s.setIndex(rs.getInt("index"));
            }
        } catch (Exception e) {
        }
        return s;
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
