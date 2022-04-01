insert into Passenger(pid, username, password, city) values(1, 'mrbilbul', 'passenger123', 'dhaka');
insert into Passenger(pid, username, password, city) values(2, 'propo178', 'passenger123', 'dhaka');
insert into Passenger(pid, username, password, city) values(3, 'tashfiq333', 'passenger123', 'dhaka');
insert into Passenger(pid, username, password, city) values(4, 'sadge', 'passenger123', 'dhaka');
insert into Passenger(pid, username, password, city) values(5, 'phoenix', 'passenger123', 'dhaka');
insert into Passenger(pid, username, password, city) values(6, 'banono', 'passenger123', 'dhaka');
insert into Passenger(pid, username, password, city) values(7, 'amb124', 'passenger123', 'dhaka');

insert into Driver(did, username, password, city, carType, isAvailable) values(1, 'matcovic', 'driver123', 'dhaka', 'standard', 1);
insert into Driver(did, username, password, city, carType, isAvailable) values(2, 'cow', 'driver123', 'dhaka', 'standard', 0);
insert into Driver(did, username, password, city, carType, isAvailable) values(3, 'mrbin1', 'driver123', 'dhaka', 'deluxe', 1);
insert into Driver(did, username, password, city, carType, isAvailable) values(4, 'mrbin2', 'driver123', 'dhaka', 'standard', 0);
insert into Driver(did, username, password, city, carType, isAvailable) values(5, 'mrbin3', 'driver123', 'dhaka', 'deluxe', 1);
insert into Driver(did, username, password, city, carType, isAvailable) values(6, 'mrbin4', 'driver123', 'dhaka', 'standard', 1);


-- locations for site1 [dhaka]
insert into Location(name, latitude, longitude) values('kalabagan', 33.7, 20.1);
insert into Location(name, latitude, longitude) values('dhanmondi', 20.3, 15.3);
insert into Location(name, latitude, longitude) values('mirpur', 28.7, 10.4);
insert into Location(name, latitude, longitude) values('tongi', 25.3, 50.4);
insert into Location(name, latitude, longitude) values('mohammadpur', 26.7, 40.4);
insert into Location(name, latitude, longitude) values('bailey road', 27.7, 30.4);
insert into Location(name, latitude, longitude) values('shymoli', 28.7, 10.4);
insert into Location(name, latitude, longitude) values('tejgoan', 29.8, 74.8);

insert into Ride(did, pid, fare, travelDate) values(1, 1, 100, '13-Feb-22');
insert into Ride(did, pid, fare, travelDate) values(1, 2, 200, '14-Mar-21');
insert into Ride(did, pid, fare, travelDate) values(1, 3, 300, '15-Jun-21');
insert into Ride(did, pid, fare, travelDate) values(2, 4, 400, '15-Mar-22');
insert into Ride(did, pid, fare, travelDate) values(2, 5, 500, '15-Mar-22');
insert into Ride(did, pid, fare, travelDate) values(2, 6, 600, '16-Feb-22');
insert into Ride(did, pid, fare, travelDate) values(2, 7, 700, '17-Mar-22');
insert into Ride(did, pid, fare, travelDate) values(3, 6, 800, '18-Feb-22');
insert into Ride(did, pid, fare, travelDate) values(3, 6, 900, '19-Jun-22');
insert into Ride(did, pid, fare, travelDate) values(3, 1, 1000, '23-Mar-22');
insert into Ride(did, pid, fare, travelDate) values(4, 1, 1100, '23-Mar-22');
insert into Ride(did, pid, fare, travelDate) values(4, 1, 1200, '24-Feb-22');
insert into Ride(did, pid, fare, travelDate) values(4, 2, 1300, '25-Feb-22');
insert into Ride(did, pid, fare, travelDate) values(5, 2, 1400, '26-Feb-22');
insert into Ride(did, pid, fare, travelDate) values(5, 3, 1500, '23-Jun-22');
insert into Ride(did, pid, fare, travelDate) values(5, 3, 1600, '25-Feb-22');
insert into Ride(did, pid, fare, travelDate) values(6, 4, 1700, '13-Jan-22');
insert into Ride(did, pid, fare, travelDate) values(6, 1, 1800, '23-Jan-22');
insert into Ride(did, pid, fare, travelDate) values(6, 2, 1900, '15-Feb-22');

commit;