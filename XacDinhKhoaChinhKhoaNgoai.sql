create database AccountManager;
use AccountManager;
create table Customers(
    Code int ,
    FullName varchar(255) not null ,
    Address varchar(255),
    Email varchar(255) ,
    PhoneNumber varchar(10) unique ,
    constraint primary key (Code)
);
create table Account(
    Code int,
    Type varchar(20) not null ,
    ReleaseDate DATE,
    Balance double,
    primary key (Code)
);
create table Transaction
(
    CodeTrans   int,
    Cast        double not null,
    Date        date,
    Description varchar(255),
    primary key (CodeTrans)

);
alter table Customers add Account_Code int after Code;
alter table Customers add foreign key (Account_Code) references Account(Code);
alter table Transaction add  Account_Code int after CodeTrans;
alter table Transaction add foreign key (Account_Code) references Account(Code);
