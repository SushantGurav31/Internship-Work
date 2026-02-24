create database client_portal;

use client_portal;

-- Clients Table 
create table Clients (
client_id int primary key,
full_name varchar (50) not null,
email varchar (50),
phone varchar (15),
company_name varchar(50),
created_at timestamp
);


-- Projects Table 
create table Projects (
project_id int primary key,
client_id int,
project_name varchar(150) not null ,
description text,
start_date date not null,
end_date date not null,
status varchar (50) default 'In Progress',
foreign key (client_id) references Clients(client_id)
);


-- DataLogs Table 
create table DataLogs (
log_id int primary key,
project_id int,
log_message text ,
log_date timestamp ,
foreign key (project_id) references Projects (project_id)
);


insert into Clients (client_id, full_name, email, phone, company_name, created_at) values
(1, 'Rajesh Sharma', 'rajesh@techcorp.com', '9876543210', 'TechCorp', now()),
(2,  'Priya Mehta', 'priya@designhub.com', '9123456780', 'DesignHub', NOW()),
(3, 'Amit Verma', 'amit@finserve.com', '9988776655', 'FinServe', NOW()),
(4,  'Sneha Patil', 'sneha@marketpro.com', '9765432109', 'MarketPro', NOW()),
(5, 'Karan Malhotra', 'karan@buildit.com', '9012345678', 'BuildIt', NOW()),
(6, 'Neha Kapoor', 'neha@creativex.com', '9898989898', 'CreativeX', NOW()),
(7, 'Vikram Singh', 'vikram@logisticsplus.com', '9871234567', 'LogisticsPlus', NOW()),
(8, 'Anjali Desai', 'anjali@healthfirst.com', '9345678123', 'HealthFirst', NOW()),
(9, 'Rohan Gupta', 'rohan@eduprime.com', '9234567890', 'EduPrime', NOW()),
(10, 'Meera Iyer', 'meera@consultcorp.com', '9123987654', 'ConsultCorp', NOW());

select * from Clients;


insert into Projects (project_id, client_id, project_name, description, start_date, end_date, status) values 
(1, 1, 'Website Development', 'Corporate website build', '2026-01-01', '2026-03-01','In Progress'),
(2, 2, 'Brand Redesign', 'Logo and branding update', '2026-01-10', '2026-02-20', 'Completed'),
(3, 3, 'CRM System', 'Custom CRM software', '2026-02-01', '2026-05-01', 'In Progress'),
(4, 4, 'Marketing Campaign', 'Digital marketing campaign', '2026-01-15', '2026-04-01', 'Planning'),
(5, 5, 'E-Commerce Platform', 'Online shopping website', '2026-02-10', '2026-06-10', 'In Progress'),
(6, 6, 'Mobile App', 'Android & iOS app', '2026-03-01', '2026-07-01', 'Planning'),
(7, 7, 'Inventory System', 'Warehouse management system', '2026-01-20', '2026-05-20', 'In Progress'),
(8, 8, 'Hospital Portal', 'Patient management system', '2026-02-15', '2026-06-15', 'In Progress'),
(9, 9, 'Learning Platform', 'Online course system', '2026-01-25', '2026-05-30', 'Completed'),
(10, 10, 'Consulting Dashboard', 'Analytics dashboard', '2026-02-05', '2026-06-05', 'In Progress');

select * from Projects ;

insert into DataLogs (log_id, project_id, log_message, log_date) values 
(1, 1, 'Project initiated and requirements gathered', NOW()),
(2, 2, 'Logo draft approved by client', NOW()),
(3, 3, 'Database schema designed', NOW()),
(4, 4, 'Campaign strategy meeting completed', NOW()),
(5, 5, 'Frontend development started', NOW()),
(6, 6, 'UI wireframes shared with client', NOW()),
(7, 7, 'Inventory module testing phase started', NOW()),
(8, 8, 'Portal backend API development ongoing', NOW()),
(9, 9, 'Final testing completed successfully', NOW()),
(10, 10, 'Dashboard UI integrated with backend', NOW());

select * from DataLogs;

