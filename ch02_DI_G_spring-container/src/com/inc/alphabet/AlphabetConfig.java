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
		b.SetC(c());
		b.SetC(d());
		return b;
	}
	
	@Bean
	public C c() {
		C c = new C();
		c.SetD(d());
		return c;
	}
	
	@Bean
	public D d() {
		D d = new D();
		return d;
	}
	
}
