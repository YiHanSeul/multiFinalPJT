package com.petcare.home.model.dto;

public class UserDto {
	private int userkey;
	private String userid;
	private String userpw;
	private String username;
	private String usernick;
	private String useremail;
	private String userphone;
	private int grade;
	
	public UserDto() {
		super(); 
	}
	
	public UserDto(int userkey, String userid, String userpw, String username, String usernick, String useremail,
			String userphone, int grade) {
		super();
		this.userkey = userkey;
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
		this.usernick = usernick;
		this.useremail = useremail;
		this.userphone = userphone;
		this.grade = grade;
	}

	public int getUserkey() {
		return userkey;
	}
	public void setUserkey(int userkey) {
		this.userkey = userkey;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsernick() {
		return usernick;
	}
	public void setUsernick(String usernick) {
		this.usernick = usernick;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	@Override
	public String toString() {
		return "UserDto [userkey=" + userkey + ", userid=" + userid + ", userpw=" + userpw + ", username=" + username
				+ ", usernick=" + usernick + ", useremail=" + useremail + ", userphone=" + userphone + ", grade="
				+ grade + "]";
	}
}
