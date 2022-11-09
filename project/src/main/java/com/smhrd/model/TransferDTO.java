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
		// TODO Auto-generated constructor stub
	
	// 양도 번호
	private BigDecimal transfer_num;
	@NonNull
	private BigDecimal rc_num;
	@NonNull
	private String transfer_id;
	@NonNull
	private String assignee_id;
	@NonNull
	private BigDecimal offer_price;
	private Timestamp reg_date;
	private char transfer_status;
	
	
	
	
	
	

}
