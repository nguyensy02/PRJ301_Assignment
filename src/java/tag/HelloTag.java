/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tag;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 *
 * @author nguye
 */
public class HelloTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter jsp = getJspContext().getOut();
        System.out.println("print:");
        jsp.println("Hello custom tag");
    }

}
