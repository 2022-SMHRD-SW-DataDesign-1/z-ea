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
public class ReviewDTO {

	 // 리뷰 번호 리뷰 번호
    private BigDecimal review_num;
    @NonNull
    // 글 작성자이메일 글 작성자이메일
    private String mb_email;
    @NonNull
    // 리뷰 내용 리뷰 내용
    private String review_content;
    @NonNull
    // 점수 점수
    private BigDecimal score;

    // 리뷰 날짜 리뷰 날짜
    private Timestamp review_date;

    // 장소 순번 
    private BigDecimal gc_num;
}
