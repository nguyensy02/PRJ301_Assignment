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
public class Room {
    private int id;
    private String building;
    private int size;
    private boolean status;
    private String name;

    public Room() {
    }

    public ArrayList<Session> getSessions() {
        return sessions;
    }

    public void setSessions(ArrayList<Session> sessions) {
        this.sessions = sessions;
    }
    private ArrayList<Session> sessions;

    public Room(int id, String building, int size, boolean status, String name) {
        this.id = id;
        this.building = building;
        this.size = size;
        this.status = status;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getBuilding() {
        return building;
    }

    public int getSize() {
        return size;
    }

    public boolean isStatus() {
        return status;
    }

    public String getName() {
        return name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
}
