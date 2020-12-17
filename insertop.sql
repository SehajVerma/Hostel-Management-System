DECLARE
	op_id OverProduction.op_id%type;
	Wastage_id OverProduction.Wastage_id%type;
	rType OverProduction.rtype%type;
	Quantity OverProduction.Quantity%type;
	Rice OverProduction.Rice%type;
	Veg_name OverProduction.Veg_name%type;
	Veg_quantity OverProduction.Veg_quantity%type;
	Milk OverProduction.Milk%type;
BEGIN
	Insert into OverProduction values(&op_id, &Wastage_id, '&rType', &Quantity, &Rice, '&Veg_name', &Veg_quantity, &Milk);
END;
/
