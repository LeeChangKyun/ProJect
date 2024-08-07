CREATE TABLE INQUIRY_BOARD(
	inquiry_num varchar2(100) not null,
	inquiry_title varchar2(100) not null,
	inquiry_content varchar2(1000) not null,
	inquiry_create_date DATE default sysdate not null,
	user_nick varchar2(100) not null,
	CONSTRAINT fk_user_nick_inquiry FOREIGN KEY(user_nick) REFERENCES USERS(user_nick)
);

DROP TABLE INQUIRY;