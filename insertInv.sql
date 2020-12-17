DECLARE
	inv_id Inventory.inv_id%type;
	Wastage_id Inventory.Wastage_id%type;
	Veg_name Inventory.Veg_name%type;
	Veg_quantity Inventory.inv_id%type;
	MilK Inventory.Milk%type;
BEGIN
	INSERT into Inventory values(&inv_id, &Wastage_id, '&Veg_name', &Veg_quantity, &Milk);
END;
/
