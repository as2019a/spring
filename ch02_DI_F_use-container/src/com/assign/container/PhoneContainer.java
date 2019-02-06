package com.assign.container;

import com.assign.calculator.BasicCalculator;
import com.assign.calculator.SmartCalculator;
import com.assign.phone.MyPhone;

public class PhoneContainer {
	public MyPhone myPhone() {
		MyPhone myPhone = new MyPhone();
		myPhone.setCaculator(new BasicCalculator());
		return myPhone;
	}
}
