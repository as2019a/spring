package com.inc.practice;

import java.util.Scanner;

public class Calculator {
	//실습 : puls() 와 minus()에 method extranction을 적용
	public void plus() {
		
		int[] numbers = number();
		
		int result = numbers[0] + numbers[1];
		
		print(result);

	}
	
	

	public void minus() {
		
		int[] numbers = number();
		
		int result = numbers[0] - numbers[1];
		
		print(result);
	}
	
	private int[] number() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("첫 번째 숫자를 입력해주세요");
		int first = scanner.nextInt();
		System.out.println("두 번째 숫자를 입력해주세요");
		int secound = scanner.nextInt();
		
		int[] numbers = {first, secound};
		
		return numbers;
		
	}
	
	private void print(int result) {
		System.out.println("결과 : " + result);
	}

}
