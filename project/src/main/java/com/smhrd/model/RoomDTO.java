package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
@Getter
@AllArgsConstructor
public class RoomDTO {
	   // 방 순번 
    private BigDecimal room_num;

    // 장소 순번 
    private BigDecimal gc_num;

    // 방 이름 
    private String room_name;

    // 방 상태 
    private String room_status;

    // 수용 인원수 
    private BigDecimal people_limit;

}
