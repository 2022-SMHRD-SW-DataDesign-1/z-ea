package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class SurveyDTO2 {

	private BigDecimal survey_num;
	@NonNull
	private String mb_email;
	@NonNull
	private String mb_age;
	@NonNull
	private String mb_view;
	@NonNull
	private String mb_company;
	@NonNull
	private String mb_tour_theme;
	@NonNull
	private String mb_tour_type;
	@NonNull
	private String mb_tip;
	@NonNull
	private String mb_season;
	private Timestamp survey_date;

}
