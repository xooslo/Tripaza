create table member(
	id varchar2(30) not null,
	pwd varchar2(20) not null,
	pwdCk varchar2(20),
	nick varchar2(50) not null,
	name varchar2(30) not null,
	gender varchar(10),
	tel varchar2(50),
	CONSTRAINT member_id PRIMARY KEY(id)
);

create table contents(
	id INT,
	title varchar2(100),
	content varchar2(4000),
	country varchar2(20),
	writter varchar2(30),
	CONSTRAINT content_id PRIMARY KEY(id),
	foreign key(writter) references member(id)
);

drop table member;
drop table contents;

insert into member values('asd1234', '1234', '아기', 'sherlock', '1963-11-09', '남자', '824-456-789');
insert into member values('yonghwan', '0610', '최강용환', '김용환', '2005-06-10', '남자', '010-4567-8901');

insert into CONTENTS values(1,'aaaa','aaaaaaaa', '일본', 'asd1234');
insert into CONTENTS values(2,'bbbb','cccccccc', '프랑스', 'yonghwan');

select * from MEMBER;
select * from contents;