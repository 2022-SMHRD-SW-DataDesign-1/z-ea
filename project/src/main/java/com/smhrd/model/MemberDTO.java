package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class MemberDTO {
	 // 회원 이메일 
	@NonNull
    private String mb_email;

    // 회원 패스워드 
	@NonNull
    private String mb_pw;

	@NonNull
    // 회원 생년월일 
    private String mb_birthdate;

	@NonNull
    // 회원 이름 
    private String mb_name;

	@NonNull
    // 회원 전화번호 
    private String mb_phone;

    // 회원 가입일자 
    private Timestamp mb_joindate;

    // 회원 유형
    private String mb_type;

	
}
