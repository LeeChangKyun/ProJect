CREATE TABLE REVIEWS_BOARD(
	review_num number not null,
	review_title varchar2(100) not null,
	review_content varchar2(1000) not null,
	review_photo varchar2(1000) ,
	review_create_date date default sysdate not null,
	review_viewcount number not null,
	review_like number not null,
	user_nick varchar2(100) not null,
	CONSTRAINT fk_user_nick_reviews FOREIGN KEY(user_nick) REFERENCES USERS(user_nick)
);

CREATE SEQUENCE REVIEWS_review_viewcount
	increment by 1
	start with 1
	minvalue 1
	nomaxvalue
	nocycle
	nocache;

CREATE SEQUENCE REVIEWS_review_like
	increment by 1
	start with 0
	minvalue 0
	nomaxvalue
	nocycle
	nocache;
    
INSERT INTO REVIEWS_BOARD (review_num, review_title, review_content, review_photo, review_create_date, review_viewcount, review_like, user_nick)
VALUES (REVIEWS_review_viewcount.NEXTVAL, '첫번째리뷰', '첫번째임.', NULL, SYSDATE, 10, 5, 'user1');

INSERT INTO REVIEWS_BOARD (review_num, review_title, review_content, review_photo, review_create_date, review_viewcount, review_like, user_nick)
VALUES (REVIEWS_review_viewcount.NEXTVAL, '두번째리뷰', '두번째임.', NULL, SYSDATE, 8, 4, 'user2');

INSERT INTO REVIEWS_BOARD (review_num, review_title, review_content, review_photo, review_create_date, review_viewcount, review_like, user_nick)
VALUES (REVIEWS_review_viewcount.NEXTVAL, '세번째리뷰', '세번째임.', NULL, SYSDATE, 12, 6, 'user3');    
    

DROP TABLE REVIEWS_BOARD;
DROP SEQUENCE REVIEWS_review_viewcount;
DROP SEQUENCE REVIEWS_review_like;
