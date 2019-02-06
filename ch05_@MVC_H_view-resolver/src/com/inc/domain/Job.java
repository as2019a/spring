package com.inc.domain;

public class Job {
	/*
	 * <th>코드</th> <!-- code -->
		<th>회사이름</th> <!-- company name -->
		<th>직종</th> <!-- occupation -->
		<th>주요사업</th> <!-- major bussiness -->
		<th>직원수</th> <!-- Number of employees -->
	 */
	
	private String companyname, occupation, majorbussiness;
	private int code, Numberemployees;
	
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getMajorbussiness() {
		return majorbussiness;
	}
	public void setMajorbussiness(String majorbussiness) {
		this.majorbussiness = majorbussiness;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getNumberemployees() {
		return Numberemployees;
	}
	public void setNumberemployees(int numberemployees) {
		Numberemployees = numberemployees;
	}
	
	
}
