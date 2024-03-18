package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

// @Data // 만능
// 기본생성자 메소드
@NoArgsConstructor
// 모든 파라미터를 받는 생성자 메소드
@AllArgsConstructor
// 필요한 파라미터를 받는 생성자 메소드
@RequiredArgsConstructor
// getter 메소드
@Getter
// setter 메소드
// @Setter
public class MemberVO {


	@NonNull
	private String id;
	@NonNull
	private String pw;
	private String name;
	private String email;
	private String nick;
	private String gender;
	private String birthdate;


}

