delete from users;

insert into users values('as2019a', '1111', '이영섭');
insert into users values('lee_admin', '1111', '이혜나');
insert into users values('lee_manager', '1111', '이수연');
insert into users values('lee_double', '1111', '이수진');

select * from users;
desc users;
drop table authority;
create table authority(
    id number primary key,
    users_id varchar2(20) constraint FK_users_id references users(id),
    role varchar2(15) check(role like 'ROLE#_%' ESCAPE '#')
);

desc authority;
select * from authority;
create sequence seq_authority_id;
insert into authority values(seq_authority_id.nextval, 'lee_admin', 'ROLE_ADMIN');
insert into authority values(seq_authority_id.nextval, 'lee_manager', 'ROLE_MANAGER');
insert into authority values(seq_authority_id.nextval, 'lee_double', 'ROLE_ADMIN');
insert into authority values(seq_authority_id.nextval, 'lee_double', 'ROLE_MANAGER');