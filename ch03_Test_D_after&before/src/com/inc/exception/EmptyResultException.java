package com.inc.exception;

public class EmptyResultException extends RuntimeException {
	
	public EmptyResultException() {
		//super();
	}
	
	public EmptyResultException(String msg) {
		super(msg);
	}
}
