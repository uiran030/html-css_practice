use company;

create table employee (num int not null auto_increment, 
cid varchar(10) not null, cname varchar(10) not null, 
gender varchar(1) not null, zipcode varchar(7) not null, address varchar(50) not null, 
telephone varchar(20) not null, age int not null, primary key(num));

ALTER table customer change telephone handphone varchar(20);

insert into customer (cid, cname, gender, zipcode, address, telephone, age) values('yjhwang', '황영주', 'M', '100-011', '서울시 중구 충무로1가', '234-8879', 35);
insert into customer (cid, cname, gender, zipcode, address, telephone, age) values('khshul', '설기형', 'M', '607-010', '부산시 동래구 명륜동', '764-3784', 33);
insert into customer (cid, cname, gender, zipcode, address, telephone, age) values('chpark', '박철호', 'M', '503-200', '광주시 남구 지석동', '298-9730', 34);
insert into customer (cid, cname, gender, zipcode, address, telephone, age) values('shlee', '이상훈', 'M', '503-201', '광주시 남구 도금동', '838-4347', 32);
insert into customer (cid, cname, gender, zipcode, address, telephone, age) values('jyjang', '장영숙', 'W', '606-065', '부산시 영도구 봉래동5가', '399-9809', 24);
insert into customer (cid, cname, gender, zipcode, address, telephone, age) values('yjbae', '배용진', 'M', '122-014', '서울시 은평구 응암4동', '857-5683', 30);
insert into customer (cid, cname, gender, zipcode, address, telephone, age) values('hbpark', '박혜빈', 'W', '427-760', '경기도 과천시 중앙동', '234-7677', 22);
insert into customer (cid, cname, gender, zipcode, address, telephone, age) values('mskim', '김문수', 'M', '429-020', '경기도 시흥시 신천동', '370-6003', 63);

select * from customer where gender = 'M' and address like '%서울시%' order by age desc;

update customer set address='서울시 구로구 항동' WHERE cid='chpark';

delete from customer WHERE cname="황영주" and address like '%서울시%';