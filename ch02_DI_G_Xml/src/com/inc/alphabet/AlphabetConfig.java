package com.inc.alphabet;

import org.springframework.context.annotation.Bean;

public class AlphabetConfig {
	
	@Bean
	public A a() {
		A a = new A();
		a.setB(b());
		a.setC(c());
		return a;
	}
	
	@Bean
	public B b() {
		B b = new B();
		b.setC(c());
		b.setD(d());
		return b;
	}
	
	@Bean
	public C c() {
		C c = new C();
		c.setD(d());
		return c;
	}
	
	@Bean
	public D d() {
		D d = new D();
		return d;
	}
	
}
