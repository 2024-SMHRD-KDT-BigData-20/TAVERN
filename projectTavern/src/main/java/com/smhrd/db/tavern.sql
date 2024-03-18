create table tavern(
	id varchar2(10)
);

select * from tavern

insert into tavern values('1');

select * from user_info


INSERT INTO user_info (id, pw, name, nick, birthdate, gender, email,joined_at)
VALUES ('tstts55', 'test12', 'test', 'test', '01010101', 'man', 'test@test',sysdate);

select * from user_info where id=#{id} and pw=#{pw}

