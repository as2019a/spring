package com.inc.alphabet;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

public class AlphabetTest {

	private static AbstractApplicationContext container;

	public static void main(String[] args) {
		AnnotationConfigApplicationContext caontainer = new AnnotationConfigApplicationContext(AlphabetConfig.class);
		
		A a = container.getBean("a", A.class);
		B b = container.getBean("b", B.class);
		
		System.out.println(a.b == b);
		System.out.println(a.b.c == b.c);

	}

}
