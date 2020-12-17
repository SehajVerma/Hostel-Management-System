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

--displayInv
invid Inventory.inv_id%type;
wastageid Inventory.Wastage_id%type;
Veg_name Inventory.Veg_name%type;
Veg_quantity Inventory.Veg_quantity%type;
Milk Inventory.Milk%type;
CURSOR c_inv is
      SELECT inv_id, Wastage_id, Veg_name,Veg_quantity,Milk FROM Inventory;
--displayInvEnd

--displayOp
opid OverProduction.op_id%type;
wastageid OverProduction.Wastage_id%type;
typeo OverProduction.Type%type;
Quantity OverProduction.Quantity%type;
Rice OverProduction.Rice%type;
Veg_name2 Inventory.Veg_name%type;
Veg_quantity2 Inventory.Veg_quantity%type;
Milk2 Inventory.Milk%type;
CURSOR c_op is
      SELECT op_id, Wastage_id,Type, Quantity,Rice,Veg_name,Veg_quantity,Milk FROM OverProduction;
/*create trigger caretaker_warden
before insert or update of warden on hostel
for each row
begin
  if NEW.warden=NEW.caretaker then
    dbms_output.put_line('A person cannot be caretaker and warden at same time');
    --RAISE_APPLICATION_ERROR(-20004,"A person cannot be caretaker and warden at same time ");
    end if;
end;*/


--displayOpEnd
create or replace function deleteHostel()
	begin
		dbms_output.put_line(" Enter the Hostel ID to be deleted");
		p1:=&p1;
		delete from Hostel where hostel_id=p1;

	end;
create or replace function deleteInv()
		begin
			dbms_output.put_line(' Enter the Inventory ID to be deleted');
			p2:=&p2;
			delete from Inventory where inv_id=p2;

		end;
create or replace function deleteOp()
		begin
					dbms_output.put_line(" Enter the OverProduction ID to be deleted");
					p3:=&p3;
					delete from Inventory where op_id=p3;

		end;
create or replace function deletei(z in number) return number is
	begin
		while 1 LOOP
			if(z=1)
				deleteHostel();
			if(z=2)
				deleteInv();
			if(z=3)
				deleteOp();
			if(z=4)
				return(0);
      end LOOP;
	end;
create or replace procedure displayOp()
	begin
		OPEN c_op;
	 LOOP
	 FETCH c_op into opid, wastageid, typeo,Quantity;
			EXIT WHEN c_op%notfound;
			dbms_output.put_line(opid || '   ' || wastageid || '   ' || typeo || '   ' || Quantity|| '   ' || Rice|| '   ' || Veg_name2|| '   ' || Veg_quantity2|| '   ' || Milk2);
	 END LOOP;
	 CLOSE c_op;

	end;
create or replace function display(y in number) return number is
	begin
		while 1 loop
			dbms_output.put_line(' 1. Display Hostel Table');
			dbms_output.put_line(' 2. Display Inventory Table');
			dbms_output.put_line(' 3. Display Over-Production Table');
			dbms_output.put_line(' 4. Return to previous menu');
			if(y=1)
				displayHostel();
      end if;
			if(y=2)
				displayInv();
        end if;
      if(y=3)
				displayOp();
        end if;
      if(y=4)
				return(0);
      end if;
    end loop;
	end;
create or replace function	displayInv()
	begin
			OPEN c_inv;
		 LOOP
		 FETCH c_inv into invid, wastageid, Veg_name,Veg_quantity,Milk;
				EXIT WHEN c_inv%notfound;
				dbms_output.put_line(wastageid || '   ' || wastageid || '   ' || Veg_name || '   ' || Veg_quantity|| '   ' || Milk);
		 END LOOP;
		 CLOSE c_inv;
	end;
create or replace function displayHostel()
	begin
		OPEN h_hostel;
	 LOOP
	 FETCH h_hostel into hostelid, name, warden,caretaker;
			EXIT WHEN h_hostel%notfound;
			dbms_output.put_line(hostelid || '   ' || name || '   ' || warden || '   ' || caretaker);
	 END LOOP;
	 CLOSE h_hostel;

	end;

begin
	while 1 loop
		dbms_output.put_line(" 1. Insert");
		dbms_output.put_line(" 2. Delete");
		dbms_output.put_line(" 3. Display");
		x:=&x;
		if x=1 then
			insert();

		else if x=2 then
      y:=&y;
      if y=2 then
      dbms_output.put_line(" 1. Delete From Hostel Table");
      end if;
			dbms_output.put_line(" 2. Delete From Inventory Table");
			dbms_output.put_line(" 3. Delete From Over-Production Table");
			dbms_output.put_line(" 4. Return to previous menu");
      z=&z;
      deletei(z);
		else if(x=3)
			display();
    endif;
	end loop;
EXCEPTION
when x<1 AND x>3 THEN
  RAISE_APPLICATION_ERROR(-20005,"INVALID ENTRY");
end;
/
