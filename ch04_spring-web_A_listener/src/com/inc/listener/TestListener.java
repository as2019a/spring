package com.inc.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


//@WebListener
public class TestListener implements ServletContextListener {

    
    public void contextDestroyed(ServletContextEvent event)  { 
         System.out.println("애플리케이션 종료");
    }

	
    public void contextInitialized(ServletContextEvent event)  { 
    	String name = event.getServletContext().getInitParameter("name");
         System.out.println("애플리케이션 시작 : "+name);
    }
	
}
