declare
x number(10);
y number(10);
z number(10);
p1 number(10);
p2 number(10);
p3 number(10);

--displayInv
invid Inventory.inv_id%type;
wastageid Inventory.Wastage_id%type;
Veg_name Inventory.Veg_name%type;
Veg_quantity Inventory.Veg_quantity%type;
Milk Inventory.Milk%type;
CURSOR c_inv is
      SELECT inv_id, Wastage_id, Veg_name,Veg_quantity,Milk FROM Inventory;
--displayInvEnd

	begin
			OPEN c_inv;
		 LOOP
		 FETCH c_inv into invid, wastageid, Veg_name,Veg_quantity,Milk;
				EXIT WHEN c_inv%notfound;
				dbms_output.put_line(invid || '   ' || wastageid || '   ' || Veg_name || '   ' || Veg_quantity|| '   ' || Milk);
		 END LOOP;
		 CLOSE c_inv;
	end;
    /
