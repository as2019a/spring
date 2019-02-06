package com.assign.calculator;

import java.util.Scanner;

import org.springframework.stereotype.Component;

@Component
public class SmartCalculator implements Calculator{
	
	public void run() {
		Scanner scanner = new Scanner(System.in);
		while(true) {
			System.out.println("사용하고 싶은 기능을 선택해 주세요. (종료:0)");
			System.out.println("1.더하기");
			System.out.println("2.빼기");
			System.out.println("3.곱하기");
			System.out.println("4.나누기");
			int choice = scanner.nextInt();
			switch(choice) {
				case 0 : return;
				case 1 : print(plus()); break;
				case 2 : print(minus()); break;
				case 3 : print(multiply()); break;
				case 4 : print(divide()); break;
			}
		}
	}
	
	private int plus() {
		int[] numbers = input();
		
		int result = numbers[0] + numbers[1];
		
		return result;
		
	}
	
	private int minus() { //2
		int[] numbers = input();
		
		int result = numbers[0] - numbers[1];
		
		return result;
	}
	
	private int multiply() { //3
		int[] numbers = input();
		
		int result = numbers[0] * numbers[1];
		
		return result;
	}
	
	private double divide() { //
		int[] numbers = input();
		
		double result = (double)numbers[0] / numbers[1];
		
		return result;
	}
	
	private int[] input() {
		Scanner scanner = new Scanner(System.in); //1
		System.out.println("첫 번째 숫자를 입력해 주세요"); //2
		int first = scanner.nextInt(); //3
		System.out.println("두 번째 숫자를 입력해 주세요"); //4
		int second = scanner.nextInt(); //5
		
		//int[] numbers = {first, second};
		int[] numbers = new int[2]; //6
		numbers[0] = first; //7
		numbers[1] = second; //8
		
		return numbers; //9
		// 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 9
	}

	private void print(int result) {
		System.out.println("결과 : " + result);
	}
	
	private void print(double result) {
		System.out.println("결과 : " + result);
	}

}
