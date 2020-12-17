create table Hostel(hostel_id number(10),Name varchar(20),Warden varchar(20),Caretaker varchar(20),primary key(hostel_id));

create table Breakfast(b_id number(10), inv_id number(10), op_id number(10), Time_id number(10),primary key(b_id), foreign key(inv_id) references Inventory, foreign key(op_id) references OverProduction, foreign key(Time_id) references Time);

create table Lunch(l_id number(10), inv_id number(10), op_id number(10), Time_id number(10),primary key(l_id), foreign key(inv_id) references Inventory, foreign key(op_id) references OverProduction, foreign key(Time_id) references Time);

create table Dinner(d_id number(10), inv_id number(10), op_id number(10), Time_id number(10),primary key(d_id), foreign key(inv_id) references Inventory, foreign key(op_id) references OverProduction, foreign key(Time_id) references Time);

create table Wastage(Wastage_id number(10), hostel_id number(10), Time_id number(10),primary key(Wastage_id), foreign key(hostel_id) references Hostel, foreign key(Time_id) references Time);

create table Time(Time_id number(10), SYSDATE, primary key(Time_id));

create table Inventory(inv_id number(10), Wastage_id number(10), Veg_name varchar(10),Veg_quantity number(10), milk number(10), primary key(inv_id), foreign key(Wastage_id) references Wastage);

create table OverProduction(op_id number(10), Wastage_id number(10),Type varchar(10), Quantity number(10), Rice number(10), Veg_name varchar(10),Veg_quantity number(10), milk number(10), primary key(op_id), foreign key(Wastage_id) references Wastage);
--RAISE_APPLICATION_ERROR(-20004,"A person cannot be caretaker and warden at same time ");
