create table member(
	id varchar2(30) not null,
	pwd varchar2(20) not null,
	nick varchar2(25) not null,
	name varchar2(30) not null,
	Bday date,
	gender varchar(10),
	tel varchar2(50),
	primary key(id)
);

create table contents(
	id varchar2(30),
	name varchar2(25),
	content varchar2(4000),
	title varchar2(100),
	foreign key (id) references member(id)
);

drop table member;
drop table contents;

insert into member values('asd1234', '1234', '아기', 'sherlock', 'baker 221B', 22334, 'sherlock_1854@gmail.com');
insert into member values('yonghwan', '0610', '최강용환', '김용환', '서울특별시 청와대', 34228, 'ys2110114@y-y.hs.kr');

select * from MEMBER;