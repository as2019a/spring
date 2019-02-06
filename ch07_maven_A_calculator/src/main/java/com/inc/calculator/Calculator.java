package com.inc.calculator;

import java.util.Scanner;

public class Calculator {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("연산종류를 선택해 주세요");
		System.out.println("1.더하기 2.빼기");
		int choice = scanner.nextInt();
		
		System.out.println("첫 번째 숫자를 입력해 주세요");
		int first = scanner.nextInt();
		System.out.println("두 번째 숫자를 입력해 주세요");
		int second = scanner.nextInt();
		
		int result = -1;
		
		Operator operator = new Operator();
		switch(choice) {
		case 1 : result = operator.plus(first, second);
				 break;
		case 2 : result = operator.minus(first, second);
				 break;
		default : System.out.println("잘못된 입력입니다");
				  return;
		}
		
		System.out.printf("결과는 %d입니다", result);
	}

}
