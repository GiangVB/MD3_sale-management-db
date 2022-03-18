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