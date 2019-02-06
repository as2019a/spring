select * from users;
insert into users values('admin','1111','관리자',sysdate);

drop table subcategory;
drop table category;
create table category(
    category VARCHAR2(30) primary key
);

insert into category values('outer');
insert into category values('shirts');
insert into category values('pants');
insert into category values('shoes');

delete from category where category = 'shirt';

create table product(
    model VARCHAR2(30) primary key,
    category VARCHAR2(30) references category(category),
    manufacturer VARCHAR2(30) not null,
    price number not null,
    discount number(2,2) not null,
    image VARCHAR2(50) not null,
    content clob not null,
    count number,
    regdate date not null
);

insert into product values('coat-a', 'outer', 'polo', 300000, 0.1, 
                        'coat-a.jpg', '올 겨울을 버틸 캐시미어 롱코트', 10,
                        sysdate);
insert into product values('coat-b', 'outer', 'polo', 200000, 0.15, 
                        'coat-b.jpg', '롱코트 시대는 끝났다. 이젠 숏코트', 20,
                        sysdate);
insert into product values('coat-c', 'outer', 'polo', 500000, 0.30, 
                        'coat-c.jpg', '귀욤귀욤열매를 먹은 떡볶이코트', 15,
                        sysdate);
insert into product values('coat-d', 'outer', 'polo', 300000, 0.2, 
                        'coat-d.jpg', '가을타는 당신을 위한 트랜치코트', 5,
                        sysdate);

select * from product;
desc product;

select * from category;
desc category;

update product set count = 0 where model = 'coat-d';

create table cart(
    id number primary key,
    product_model varchar2(30) references product(model),
    users_id varchar2(20) references users(id),
    count number default(1)
); 

select * from cart;

create sequence seq_cart_id;
select * from cart;

select product_model, sum(count) count from cart 
group by product_model order by count desc;

select product.*,(select nvl(sum(count),0)
from cart where model = product_model) cart_count from product;

-- product table 제약조건 수정
select * from user_constraints where table_name = 'PRODUCT';

alter table product drop constraint SYS_C007129;

alter table product add constraint FK_PRODUCT_CATEGORY
foreign key(category) references category(category) on delete
set null;
select * from category;
select * from product;

-- on update cascade용 트리거 추가
/*create or replace trigger product_update_cascade
    before update of category on category
    for each row
    begin      
        update product set category = :new.category
                       where category = :old.category;
    end;*/
select * from user_constraints where table_name = 'PRODUCT';
alter table cart add constraint FK_CART_PRODUCT_MODEL
foreign key(product_model) references product(model) on delete cascade;

-- 트리거
/*create or replace trigger cart_update_cascade
    before update of model on product
    for each row
    begin      
        update cart set product_model = :new.model
                       where product_model = :old.model;
    end;*/