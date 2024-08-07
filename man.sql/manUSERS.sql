CREATE TABLE USERS(
	user_id varchar2(100) not null,
	user_name varchar2(100) not null,
	user_nick varchar2(100) PRIMARY KEY not null,
	user_pwd varchar2(100) not null,
	user_address varchar2(200) not null,
	user_create_date DATE default sysdate not null
);

CREATE SEQUENCE USERS_num
	increment by 1
	start with 1
	minvalue 1
	nomaxvalue
	nocycle
	nocache;
    
    
INSERT INTO USERS (user_id, user_name, user_nick, user_pwd, user_address, user_create_date)
VALUES ('user1', '사용자1', 'user1', '1234', '서울시 강남구 123번길', SYSDATE);

INSERT INTO USERS (user_id, user_name, user_nick, user_pwd, user_address, user_create_date)
VALUES ('user2', '사용자2', 'user2', '1234', '서울시 종로구 456로', SYSDATE);

INSERT INTO USERS (user_id, user_name, user_nick, user_pwd, user_address, user_create_date)
VALUES ('user3', '사용자3', 'user3', '1234', '서울시 송파구 789번가', SYSDATE);    

DROP TABLE USERS;
DROP SEQUENCE USERS_num;
