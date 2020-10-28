create table movie(
movieCode number(30),
movieName varchar2(200),
genre varchar2(40),
director varchar2(40),
opendate varchar2(30),
showTime varchar2(30),
nationName varchar2(40),
actors varchar2(2000),
grade varchar2(30),
poster varchar2(500),
intro varchar2(2000),
regDate date default sysdate,
primary key (movieCode)
);

insert into movie values(1, '��󷣵�', '������', '����', '20200425', '120', '�̱�', '���� ����', '15��', '�����ͻ���', '�Ұ�', sysdate);
insert into movie values(2, '1917', '������', '����', '20200425', '120', '�̱�', '���� ����', '15��', '�����ͻ���', '�Ұ�', sysdate);
insert into movie values(3, '�����', '������', '����', '20200425', '120', '�̱�', '���� ����', '15��', '�����ͻ���', '�Ұ�', sysdate);

BEGIN
    FOR I IN 1..14
    LOOP
    insert into seat values(1, 9, 'A'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'B'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'C'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'D'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'E'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'F'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'G'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'H'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'I'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'J'||TO_CHAR(I), 'Y');
    insert into seat values(1, 9, 'K'||TO_CHAR(I), 'Y');
    END LOOP;

END;

insert into movie values(20201123, '�Ķ�', '�帣', '����', '20200827', '115', '�߱�', '�����', '12���̻������', 'http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83080/83080_320.jpg', '�ٰŸ�' ,sysdate);
insert into movie values(20201124, '���', '�帣', '����', '20200827', '84', '�ѱ�', '�����', '12���̻������', 'http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83680/83680_320.jpg', '�ٰŸ�' ,sysdate);
insert into movie values(20201125, '�˰�', '�帣', '����', '20200827', '100', '�ѱ�', '�����', '12���̻������', 'http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83710/83710_320.jpg', '�ٰŸ�' ,sysdate);
insert into movie values(20201126, '��! ����', '�帣', '����', '20200827', '109', '�ѱ�', '�����', '12���̻������', 'http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83657/83657_320.jpg', '�ٰŸ�' ,sysdate);
insert into movie values(20201127, '�ƿ�����Ʈ', '�帣', '����', '20200827', '123', '�̱�', '�����', '12���̻������', 'http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83668/83668_320.jpg', '�ٰŸ�' ,sysdate);

insert into schedule values(5, 1, 20201123, '20200922', '08:32','10:27');
insert into schedule values(6, 2, 20201124, '20200923', '14:00','15:24');
insert into schedule values(7, 3, 20201125, '20200923', '17:32','19:42');
insert into schedule values(8, 3, 20201126, '20200922', '09:11','11:00');
insert into schedule values(9, 2, 20201127, '20200922', '18:32','20:35');

create table theater(
theaterCode number(2),
totalseatcount number(20),
currentseatcount number(20),
primary key(theaterCode)
);

insert into theater values(1, 130, 50); 

create table seat(
theaterCode number(10),
scheduleCode number(10),
seatRow varchar2(10),
seatColumn number(10),
enabled varchar2(10)
--foreign key(theaterCode) references theater(theaterCode)
);

create table schedule(
scheduleCode number(20), 
theaterCode number(20), 
movieCode number(20),  
playdate varchar2(30), 
starttime varchar2(50),
endtime varchar2(50) 
--primary key (scheduleCode),
--foreign key(theaterCode) references theater(theaterCode),
--foreign key(movieCode) references movie(movieCode)
);

insert into schedule values(1, 1, 1, '20200425', '16:48', '19:02');
insert into schedule values(2, 2, 2, '20200425', '17:28', '20:02');
insert into schedule values(3, 3, 3, '20200425', '13:18', '15:02');
--insert into schedule values(4, 4, 1, '20200425', '14:28', '16:02');
--insert into schedule values(5, 5, 1, '20200425', '09:38', '11:02');
--insert into schedule values(6, 6, 1, '20200425', '11:58', '13:02');
--insert into schedule values(7, 7, 1, '20200425', '19:28', '21:02');

--���̺� ���� ��ɾ�
--drop table movie cascade constraints;
--drop table theater cascade constraints;
--drop table seat cascade constraints;
--drop table schedule cascade constraints;

CREATE TABLE paymentHistory(
imp_uid varchar2(200),
paymentNumber varchar2(50),
reservationNumber number(10),
userId varchar2(50),
movieName varchar2(50),
theaterNumber number(10),
playDate varchar2(20),
startTime varchar2(20),
endTime varchar2(20),
adultType number(2),
youthType number(2),
preferentialType number(2),
seatList varchar2(30),
payAmount number(10),
payDate date default sysdate
);
ALTER TABLE paymentHistory ADD PRIMARY KEY(paymentNumber);

CREATE SEQUENCE reservation_seq
start with 1
increment by 1
nocycle
nocache;

CREATE TABLE BOARD(
boardNumber number(10),
category varchar2(30),
title varchar2(200),
writer varchar2(40),
writeDate date default sysdate,
updateDate date,
contents varchar2(2000),
hit number(10),
primary key (boardNumber)
);
insert into board values(board_seq.nextval, '�з�', '����', 'userId', sysdate, sysdate, '����', 1);
update board set title = '����', updateDate = sysdate, contents = '�����Դϴ�.' where boardNumber = 1;
drop table board;
select * from board;

select * from board where boardNumber = 12;



CREATE SEQUENCE board_seq
start with 1
increment by 1
nocycle
nocache;

insert into paymentHistory values(
	paymentHistory_seq.nextval, reservation_seq.nextval, 'userId', #{schedule.selectedMovie},
	#{schedule.selectedTheaterNumber}, #{schedule.selectedDate}, #{schedule.selectedStartTime}, #{schedule.selectedEndTime}, #{seat.adultType}, #{seat.youthType}, #{seat.preferentialType}, #{seatList}, #{seat.payAmount}, sysdate
	)

CREATE SEQUENCE tbl_movie_seq
start with 1
increment by 1
nocycle
nocache;

	SELECT * FROM(
						SELECT ROWNUM RN, A.*
							FROM(
								SELECT *
								FROM MOVIE
								ORDER BY moviecode DESC
								) A
							)
            
		WHERE RN BETWEEN 0 AND 10;
        
insert into movie (
		moviecode, moviename, genre, director, opendate, showtime, 
		nationName, actors, grade, poster, intro, regdate)
		VALUES(tbl_movie_seq.nextval, '�����', '�׼�',
		'�ؼ��� ���', '2017�� 11�� 2��', '125��', '�̱�', '�ι�Ʈ �ٿ�� �ִϾ�, ũ���� ���ݽ�, ��ũ ���ȷ�, ũ���� �𽺿���, ��Į�� ���ѽ�, ������ ���� ��', '12�� �̻� ������',
		'2.jpg', '���Ǵ�Ƽ �� ���� ���ݸ� ��Ƴ��� ����, ������ ����� �� �����. ���� ���� �׵��� ���� ��� ���� �ɾ���! ������ �����, ����� �ٲ� ������ ������ ��������!', SYSDATE)

