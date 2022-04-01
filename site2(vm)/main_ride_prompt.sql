SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT X NUMBER PROMPT "Choose option: [1-Accept Ride, 2-Reject Ride]";

DECLARE
    USER VARCHAR2(30):= 'mrbilbul';
    USERID int:= 1;

    choice NUMBER;

    did int;
    pid int;
    estFare number;
   
BEGIN
    choice := &X;

    if choice = 1 then
        select did, pid, fare into did, pid, estFare from TempRideInfo where id = 1;
        driver_utils.acceptRide(did, pid, estFare);
    else
        driver_utils.declineRide;
    end if;
END;
/

