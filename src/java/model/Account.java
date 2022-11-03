/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author nguye
 */
public class Account {
    private String username;
    private String password;
    private String displayname;
    private ArrayList<Lecturer> lectures;
    private ArrayList<Student> students;
    
    private ArrayList<Role> roles = new ArrayList<>();

    public ArrayList<Role> getRoles() {
        return roles;
    }

    public void setRoles(ArrayList<Role> roles) {
        this.roles = roles;
    }

    public Account(String username, String password, String displayname, ArrayList<Lecturer> lectures, ArrayList<Student> students) {
        this.username = username;
        this.password = password;
        this.displayname = displayname;
        this.lectures = lectures;
        this.students = students;
    }

    public Account() {
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getDisplayname() {
        return displayname;
    }

    public ArrayList<Lecturer> getLectures() {
        return lectures;
    }

    public ArrayList<Student> getStudents() {
        return students;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }

    public void setLectures(ArrayList<Lecturer> lectures) {
        this.lectures = lectures;
    }

    public void setStudents(ArrayList<Student> students) {
        this.students = students;
    }

    @Override
    public String toString() {
        return "Account{" + "username=" + username + ", password=" + password + ", displayname=" + displayname + ", lectures=" + lectures + ", students=" + students + ", roles=" + roles + '}';
    }
}
