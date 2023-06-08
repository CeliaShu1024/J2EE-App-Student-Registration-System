create schema PE_A2;
use PE_StudentA2;

create table Admininfo(
    username varchar(255) primary key not null,
    psw varchar(255) not null
);

create table Student(
	SID varchar(255) primary key not null,
    SName varchar(255) not null,
    Gender varchar(6) not null,
    Passport varchar(255) unique not null,
    Programme varchar(255) not null,
    Intake varchar(6) not null,
    Regtime varchar(6) not null,
    Nationality varchar(255) not null,
    phone varchar(255) not null
);
select * from student;

create table Form(
	FID int primary key auto_increment,
    Q1 varchar(255) not null,
    Q2 varchar(255) not null,
    Q3 varchar(255) not null,
    Q4 varchar(255) not null,
    Q5 varchar(255) not null,
    SID varchar(255) unique not null
);
select * from form;

insert Admininfo(username,psw) values("Shamini","111");
insert Admininfo(username,psw) values("ddr","ddr");
update Admininfo SET psw="c8bfh9qvqmtjqnp2mrspb36urovs11m2" where username="Shamini";
update Admininfo SET psw="g3139mqed4q2rk8moikjuthpntfuqph" where username="ddr";