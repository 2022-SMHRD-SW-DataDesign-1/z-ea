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

public class ReservationDTO {
	
	private BigDecimal rc_num;
	private BigDecimal room_num;
	private Timestamp rc_date;
	// 예약신청 이메일
	private String mb_email;
	private Timestamp check_in;
	private Timestamp check_out;
	
}
