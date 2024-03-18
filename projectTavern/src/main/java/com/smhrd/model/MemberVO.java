package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Getter
@RequiredArgsConstructor
@AllArgsConstructor
@ToString
public class MemberVO {

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

}
