clear screen;

drop table Passenger cascade constraints;
drop table Driver cascade constraints;
drop table Location cascade constraint;
drop table Ride cascade constraints;
drop table TempRideInfo;

create table Passenger(
pid int,
username varchar(20),
password varchar(20),
city varchar(20),
PRIMARY KEY(pid)
);

create table Driver(
did int,
username varchar(20),
password varchar(20),
city varchar(20),
carType varchar(20),
isAvailable int, 
PRIMARY KEY(did)
);

create table Location(
name varchar(20),
latitude number,
longitude number
);

create table Ride(
did int,
pid int,
fare number,
travelDate date 
);

commit;


CREATE GLOBAL TEMPORARY TABLE TempRideInfo(
id int,    
did int,
pid int,
fare number)
ON COMMIT DELETE ROWS;

CREATE OR REPLACE VIEW LocationData as (select * from Location union (select * from Location@site2));
CREATE OR REPLACE VIEW RideData as (select Ride.did, Ride.fare, Ride.travelDate, Driver.username as dname, Passenger.username as pname from ((Ride inner join Driver on Ride.did = Driver.did) inner join Passenger on Ride.pid = Passenger.pid));
