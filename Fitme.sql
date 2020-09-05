create table client(
unm varchar(50),
pwd varchar(50),
pno varchar(40),
email varchar(50),
age varchar(50),
wgt varchar(50),
hgt varchar(50),
gender varchar(30),
setwt varchar(50)
);
drop table client;
insert into client values('a','a','123456','A@gmail.com',18,56,5,'female',70);
insert into client values('b','b','98765','b@gmail.com',18,56,5,'female',70);
insert into client values('c','c','3456','c@gmail.com',18,56,5,'female',70);
insert into client values('r','r','3456','c@gmail.com',18,56,5,'female',70);

select * from client where unm='a';
update client set pwd='a' where unm='a';
commit;

select * from client;

create table exercise(
excid varchar(20) primary key,
exercise varchar(60),
calb number
);
insert into exercise values('1','weight lifting','90');
insert into exercise values('2','bowling','90');
insert into exercise values('3','slow dancing','90');
insert into exercise values('4','badminton','135');
insert into exercise values('5','fast dacing','180');
insert into exercise values('6','swimming','180');
insert into exercise values('7','jogging/walking','180');
insert into exercise values('8','bicycling','240');
insert into exercise values('9','running','240');
insert into exercise values('10','sleeping','90');
insert into exercise values('11','standing','38');
insert into exercise values('12','reading/sitting','34');
insert into exercise values('13','cooking','75');

drop table exercise;
select * from exercise;

create table food(
foodid varchar(50 )primary key,
food varchar(30),
cal number
);

insert into food values('1','Milk','42');
insert into food values('2','Eggs','78');
insert into food values('3','Pasta','390');
insert into food values('4','Protien Shakes','140');
insert into food values('5','White Rice','240');
insert into food values('6','Yogurt','310');
insert into food values('7','Apple','57');
insert into food values('8','Carrots','53');
insert into food values('9','cucumbers','52');
insert into food values('10','Paneer','150');

insert into food values('11','Cahpatti','80');
insert into food values('12','Biscuit','70');
insert into food values('13','Pakoras','175');
insert into food values('14','Kheer','180');

select * from food;
commit;
drop table food;

create table comments(
nm varchar(50),
email varchar(50),
quer long
);
select * from comments;
commit;
