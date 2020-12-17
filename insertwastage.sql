DECLARE
	Wastage_id Wastage.Wastage_id%type;
	hostel_id Wastage.hostel_id%type;
	Time_id Wastage.Time_id%type;
BEGIN
	INSERT into Wastage values(&Wastage_id,&hostel_id,&Time_id);
END;
/
