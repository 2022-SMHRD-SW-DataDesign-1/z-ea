package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
@Getter
@AllArgsConstructor
public class GlampingDTO {
	 // 장소 순번 
    private BigDecimal gc_num;

    // 장소 유형 
    private String gc_type;

    // 장소 주소 
    private String gc_addr;

    // 장소 명 
    private String gc_name;

    // 장소 설명 
    private String gc_desc;

    // 장소 연락처 
    private String gc_tel;

    // 호실 가격 
    private BigDecimal gc_price;

    // 예약 가능 여부 
    private String gc_possible;

    // 해시 태그 
    private String gc_tag;

    // 장소 시설 
    private String gc_facilities;

    // 장소 부가시설 
    private String gc_Ad_facilities;
}
