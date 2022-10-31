package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class MemberDTO {
	private int member_num;
	@NonNull
	private String email;
	@NonNull
	private String pw;
	@NonNull
	private String birth;
	@NonNull
	private String username;
	@NonNull
	private String tel;
	
}
