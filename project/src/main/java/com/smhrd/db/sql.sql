
select * from GLAMPING_CARAVAN_TB where gc_tag='#가족';

select * from COMMUNITY_TB
desc GLAMPING_CARAVAN_TB;
select * from Comment_tb where board_num = 29;
select * from GLAMPING_CARAVAN_TB where gc_num=25;
select count(*) from like_tb where gc_num = 62;

select count(*) from like_tb where gc_num=#{gc_num} and mb_email = #{mb_email}

insert into review_tb(mb_email, review_content,score,review_date, gc_num) values('ha@nef','efwfwfw',5,sysdate,62)

insert into reservation_calendar_tb_1(gc_num,room_num,rc_date, mb_email,check_in,check_out) values(62,2,sysdate,'ha@nef', '1115','1116')
select * from reservation_calendar_tb_1 where mb_email = 'ha@nef'
select * from glamping_caravan_tb where gc_num = 62
INSERT INTO transfer_tb
    (rc_num, 
    transfer_id, 
    transfer_reason, 
    offer_price, 
    reg_date, 
    transfer_status)
	VALUES
    (5, 
    'ha@nef',
    'fwfefw', 
    20000, 
    sysdate, 
    '0')
    
select * from reservation_calendar_tb_1 where mb_email = 'ha@nef'