CREATE TABLE GOODS(
	goods_name varchar2(100) PRIMARY KEY not null,
	goods_image varchar2(1000) not null,
	goods_price varchar2(100) not null,
	CONSTRAINT fk_goods_price FOREIGN KEY(goods_price) REFERENCES GOODSDETAIL(goods_price)
);

DROP TABLE GOODS;