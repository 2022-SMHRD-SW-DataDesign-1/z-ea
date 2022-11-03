package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class BoardDTO {
	// 글 번호 글 번호
    private BigDecimal board_num;

    // 글 제목 글 제목
    @NonNull
    private String board_title;
    @NonNull
    // 글 내용 글 내용
    private String board_content;
    @NonNull
    // 글 첨부파일 글 첨부파일
    private String board_file;
    @NonNull
    // 글 카테고리 글 카테고리
    private String board_category;

    // 글 작성일자 글 작성일자
    private Timestamp board_date;
    @NonNull
    // 글 작성자이메일 글 작성자이메일
    private String mb_email;
}
