declare
x number(10);
y number(10);
z number(10);
p1 number(10);
p2 number(10);
Wastage_Id_to_be_deleted number(10);

		begin
					Wastage_Id_to_be_deleted:=&Wastage_Id_to_be_deleted;
					delete from wastage where Wastage_id=Wastage_Id_to_be_deleted;

		end;
/
