create table employee (
	employee_id serial primary key,
	employee_name varchar(250) not null,
	employee_depart int not null,
	employer_id int unique references employee(employee_id)
);