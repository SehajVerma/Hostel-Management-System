insert into hostel values(101,'A','Mr. Kumar','Mr. Sharma');
insert into hostel values(102,'B','Mr. Singh','Mr. Verma');
insert into hostel values(103,'C','Mr. Malhotra','Mr. Khetarpal');
insert into hostel values(104,'D','Mr. Tomar','Mr. Shrivastava');
insert into hostel values(105,'E','Mrs. Ahuja','Mr. Bansal');
insert into hostel values(106,'F','Mr. Verma','Mrs. Gupta');

insert into hostel values(104,'D','Mr. Tomar','Mr. Tomar');

insert into Time values(1,SYSDATE-1);
insert into Time values(2,SYSDATE) ;
insert into Time values(3,SYSDATE +1);
insert into Time values(4,SYSDATE +2);
insert into Time values(5,SYSDATE +3);
insert into Time values(6,SYSDATE +4);

insert into wastage values(201,101,1);
insert into wastage values(202,102,2);
insert into wastage values(203,103,3);
insert into wastage values(204,104,4);
insert into wastage values(205,105,5);
insert into wastage values(206,106,6);


insert into inventory values(301,201,'Ghea',2,1);
insert into inventory values(302,202,'Bhindi',5,2);
insert into inventory values(303,203,'Ram Tori',8,1);
insert into inventory values(304,204,'Potato',3,1);
insert into inventory values(305,205,'Onion',1,0.5);
insert into inventory values(306,206,'Tomato',4,1);


insert into OverProduction values(401,201,'Wheat',40,1,'Ghea',1,1);
insert into OverProduction values(402,202,'Corn',42,1,'Bhindi',2,3);
insert into OverProduction values(403,203,'Tandoori',30,1,'Ram Tori',6,2);
insert into OverProduction values(404,204,'Missi',20,1,'Chilly',5,4.5);
insert into OverProduction values(405,205,'Rumali',25,1,'Capsicum',4,2);
insert into OverProduction values(406,206,'Wheat',32,1,'Chicken',3,4);
