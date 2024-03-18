package com.smhrd.model;

import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Getter
@RequiredArgsConstructor
@ToString
public class MemberVO {

	@NonNull
	private final String id;
	@NonNull
	private final String pw;
	private String name;
	private String email;
	private String nick;
	private String gender;
	private String birthdate;
	private String joined_at;

	public MemberVO(@NonNull String id, @NonNull String pw, String name, String email, String nick, String gender,
			String birthdate, String joined_at) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.nick = nick;
		this.gender = gender;
		this.birthdate = birthdate;
		this.joined_at = joined_at;
	}

	public MemberVO(@NonNull String id, @NonNull String pw, String name, String email, String nick, String gender,
			String birthdate) {
		super();
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