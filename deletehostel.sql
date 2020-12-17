declare
x number(10);
y number(10);
z number(10);
hostel_id_to_be_deleted number(10);
p2 number(10);
p3 number(10);


	begin
		hostel_id_to_be_deleted:=&hostel_id_to_be_deleted;
		delete from Hostel where hostel_id=hostel_id_to_be_deleted;

	end;
/
