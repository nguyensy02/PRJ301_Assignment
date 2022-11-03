/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package listener;

import jakarta.servlet.ServletContextListener;

/**
 *
 * @author nguye
 */
public class ServletContextEvent implements ServletContextListener{

    @Override
    public void contextInitialized(jakarta.servlet.ServletContextEvent sce) {
        System.out.println("Ok");
    }

    @Override
    public void contextDestroyed(jakarta.servlet.ServletContextEvent sce) {
    }
    
}
