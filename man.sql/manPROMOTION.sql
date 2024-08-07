CREATE TABLE PROMOTION_BOARD(
	promotion_num varchar2(100) not null,
	promotion_title varchar2(100) not null,
	promotion_content varchar2(1000) not null,
	promotion_create_date DATE default sysdate not null,
	user_nick varchar2(100) not null,
    promotion_photo varchar2(1000),
	CONSTRAINT fk_user_nick_promotion FOREIGN KEY(user_nick) REFERENCES USERS(user_nick)
);

DROP TABLE promotion;