SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT X NUMBER PROMPT "Enter driver id = "

DECLARE
    USER VARCHAR2(30):= 'mrbilbul';
    USERID int:= 1;

    estFare NUMBER:=0;
    driverId int;
    isDriverExists int := 0;

BEGIN
    driverId := &X;

    isDriverExists := driver_utils.isDriverExists(driverId);
    if isDriverExists = 0 then
        DBMS_OUTPUT.PUT_LINE('Driver does not exist');
    else
        DBMS_OUTPUT.PUT_LINE('---------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Driver found! Viewing driver history: ');
        driver_utils.viewDriverHistory(driverId);
        --  update TempRideInfo table where id = 1
        Update TempRideInfo set did = driverId where id = 1;
    end if;

END;
/

@"C:\Users\Swapnil\Desktop\project\site1(pc)\main_ride_prompt.sql" 
