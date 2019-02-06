package com.inc.alphabet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class AlphabetTest {
	
	
	public static void main(String[] args) {
		GenericXmlApplicationContext caontainer = new GenericXmlApplicationContext("alphabet-context.xml");
		
		A a = caontainer.getBean("a", A.class);
		B b = caontainer.getBean("b", B.class);
		
		System.out.println(a.b == b);
		System.out.println(a.b.c == b.c);

	}

}
