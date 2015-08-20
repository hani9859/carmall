package com.carmall2015.carmall.vo;

public class UserVo {
	private long user_no;
	private String id;
	private String password;
	private String name;
	private String birth;
	private String birth_sm;
	private String phoneNumber1;
	private String phoneNumber2;
	private String email;
	private String address;
	private String userStatus;
	private String userGrade;
	private String join_date;
	private String joinOut_date;
	
	public long getUser_no() {
		return user_no;
	}
	public void setUser_no(long user_no) {
		this.user_no = user_no;
	}
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
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getBirth_sm() {
		return birth_sm;
	}
	public void setBirth_sm(String birth_sm) {
		this.birth_sm = birth_sm;
	}
	public String getPhoneNumber1() {
		return phoneNumber1;
	}
	public void setPhoneNumber1(String phoneNumber1) {
		this.phoneNumber1 = phoneNumber1;
	}
	public String getPhoneNumber2() {
		return phoneNumber2;
	}
	public void setPhoneNumber2(String phoneNumber2) {
		this.phoneNumber2 = phoneNumber2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	public String getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getJoinOut_date() {
		return joinOut_date;
	}
	public void setJoinOut_date(String joinOut_date) {
		this.joinOut_date = joinOut_date;
	}
	@Override
	public String toString() {
		return "UserVo [user_no=" + user_no + ", id=" + id + ", password=" + password + ", name=" + name + ", birth="
				+ birth + ", birth_sm=" + birth_sm + ", phoneNumber1=" + phoneNumber1 + ", phoneNumber2=" + phoneNumber2
				+ ", email=" + email + ", address=" + address + ", userStatus=" + userStatus + ", userGrade="
				+ userGrade + ", join_date=" + join_date + ", joinOut_date=" + joinOut_date + "]";
	}
	
	

}
