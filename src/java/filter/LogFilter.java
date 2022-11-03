/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 *
 * @author nguye
 */
public class LogFilter implements Filter {

    public LogFilter() {
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("LogFilter init!");
    }

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) sr;
        System.out.println(req.getRemoteHost()+" try to access "+req.getRequestURI());
        fc.doFilter(sr, sr1);
    }

    @Override
    public void destroy() {
        System.out.println("LogFilter destroy!");
    }

}
