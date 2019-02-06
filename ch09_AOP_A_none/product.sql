drop table product_input;

create table product_input(
    name varchar2(20),
    count number not null,
    regdate date not null
);

insert into product_input values('컴퓨터', 8, sysdate);

drop table product_remain;

create table product_remain(
    name varchar2(20),
    count number not null,
    regdate date not null
);

insert into product_remain values('컴퓨터', 3, sysdate);

drop table product_output;

create table product_output(
    name varchar2(20),
    count number not null,
    regdate date not null
);

insert into product_output values('컴퓨터', 5, sysdate);