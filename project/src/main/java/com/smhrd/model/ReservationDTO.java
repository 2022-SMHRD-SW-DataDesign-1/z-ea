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
public class ReservationDTO {

	


	@NonNull
    private BigDecimal gc_num;


    // 방 순번
@NonNull
    private BigDecimal room_num;

    // 가능한 날짜 
    private Timestamp rc_date;

    // 예약자 아이디 
    @NonNull
    private String mb_email;

    // 입실 시간 
    @NonNull
    private String check_in;

    // 퇴실 시간 
    @NonNull
    private String check_out;
}
