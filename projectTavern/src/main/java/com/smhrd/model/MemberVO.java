package com.smhrd.model;

import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Getter
@ToString
public class MemberVO {

	public MemberVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	private final String id;
	private final String pw;
	private String name;
	private String email;
	private String nick;
	private String gender;
	private String birthdate;
	private String joined_at;

	public MemberVO() {
		this.id = null;
		this.pw = null;
	}

	public MemberVO(String id, String pw, String name, String email, String nick, String gender, String birthdate,
			String joined_at) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.nick = nick;
		this.gender = gender;
		this.birthdate = birthdate;
		this.joined_at = joined_at;
	}

	public MemberVO(String id, String pw, String name, String email, String nick, String gender, String birthdate) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.nick = nick;
		this.gender = gender;
		this.birthdate = birthdate;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email + ", nick=" + nick
				+ ", gender=" + gender + ", birthdate=" + birthdate + ", joined_at=" + joined_at + "]";
	}

}