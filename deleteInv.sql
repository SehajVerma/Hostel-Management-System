declare
x number(10);
y number(10);
z number(10);
p1 number(10);
Inventory_id_to_be_deleted number(10);
p3 number(10);

		begin
			Inventory_id_to_be_deleted:=&Inventory_id_to_be_deleted;
			delete from Inventory where inv_id=Inventory_id_to_be_deleted;

		end;
		/
