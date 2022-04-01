SET SERVEROUTPUT ON;


-------DECLARING A PACKAGE----------
CREATE OR REPLACE PACKAGE driver_utils AS
	
	FUNCTION requestRides(riderCity IN VARCHAR2, currentLocation IN VARCHAR2, destination IN VARCHAR2)
    RETURN int;

    PROCEDURE acceptRide(did IN Ride.did%TYPE, pid IN Ride.pid%TYPE, fare IN Ride.fare%TYPE);
	PROCEDURE declineRide;
    PROCEDURE viewDriverHistory(driverId IN Ride.did%TYPE);
    FUNCTION calculateEstFare(currentLocation IN VARCHAR2, destination IN VARCHAR2)
    RETURN NUMBER;

    FUNCTION isDriverExists(did IN int)
    RETURN int;

    
END driver_utils;
/

--------IMPLEMENTING THE BODY OF A PACKAGE-------- 
CREATE OR REPLACE PACKAGE BODY driver_utils AS

    -- request rides
	FUNCTION requestRides(riderCity IN VARCHAR2, currentLocation IN VARCHAR2, destination IN VARCHAR2)
    RETURN int
	IS

    did Driver.did%TYPE;
	username Driver.username%TYPE;
    city Driver.city%TYPE;
    carType Driver.carType%TYPE;
    totalCount int := 0;


	BEGIN
        -- change site depending on riderCity
        IF riderCity = 'dhaka' THEN
            SELECT count(*) INTO totalCount FROM Driver WHERE isAvailable = 1 and city=riderCity;

            DBMS_OUTPUT.PUT_LINE('Available riders: ' || totalCount);
    	    DBMS_OUTPUT.PUT_LINE('----------------------------');
        
            FOR R IN (SELECT did, username, city, carType FROM Driver where isAvailable = 1 and city=riderCity) LOOP
                did := R.did;
                username := R.username;
                city := R.city;
                carType := R.carType;
                DBMS_OUTPUT.PUT_LINE('Driver ID: ' || did || ' | Username: ' || username || ' | City: ' || city || ' | Car Type: ' || carType);
                        
            END Loop;

        ELSE
            SELECT count(*) INTO totalCount FROM Driver@site2 WHERE isAvailable = 1 and city=riderCity;

            DBMS_OUTPUT.PUT_LINE('Available riders: ' || totalCount);
    	    DBMS_OUTPUT.PUT_LINE('----------------------------');
        
            FOR R IN (SELECT did, username, city, carType FROM Driver@site2 where isAvailable = 1 and city=riderCity) LOOP
                did := R.did;
                username := R.username;
                city := R.city;
                carType := R.carType;
                DBMS_OUTPUT.PUT_LINE('Driver ID: ' || did || ' | Username: ' || username || ' | City: ' || city || ' | Car Type: ' || carType);
                        
            END Loop;
            
        END IF;

        return totalCount;

       
	END requestRides;
	
    -- accept ride
    PROCEDURE acceptRide(did IN Ride.did%TYPE, pid IN Ride.pid%TYPE, fare IN Ride.fare%TYPE)
	IS

    currDate DATE;
	
	BEGIN
        select SYSDATE into currDate from dual;
        -- insert into Ride table at both sites
        insert into Ride VALUES(did, pid, fare, SYSDATE);
        insert into Ride@site2 VALUES(did, pid, fare, SYSDATE);
		
	END acceptRide;

     -- decline ride
    PROCEDURE declineRide
	IS

	BEGIN
        DBMS_OUTPUT.PUT_LINE('Ride declined!');
	END declineRide;
    

    -- calculate estimated fare
    FUNCTION calculateEstFare(currentLocation IN VARCHAR2, destination IN VARCHAR2)
    RETURN NUMBER
    IS

    fare NUMBER := 0;
    distance NUMBER := 0;

    latitude1 Location.latitude%TYPE;
    longitude1 Location.longitude%TYPE;
    latitude2 Location.latitude%TYPE;
    longitude2 Location.longitude%TYPE;

    BEGIN
        DBMS_OUTPUT.PUT_LINE('Calculating fare...');

        select latitude, longitude into latitude1, longitude1 from LocationData where name = currentLocation;
        select latitude, longitude into latitude2, longitude2 from LocationData where name = destination;

        distance := SQRT(POWER(latitude2 - latitude1, 2) + POWER(longitude2 - longitude1, 2));
        fare := 55 + distance * 10 + 5;

        DBMS_OUTPUT.PUT_LINE(distance || ' km ' || fare || ' taka');
        return fare;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            return -1;

    END calculateEstFare;


     -- view driver history
    PROCEDURE viewDriverHistory(driverId IN Ride.did%TYPE)
	IS

	BEGIN
        DBMS_OUTPUT.PUT_LINE('Viewing driver history: ');
        DBMS_OUTPUT.PUT_LINE('----------------------------');
        FOR R IN (SELECT * FROM RideData WHERE did = driverId) LOOP
            DBMS_OUTPUT.PUT_LINE('Passenger Name: ' || R.pname ||  ' | Fare: ' || R.fare || ' | Date: ' || R.travelDate);
        END LOOP;
	END viewDriverHistory;

    -- check if driver exists
    FUNCTION isDriverExists(did IN int)
    RETURN int
	IS

    totalCount int := 0;

	BEGIN
       SELECT count(*) into totalCount FROM Driver WHERE did = did;
       return totalCount;
      
    END isDriverExists;

END driver_utils;
/
