/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author nguye
 */
public class Student {
    private int id;
    private String firstName;
    private String lastName;
    private Date dob;
    private boolean gender;
    private ArrayList<Group> groups;
    private ArrayList<Account> account;
    private ArrayList<Attandance> attandances;

    public Student() {
    }

    public Student(int id, String firstName, String lastName, Date dob, boolean gender, ArrayList<Group> groups, ArrayList<Account> account, ArrayList<Attandance> attandances) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.gender = gender;
        this.groups = groups;
        this.account = account;
        this.attandances = attandances;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }

    public ArrayList<Account> getAccount() {
        return account;
    }

    public void setAccount(ArrayList<Account> account) {
        this.account = account;
    }

    public ArrayList<Attandance> getAttandances() {
        return attandances;
    }

    public void setAttandances(ArrayList<Attandance> attandances) {
        this.attandances = attandances;
    }
    
    
}
