create or replace trigger caretaker_warden
before insert or update of Warden,Caretaker on Hostel
for each row
begin
if NEW.Warden=NEW.Caretaker then
  dbms_output.put_line('A person cannot be caretaker and warden at same time');

end if;
end;


RAISE_APPLICATION_ERROR(-20004, 'FOREIGN KEY VIOLATED BECAUSE VALUE IS NOT FOUND IN THE PARENT TABLE');


CREATE OR REPLACE TRIGGER FOREIGN_KEY
BEFORE INSERT OR UPDATE OF hostel_id ON WASTAGE
FOR EACH ROW
DECLARE
DNO Hostel.hostel_id%TYPE;
BEGIN
SELECT hostel_id INTO DNO FROM Hostel WHERE hostel_id:=NEW.hostel_id;
EXCEPTION
WHEN NO_DATA_FOUND THEN
dbms_output.put_line('A person cannot be caretaker and warden at same time');
END;
/
