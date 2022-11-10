
select * from GLAMPING_CARAVAN_TB where gc_tag='#가족';

select * from COMMUNITY_TB
desc GLAMPING_CARAVAN_TB;
select * from Comment_tb where board_num = 29;
select * from GLAMPING_CARAVAN_TB where gc_num=25;
insert into review_tb(mb_email, review_content,score,review_date, gc_num) values('ha@nef','efwfwfw',5,sysdate,62)