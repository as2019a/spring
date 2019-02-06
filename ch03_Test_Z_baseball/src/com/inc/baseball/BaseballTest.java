package com.inc.baseball;

import static org.junit.Assert.*;

import java.awt.Container;
import java.lang.reflect.Method;
import java.util.Scanner;

import org.hamcrest.core.IsEqual;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class BaseballTest {
	Baseball baseball;
	@Before
	public void setUp() {
		baseball = new Baseball();
	}
	
	/*@Test //TDD
	public void run() {
		int[] 
		
	}*/

	@Test
	public void getPredicts() {
		int[] predicts = baseball.getPredicts();
		Assert.assertArrayEquals(new int[] {1,2,3}, predicts);
		
		predicts = baseball.getPredicts();
		Assert.assertArrayEquals(new int[] {4,5,6}, predicts);
	}
	
	@Test
	public void getRandomNumbers() {
		int[] numbers1 = baseball.getRandomNumbers();
		assertNotEquals(numbers1[0], numbers1[1]);
		assertNotEquals(numbers1[0], numbers1[2]);
		assertNotEquals(numbers1[1], numbers1[2]);
		
		int[] numbers2 = baseball.getRandomNumbers();
		assertNotEquals(numbers2[0], numbers2[1]);
		assertNotEquals(numbers2[0], numbers2[2]);
		assertNotEquals(numbers2[1], numbers2[2]);
		
		assertThat(numbers1, IsEqual.equalTo(numbers2));
	}
	
	@Test
	public void compareArrays() {
		assertTrue(baseball.compareArrays(new int[] {1,2,3}, new int[]{1,2,3}));
		assertTrue(baseball.compareArrays(new int[] {4,5,6}, new int[]{4,5,6}));
		assertFalse(baseball.compareArrays(new int[] {1,2,5}, new int[]{1,2,6}));
		assertFalse(baseball.compareArrays(new int[] {0,2,5}, new int[]{1,2,5}));
	}
	

}
