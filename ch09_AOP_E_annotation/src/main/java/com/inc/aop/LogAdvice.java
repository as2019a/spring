package com.inc.aop;

import org.aspectj.lang.JoinPoint;
//import org.springframework.stereotype.Component;

//@Component
public class LogAdvice {
	
	private long time;
	public void before(JoinPoint jp) {
		//System.out.println("time : "+System.currentTimeMillis());
		time = System.currentTimeMillis();
	}
	
	public void after(JoinPoint jp) {
		System.out.println((System.currentTimeMillis() - time)/1000.0);
	}
}
