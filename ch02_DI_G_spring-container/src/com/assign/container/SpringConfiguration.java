package com.assign.container;

import org.springframework.context.annotation.Bean;

import com.assign.calculator.BasicCalculator;
import com.assign.calculator.Calculator;
import com.assign.calculator.SmartCalculator;
import com.assign.phone.MyPhone;

public class SpringConfiguration {
	
	//자바방식을 사용하여 Spring Container가 사용할 설정정보를 작성
	//phone관련된 빈 생성 및 설정
	//(Myphone, BasicCalculator, SmartCalcuator) - 3개 생성
	
	@Bean
	public MyPhone myphone() {
		MyPhone myPhone = new MyPhone();
		myPhone.setCaculator(smartCalculator());
		return myPhone;
	}
	
	@Bean
	public BasicCalculator basicCalculator() {
		BasicCalculator basicCalculator = new BasicCalculator();
		return basicCalculator;
	}
	
	@Bean
	public SmartCalculator smartCalculator() {
		SmartCalculator smartCalculator = new SmartCalculator();
		return smartCalculator;
	}
}