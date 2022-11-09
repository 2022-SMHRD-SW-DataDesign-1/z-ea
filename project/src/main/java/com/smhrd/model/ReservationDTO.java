package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
@Getter
@AllArgsConstructor
public class ReservationDTO {
	 // 가능한 일정 순번 
    private BigDecimal rc_num;

    // 방 순번 
    private BigDecimal room_num;

    // 가능한 날짜 
    private Timestamp rc_date;

    // 예약자 아이디 
    private String mb_email;

    // 입실 시간 
    private Timestamp check_in;

    // 퇴실 시간 
    private Timestamp check_out;

}
