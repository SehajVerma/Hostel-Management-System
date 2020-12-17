declare
x number(10);
y number(10);
z number(10);
p1 number(10);
p2 number(10);
p3 number(10);

--displayHostel
hostelid hostel.hostel_id%type;
name hostel.name%type;
warden hostel.warden%type;
caretaker hostel.caretaker%type;
CURSOR h_hostel is
      SELECT hostel_id, name, warden,caretaker FROM hostel;
--displayHostelEnd

	begin
		OPEN h_hostel;
	 LOOP
	 FETCH h_hostel into hostelid, name, warden,caretaker;
			EXIT WHEN h_hostel%notfound;
			dbms_output.put_line(hostelid || '   ' || name || '   ' || warden || '   ' || caretaker);
	 END LOOP;
	 CLOSE h_hostel;

	end;

/