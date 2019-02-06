package com.assign.calculator;

import java.util.Scanner;

public class BasicCalculator implements Calculator{
	
	public void run() {
		Scanner scanner = new Scanner(System.in);
		while(true) {
			System.out.println("사용하고 싶은 기능을 선택해 주세요.");
			System.out.println("0.종료");
			System.out.println("1.더하기");
			System.out.println("2.빼기");
			int choice = scanner.nextInt();
			switch(choice) {
				case 0 : return;
				case 1 : plus(); break;
				case 2 : minus(); break;
			}
		}
	}
	
	private void plus() {
		int[] numbers = input();
		
		int result = numbers[0] + numbers[1];
		
		print(result);
		
	}
	
	private void minus() {
		int[] numbers = input();
		
		int result = numbers[0] - numbers[1];
		
		print(result);
	}
	
	private int[] input() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("첫 번째 숫자를 입력해 주세요");
		int first = scanner.nextInt();
		System.out.println("두 번째 숫자를 입력해 주세요");
		int second = scanner.nextInt();
		
		//int[] numbers = {first, second};
		int[] numbers = new int[2];
		numbers[0] = first;
		numbers[1] = second;
		
		return numbers;
		
	}

	private void print(int result) {
		System.out.println("결과 : " + result);
	}

}
