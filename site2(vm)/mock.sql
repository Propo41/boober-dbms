insert into Passenger(pid, username, password, city) values(7, 'brimstone', 'passenger123', 'comilla');
insert into Passenger(pid, username, password, city) values(8, 'reyna', 'passenger123', 'comilla');
insert into Passenger(pid, username, password, city) values(9, 'sniper', 'passenger123', 'comilla');
insert into Passenger(pid, username, password, city) values(10, 'lasineyra', 'passenger123', 'comilla');
insert into Passenger(pid, username, password, city) values(11, 'prova', 'passenger123', 'comilla');
insert into Passenger(pid, username, password, city) values(12, 'leone', 'passenger123', 'comilla');

insert into Driver(did, username, password, city, carType, isAvailable) values(7, 'meghla', 'driver123', 'comilla', 'standard', 1);
insert into Driver(did, username, password, city, carType, isAvailable) values(8, 'lana', 'driver123', 'comilla', 'premium', 1);
insert into Driver(did, username, password, city, carType, isAvailable) values(9, 'rhoades', 'driver123', 'comilla', 'standard', 1);
insert into Driver(did, username, password, city, carType, isAvailable) values(10, 'mandella', 'driver123', 'comilla', 'standard', 0);
insert into Driver(did, username, password, city, carType, isAvailable) values(11, 'ambrose', 'driver123', 'comilla', 'premium', 1);
insert into Driver(did, username, password, city, carType, isAvailable) values(12, 'sasha', 'driver123', 'comilla', 'premium', 1);
 

-- locations for site2 [comilla]
insert into Location(name, latitude, longitude) values('barura', 33.7, 20.1);
insert into Location(name, latitude, longitude) values('brahmanpara', 20.3, 15.3);
insert into Location(name, latitude, longitude) values('burichong', 28.7, 10.4);
insert into Location(name, latitude, longitude) values('homna', 25.3, 50.4);
insert into Location(name, latitude, longitude) values('laksam', 26.7, 40.4);
insert into Location(name, latitude, longitude) values('muradnagar', 27.7, 30.4);
insert into Location(name, latitude, longitude) values('titas', 28.7, 10.4);
insert into Location(name, latitude, longitude) values('lalmai', 29.8, 74.8);

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