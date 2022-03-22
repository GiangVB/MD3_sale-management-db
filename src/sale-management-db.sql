create database quanlybanhang;
use quanlybanhang;

create table customer(
    cID int not null auto_increment primary key ,
    cName varchar(20) not null ,
    cAge int not null
);

create table product(
    pID int not null auto_increment primary key ,
    pName varchar(50) not null ,
    pPrice int not null
);

create table `order`(
    oID int auto_increment not null primary key ,
    cID int not null ,
    oDate date not null ,
    oTotalPrice int not null ,
    foreign key (cID) references customer(cID)
);

create table orderdetail(
    oID int not null ,
    pID int not null ,
    odQTY int not null ,
    primary key (oID,pID),
    foreign key (oID) references `order`(oID),
    foreign key (pID) references product(pID)
);

insert into customer(cName, cAge) VALUES ('Minh Quan', 10);
insert into customer(cName, cAge) VALUES ('Ngoc Oanh', 20);
insert into customer(cName, cAge) VALUES ('Hong Ha', 50);

alter table `order` modify oTotalPrice int;

insert into `order`(cID, oDate) values (1,'2006-3-21');
insert into `order`(cID, oDate) values (2,'2006-3-23');
insert into `order`(cID, oDate) values (1,'2006-3-16');

insert into product(pName, pPrice) values ('May Giat',3);
insert into product(pName, pPrice) values ('Tu Lanh',5);
insert into product(pName, pPrice) values ('Dieu Hoa',7);
insert into product(pName, pPrice) values ('Quat',1);
insert into product(pName, pPrice) values ('Bep Dien',2);

insert into orderdetail(oID, pID, odQTY) values (1,1,3);
insert into orderdetail(oID, pID, odQTY) values (1,3,7);
insert into orderdetail(oID, pID, odQTY) values (1,4,2);
insert into orderdetail(oID, pID, odQTY) values (2,1,1);
insert into orderdetail(oID, pID, odQTY) values (3,1,8);
insert into orderdetail(oID, pID, odQTY) values (2,5,4);
insert into orderdetail(oID, pID, odQTY) values (2,3,3);

