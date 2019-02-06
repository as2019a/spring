package com.inc.domain;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class User {
	//@Pattern - 정규표현식
	//@Size - 길이
	//@NotEmpty - 비어있는지 검사
	
	@Size(min=5, max=10, message="아이디는 5글자 이상 10글자 이하")
	private String id;
	
	@Pattern(regexp="(?=.*[!?@#^*-]).{5,10}", message="비밀번호는 5글자 10글자 이하이며 "
			+ "특수문자(!?@#^*-)중 특수문자가 한개 이상 포함")
	private String password;
	
	@NotEmpty(message="이름은 한 글자 이상")
	private String name;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
