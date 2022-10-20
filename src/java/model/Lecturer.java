/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.sql.Date;

/**
 *
 * @author nguye
 */
public class Lecturer {
    private int id;
    private String name;
    private Date dob;
    private boolean gender;
    private ArrayList<Group> groups;
    private ArrayList<Account> accounts;

    public Lecturer(int id, String name, Date dob, boolean gender, ArrayList<Group> groups, ArrayList<Account> accounts) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.groups = groups;
        this.accounts = accounts;
    }

    public Lecturer() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
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

    public ArrayList<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(ArrayList<Account> accounts) {
        this.accounts = accounts;
    }
    
    
    
}
