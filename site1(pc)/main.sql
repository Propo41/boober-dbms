clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

@"C:\Users\Swapnil\Desktop\project\site1(pc)\tables.sql"
@"C:\Users\Swapnil\Desktop\project\site1(pc)\mock.sql"
@"C:\Users\Swapnil\Desktop\project\site1(pc)\utils.sql"
@"C:\Users\Swapnil\Desktop\project\site1(pc)\trigger.sql"

clear screen;

DECLARE
    USER VARCHAR2(30):= 'mrbilbul';
    USERID int:= 1;

    SITE1 VARCHAR2(10):= 'dhaka';
    SITE1 VARCHAR2(10):= 'comilla';

BEGIN 
    DBMS_OUTPUT.PUT_LINE('Logged in as, user: ' || USER);
    DBMS_OUTPUT.PUT_LINE('Current process: [Request Available Rides]');
END;
/

DECLARE
    totalCount int:=0;
    estFare NUMBER:=0;
	S varchar2(30);
    choice NUMBER := 0;

    currentCity Passenger.city%type;
    currentLocation Location.name%type;
    destLocation Location.name%type;

    driverId int;
    isDriverExists int := 0;
    rideOption int := 0;

BEGIN
    currentCity := '&currentCity';
    currentLocation := '&currentLocation';
    destLocation := '&destLocation';
    totalCount := driver_utils.requestRides(currentCity, currentLocation, destLocation);
    if totalCount = 0 then
        DBMS_OUTPUT.PUT_LINE('No rides available');
    else
        DBMS_OUTPUT.PUT_LINE('---------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Total rides available: ' || totalCount);
        estFare := driver_utils.calculateEstFare(currentLocation, destLocation);
        if estFare = -1 then         
            DBMS_OUTPUT.PUT_LINE('---------------------------------------------');
            DBMS_OUTPUT.PUT_LINE('Sorry, we do not operate in these regions!');
            DBMS_OUTPUT.PUT_LINE('---------------------------------------------');
        else
            Insert into TempRideInfo(id, did, pid, fare) values(1, -1, 1, estFare);
        end if;

        DBMS_OUTPUT.PUT_LINE('---------------------------------------------');
    end if;

END;
/

@"C:\Users\Swapnil\Desktop\project\site1(pc)\main_ride.sql"
