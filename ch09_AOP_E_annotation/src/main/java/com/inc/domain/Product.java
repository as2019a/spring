package com.inc.domain;

import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class Product {
	
	@Pattern(regexp="[가-힣a-z]{2,10}", message="제품명은 한글 또는 소문자에 2글자 ~ 10글자")
	private String name;
	@NotNull(message="숫자를 입력해주세요")
	@DecimalMin(value="1", message="1이상의 숫자")
	@DecimalMax(value="99999", message="99999이하의 숫자")
	private Integer count;
	
	private String regdate;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	
}
