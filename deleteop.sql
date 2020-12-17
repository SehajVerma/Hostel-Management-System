declare
x number(10);
y number(10);
z number(10);
p1 number(10);
p2 number(10);
Over_Prod_Id_to_be_deleted number(10);

		begin
					Over_Prod_Id_to_be_deleted:=&Over_Prod_Id_to_be_deleted;
					delete from OverProduction where op_id=Over_Prod_Id_to_be_deleted;

		end;
/
