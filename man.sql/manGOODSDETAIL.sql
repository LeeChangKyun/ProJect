CREATE TABLE GOODSDETAIL(
	goods_price varchar2(100) PRIMARY KEY not null,
	goods_image varchar2(1000) not null,
	goodsdetail_quantity varchar2(100) not null,
	goodsdetail_name varchar2(100) not null,
    CONSTRAINT fk_goodsdetail_name FOREIGN KEY(goodsdetail_name) REFERENCES DETAIL(goodsdetail_name)
);

DROP TABLE GOODSDETAIL;