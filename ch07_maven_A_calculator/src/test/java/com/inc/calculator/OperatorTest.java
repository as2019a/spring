package com.inc.calculator;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class OperatorTest {
	
	private Operator operator;
	
	@Before
	public void setUp() {
		operator = new Operator();
	}
	
	@Test
	public void plus() {
		int result = operator.plus(1, 2);
		assertSame(3, result);
	}
	
	@Test
	public void minus() {
		int result = operator.minus(3, 2);
		assertSame(1, result);
	}

}
