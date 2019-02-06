package com.inc.annotation;

import javax.jws.soap.InitParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.UsesJava8;

public class Annotations {
	//Annotation 종류
	@Deprecated
	public void a() {
		
	}
	@FunctionalInterface
	public void ab() {
		Ab ab = new ab();
	}
	@Override
	public void abs() {
		Annotations abs = new Annotations();
	}
	@SafeVarargs
	public void abn() {
		
	}
	@SuppressWarnings
	public void abm() {
		
	}
	@Autowired
	public void bh() {
		
	}
	@Deprecated
	public void fn() {
		
	}
	@InitParam(name = "a", value = "as")
	public void as() {
		
	}
	@UsesJava8
	public void frs() {
		
	}
}
