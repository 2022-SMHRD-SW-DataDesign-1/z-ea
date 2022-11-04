package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
@AllArgsConstructor
@Getter
@RequiredArgsConstructor
public class ItemDTO {
	private BigDecimal num;
	private String type;
	private String addr;
	
	@NonNull
	private String name;
	@NonNull
	private String desc;
	
	private String tel;
	private BigDecimal price;
	private String possible;
	private String tag;
	private String facilities;
	private String ad_facilities;


}
