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
public class SurveyDTO {
	//설문번호
	private BigDecimal survey_num;
	// 설문자 나이
	 @NonNull
	private BigDecimal mb_age;
	// 좋아하는 뷰
	 @NonNull
	private String mb_view;
	// 여행테마
	private String mb_tour_theme;
	//여행 유형
	private String mb_tour_type;
	//동행자
	private String mb_company;
	// 설문날짜
	private Timestamp survey_date;
}
