
select * from GLAMPING_CARAVAN_TB where gc_tag='#가족';

select * from COMMUNITY_TB
desc GLAMPING_CARAVAN_TB;
select * from Comment_tb where board_num = 29;
select * from GLAMPING_CARAVAN_TB where gc_num=25;
select count(*) from like_tb where gc_num = 62;



select count(*) from like_tb where gc_num=#{gc_num} and mb_email = #{mb_email}

insert into review_tb(mb_email, review_content,score,review_date, gc_num) values('ha@nef','efwfwfw',5,sysdate,62)