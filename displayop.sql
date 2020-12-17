declare
x number(10);
y number(10);
z number(10);
p1 number(10);
p2 number(10);
p3 number(10);

--displayOp
opid OverProduction.op_id%type;
wastageid OverProduction.Wastage_id%type;
typeo OverProduction.rtype%type;
Quantity OverProduction.Quantity%type;
Rice OverProduction.Rice%type;
Veg_name2 Inventory.Veg_name%type;
Veg_quantity2 Inventory.Veg_quantity%type;
Milk2 Inventory.Milk%type;
CURSOR c_op is
      SELECT op_id, Wastage_id,rtype, Quantity,Rice,Veg_name,Veg_quantity,Milk FROM OverProduction;


--displayOpEnd
	begin
		OPEN c_op;
	 LOOP
	 FETCH c_op into opid, wastageid, typeo,Quantity,Rice,Veg_name2,Veg_quantity2,Milk2;
			EXIT WHEN c_op%notfound;
			dbms_output.put_line(opid || '   ' || wastageid || '   ' || typeo || '   ' || Quantity|| '   ' || Rice|| '   ' || Veg_name2|| '   ' || Veg_quantity2|| '   ' || Milk2);
	 END LOOP;
	 CLOSE c_op;

	end;
  /
