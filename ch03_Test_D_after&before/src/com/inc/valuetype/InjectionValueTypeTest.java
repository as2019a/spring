package com.inc.valuetype;

import org.springframework.context.support.GenericXmlApplicationContext;

public class InjectionValueTypeTest {

	public static void main(String[] args) {
		GenericXmlApplicationContext contianer
		 	= new GenericXmlApplicationContext("injection-value-type-context.xml");
		InjectionValueType type = contianer.getBean("InjectionValueType", InjectionValueType.class);
		System.out.println(type.integer);
		System.out.println(type.string);
		System.out.println(type.map);
		System.out.println(type.set);
		System.out.println(type.list);
		System.out.println((String)type.list.get(0)+1);
		System.out.println((Integer)type.list.get(1)+1);

	}

}
