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

public class CommentDTO {

    // 댓글 번호 댓글 번호
    private BigDecimal comment_num;

    // 글 번호 글 번호
    @NonNull
    private BigDecimal board_num;
    @NonNull
    // 댓글 작성자 댓글 작성자이메일
    private String mb_email;
    @NonNull
    // 댓글 내용 댓글 내용
    private String comment_content;

    // 댓글 날짜 댓글 날짜
    private Timestamp comment_date;

}
