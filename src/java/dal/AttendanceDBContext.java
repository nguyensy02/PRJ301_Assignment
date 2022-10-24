/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attandance;
import model.Student;

/**
 *
 * @author nguye
 */
public class AttendanceDBContext extends DBContext<Attandance> {

    public ArrayList<Attandance> filter(int sesid) {
        ArrayList<Attandance> attandances = new ArrayList<>();
        try {
            String sql = "select  a.studentId, s.[name] as stuname, a.attend, a.comment\n"
                    + "from Attendance a\n"
                    + "join Student s on a.studentId = s.id\n"
                    + "where sessionId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sesid);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attandance attandance = new Attandance();
                Student student = new Student();

                attandance.setId(sesid);
                attandance.setDescription(rs.getString("comment"));
                attandance.setPresent(rs.getBoolean("attend"));
                student.setId(rs.getInt("studentId"));
                student.setName(rs.getString("stuname"));
                attandance.setStudent(student);

                attandances.add(attandance);
            }
        } catch (SQLException e) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, e);

        }
        return attandances;
    }

    @Override
    public void insert(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attandance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Attandance> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
