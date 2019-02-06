package com.assign.phone;

import java.util.Scanner;

import com.assign.calculator.BasicCalculator;
import com.assign.calculator.Calculator;
import com.assign.calculator.SmartCalculator;
import com.assign.container.PhoneContainer;

public class MyPhone {
	Calculator calculator;
	
	public void setCaculator(Calculator calculator) {
		this.calculator = calculator;
	}
	
	public void run() {
		Scanner scanner = new Scanner(System.in);
		
		while(true) {
			System.out.println("사용하고 싶은 기능을 선택해 주세요.");
			System.out.println("0.종료");
			System.out.println("1.계산기");
			System.out.println("2.전화");
			System.out.println("3.카톡");
			int choice = scanner.nextInt();
			switch(choice) {
				case 0 : return;
				case 1 : calculator.run(); break;
				case 2 : System.out.println("따르릉~"); break;
				case 3 : System.out.println("까톡왔쎵~");; break;
			}
		}
	}
	
	public static void main(String[] args) {
		PhoneContainer container = new PhoneContainer();
		MyPhone myPhone = container.myPhone();
		myPhone.run();
	}
}