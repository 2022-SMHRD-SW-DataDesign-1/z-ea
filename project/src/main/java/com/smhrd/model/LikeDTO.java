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
public class LikeDTO {
	
	@NonNull
    private BigDecimal gc_num;
    
	@NonNull
	private BigDecimal liked;
	@NonNull
	private String mb_email;
    private Timestamp like_date;
}
