package com.smhrd.model;

import lombok.Getter;

@Getter
public class MemberVO {

	public MemberVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	private final String id;
	private final String pw;
	private String name;
	private String birthdate;
	private String nick;
	private String gender;
	private String email;
	private String joined_at;

	public MemberVO() {
		this.id = null;
		this.pw = null;
	}

	public MemberVO(String id, String pw, String name, String nick, String birthdate, String gender, String email,
			String joined_at) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nick = nick;
		this.birthdate = birthdate;
		this.gender = gender;
		this.email = email;
		this.joined_at = joined_at;
	}

	public MemberVO(String id, String pw, String name, String nick, String birthdate, String gender, String email) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nick = nick;
		this.birthdate = birthdate;
		this.gender = gender;
		this.email = email;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", birthdate=" + birthdate + ", nick=" + nick
				+ ", gender=" + gender + ", email=" + email + ", joined_at=" + joined_at + "]";
	}

}