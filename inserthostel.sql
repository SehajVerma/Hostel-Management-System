Declare
	hostel_id Hostel.hostel_id%type;
	Name Hostel.Name%type;
	Warden Hostel.Warden%type;
	Caretaker Hostel.Caretaker%type;
Begin
	Insert into Hostel values(&hostel_id,'&Name','&Warden','&Caretaker');
END;
/
