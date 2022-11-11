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
public class TransferDTO {
	
	 // 양도 순번 
    private BigDecimal transfer_num;

    // 예약 순번 
    @NonNull
    private BigDecimal rc_num;

    @NonNull
    // 양도자 아이디 
    private String transfer_id;
    // 양도이유 
    @NonNull
    private String transfer_reason;
    // 제시 가격 
    @NonNull
    private BigDecimal offer_price;

    // 게시 일자 
    private Timestamp reg_date;

    // 체결 여부 
    private String transfer_status;

	
	
	
	
	
	

}
