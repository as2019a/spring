package com.assign.calculator;

import static org.junit.Assert.*;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import org.junit.Test;
import org.springframework.context.support.GenericXmlApplicationContext;

public class SmartCalculatorTest {

	@Test
	public void plus() throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		//fail("Not yet implemented");
		GenericXmlApplicationContext container =
				new GenericXmlApplicationContext(
						"calc-context.xml");
		SmartCalculator sc = container.getBean(SmartCalculator.class);
		Method method = 
				SmartCalculator.class.getDeclaredMethod("plus");
		method.setAccessible(true);
		int result = (Integer)method.invoke(sc);
		assertSame(30, result);
	}
	
	@Test
	public void minus() throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		GenericXmlApplicationContext container = 
				new GenericXmlApplicationContext("calc-context.xml");
		SmartCalculator sc = container.getBean(SmartCalculator.class);
		Method method = SmartCalculator.class.getDeclaredMethod("minus");
		method.setAccessible(true);
		int result = (Integer)method.invoke(sc);
		assertSame(50, result);
	}
	
	@Test
	public void multiply() throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		GenericXmlApplicationContext container = 
				new GenericXmlApplicationContext("calc-context.xml");
		SmartCalculator sc = container.getBean(SmartCalculator.class);
		Method method = SmartCalculator.class.getDeclaredMethod("multiply");
		method.setAccessible(true);
		int result = (Integer)method.invoke(sc);
		assertSame(150, result);
	}
	
	@Test
	public void divide() throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		GenericXmlApplicationContext container = 
				new GenericXmlApplicationContext("calc-context.xml");
		SmartCalculator sc = container.getBean(SmartCalculator.class);
		Method method = SmartCalculator.class.getDeclaredMethod("divide");
		method.setAccessible(true);
		double result = (Double)method.invoke(sc);
		assertSame(2.0, result);
	}
	
	@Test
	public void input() throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		GenericXmlApplicationContext container = 
				new GenericXmlApplicationContext("calc-context.xml");
		SmartCalculator sc = container.getBean(SmartCalculator.class);
		Method method = SmartCalculator.class.getDeclaredMethod("input");
		method.setAccessible(true);
		int[] result = (int[])method.invoke(sc);
		assertArrayEquals(new int[]{10, 15}, result);
	}

}
