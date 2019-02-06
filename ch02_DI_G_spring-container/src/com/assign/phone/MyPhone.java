package com.assign.phone;

import java.util.Scanner;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.assign.calculator.BasicCalculator;
import com.assign.calculator.Calculator;
import com.assign.calculator.SmartCalculator;
import com.assign.container.PhoneContainer;
import com.inc.container.SpringConfiguration;

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
		//PhoneContainer container = new PhoneContainer();
		//MyPhone myPhone = container.myPhone();
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext container
		= new AnnotationConfigApplicationContext();
		//빈 설정정보(configuration)등록
		container.register(com.assign.container.SpringConfiguration.class);
		//컨테이너 새로고침
		container.refresh();
		MyPhone myPhone = container.getBean("myphone", MyPhone.class);
		myPhone.run();
	}
}