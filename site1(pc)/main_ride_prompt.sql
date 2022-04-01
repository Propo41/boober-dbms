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

    incorrectInputException EXCEPTION;
   
BEGIN
    choice := &X;

    if choice != 1 and choice != 2 then
        raise incorrectInputException;
    end if;

    if choice = 1 then
        select did, pid, fare into did, pid, estFare from TempRideInfo where id = 1;
        driver_utils.acceptRide(did, pid, estFare);
    else
        driver_utils.declineRide;
    end if;

EXCEPTION
	WHEN incorrectInputException THEN
		DBMS_OUTPUT.PUT_LINE('Incorrect input provided!!');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Other erros found...');
END;
/

