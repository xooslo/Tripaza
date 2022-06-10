create table member(
	id varchar2(30) not null,
	pwd varchar2(20) not null,
	pwdCk varchar2(20),
	nick varchar2(25) not null,
	name varchar2(30) not null,
	gender varchar(10),
	tel varchar2(50),
	primary key(id)
);

create table contents(
	id varchar2(30),
	content varchar2(4000),
	title varchar2(100),
	country number(20),
	uploadDate date,
	primary key(country),
	foreign key (id) references member(id)
);

drop table member;
drop table contents;

insert into member values('asd1234', '1234', '아기', 'sherlock', '1963-11-09', '남자', '824-456-789');
insert into member values('yonghwan', '0610', '최강용환', '김용환', '2005-06-10', '남자', '010-4567-8901');

select * from MEMBER;