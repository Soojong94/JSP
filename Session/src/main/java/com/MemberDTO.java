package com;

public class MemberDTO {

	// Data Transfer Object( = Value Object)
	// 회원의 정보 (이름, 나이, 연락처, 주소)를 하나로 묶어주기 위한 클래스
	
	private String name ;
	private int age;
	private String phone;
	private String addr;
	
	
	
	@Override
	// 값이 잘 들어있는지 확인하는 용도로 사용
	public String toString() {
		return "MemberDTO [name=" + name + ", age=" + age + ", phone=" + phone + ", addr=" + addr + "]";
	}


	public MemberDTO(String name, int age, String phone, String addr) {
		super();
		this.name = name;
		this.age = age;
		this.phone = phone;
		this.addr = addr;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
}
