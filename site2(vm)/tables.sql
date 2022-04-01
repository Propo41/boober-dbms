clear screen;

drop table Passenger cascade constraints;
drop table Driver cascade constraints;
drop table Location cascade constraint;
drop table Ride cascade constraints;

create table Passenger(
pid integer,
username varchar(20),
password varchar(20),
city varchar(20),
PRIMARY KEY(pid)
);

create table Driver(
did integer,
username varchar(20),
password varchar(20),
city varchar(20),
carType varchar(20),
isAvailable integer, 
PRIMARY KEY(did)
);

create table Location(
name varchar(20),
latitude number,
longitude number
);

create table Ride(
did integer,
pid integer,
fare number,
travelDate date
);


CREATE GLOBAL TEMPORARY TABLE TempRideInfo(
id int,    
did int,
pid int,
fare number)
ON COMMIT DELETE ROWS;

commit;