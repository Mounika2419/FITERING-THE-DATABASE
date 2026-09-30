show databes;
show databases;
use aids;
 create table course(sid int,sname varchar(20),gpa decimal(3,2),city varchar(20));
  desc college;
  insert into college values(101,"ramu",9.2,"ong");
   insert into college values(102,"raju",9.2,"guntur");
   insert into college values(103,"ravi",8.4,"vijayawada");
    insert into college values(104,"meera",7.7,"kanigiri");
     insert into college values(106,"anil",8.7,"ongole");
insert into college values(107,"rithu",7.5,"vijayawada");
 insert into college values(108,"harsha",7.8,"guntur");
 select *from college;
 select *from college where city="ongole" and gpa>8;
 select *from college where city="ongole" or gpa>8;
  select *from college where not city="ongole";
   select *from college where gpa between 7.5 and 9;
 