SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER trig_rideCompleted 
AFTER UPDATE 
ON Driver
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Ride completed! Don''t forget to give 5 stars!!');
END;
/


CREATE OR REPLACE TRIGGER trig_rideStarted 
AFTER INSERT 
ON Ride
DECLARE
	totalCount int := dbms_random.value(1, 20);


BEGIN
	DBMS_OUTPUT.PUT_LINE('Ride has started... Have a safe journey!');
        
    while totalCount > 0 LOOP
        DBMS_OUTPUT.PUT_LINE('ETA: ' || totalCount || ' minutes');      
        totalCount := totalCount-1;         
    END Loop;

	DBMS_OUTPUT.PUT_LINE('Ride completed! Don''t forget to give 5 stars!!');

END;
/
