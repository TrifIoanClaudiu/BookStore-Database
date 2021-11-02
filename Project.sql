Create database TheMagicOfWordsStore_Books;

use TheMagicOfWordsStore_Books;

create table writers(
	writer_id varchar(20) not null primary key,
	writer_name varchar(20) not null,
	writer_email varchar(30) not null,
	writer_commision money not null
)

insert into Writers(writer_id, writer_name, writer_email, writer_commision) 
values ('a371', 'Stephen King', 'Stephen@magicbooks.com', 0.3);
insert into Writers values ('b214', 'George R.R. Martin', 'George@magicbooks.com', 0.1);
insert into Writers values ('a316', 'John Steinbeck', 'JohnSb@magicbooks.com',0.25);
insert into Writers values ('a416', 'Alan Moore', 'Alan@magicbooks.com', 0.35);
insert into Writers values ('c31s', 'J.K. Rowling', 'JKRowling@magicbooks.com', 0.1);
insert into Writers values ('a3d4', 'Niklas Natt och Dag', 'Niklas@magicbooks.com', 0.2);
insert into Writers values ('b31a', 'Augusta Christie', 'Augusta@magicbooks.com', 0.3);
insert into Writers values ('3ds2', 'F. Scott Fitzgerald', 'ScottFitzgerald@magicbooks.com', 0.15);
insert into Writers values ('a484', 'William Sheakspeare', 'Sheakspeare@magicbooks.com', 0.35);
insert into Writers values ('bt66', 'Leo Tolstoy', 'LeoTolstoy@magicbooks.com', 0.15);


create table books(
	book_id varchar(20) not null primary key,
	book_name varchar(50) not null,
	book_type varchar(20) not null,
	writer_id varchar(20) not null,
	book_price money not null,
	book_stock varchar(20) not null
)

insert into books(book_id, book_name, book_type, writer_id, book_price, book_stock) values ('B1', 'A game of thrones', 'Fantasy', 'b214', '$15', 50);
insert into books values ('B2', 'A feast for crows', 'Fantasy', 'b214', '$15', 50);
insert into books values ('B3', 'Wild Cards', 'Fantasy', 'b214', '$20', 30);
insert into books values ('B4', 'The winds of winter', 'Fantasy', 'b214', '$40', 400);
insert into books values ('B5', 'The Gunslinger', 'Fantasy', 'a371', '$8', 60);
insert into books values ('B6', 'Carrie', 'Horror', 'a371', '$10', 30);
insert into books values ('B7', 'IT', 'Horror', 'a371', '$30',  100);
insert into books values ('B8', 'The Stand', 'Drama', 'a371', '$35', 70);
insert into books values ('B9', 'Stand by me', 'Drama', 'a371', '$8', 25);
insert into books values ('B10', 'The shawshank redemption', 'Drama', 'a371', '$5', 30);
insert into books values ('B11', 'East of Eden', 'Drama', 'a316', '$15', 60);
insert into books values ('B12', 'The grapes of wrath', 'Drama', 'a316', '$10', 50);
insert into books values ('B13', 'Watchmen', 'Comic Book', 'a416', '$30', 50);
insert into books values ('B14', 'Batman The killing joke', 'Comic Book', 'a416', '$20', 150);
insert into books values ('B15', 'Batman Year One', 'Comic Book', 'a416', '$25', 30);
insert into books values ('B16', 'Harry Potter and The Philosopher Stone', 'Fantasy', 'c31s', '$15', 50);
insert into books values ('B17', 'Harry Potter and prizoner of Azkaban', 'Fantasy', 'c31s', '$15', 150);
insert into books values ('B18', 'Harry Potter and the half blood prince ', 'Fantasy', 'c31s', '$15', 40);
insert into books values ('B19', 'Harry Potter and deadly hallows', 'Fantasy', 'c31s', '$15', 250);
insert into books values ('B20', '1793 In the shadow of death', 'Mystery', 'a3d4', '$7', 15);
insert into books values ('B21', 'And then there were none', 'Mystery', 'b31a', '$9', 30);
insert into books values ('B22', 'Murder on the Orient Express', 'Mystery', 'b31a', '$5', 80);
insert into books values ('B23', 'The Great Gatsby', 'Drama', '3ds2', '$3', 100);
insert into books values ('B24', 'Hamlet', 'Theatre', 'a484', '$15', 50);
insert into books values ('B25', 'Romeo and Juliette', 'Theatre', 'a484', '$15', 75);
insert into books values ('B26', 'McBeth', 'Theatre', 'a484', '$15', 20);
insert into books values ('B27', 'Anna Karenina', 'Drama', 'bt66', '$17', 40);

create table bookstore(
	store_id varchar(20) not null primary key,
	store_name varchar(30) not null,
	store_adress varchar(20) not null
)

insert into bookstore(store_id, store_name, store_adress) values ('S1', 'The magic of words', 'Aurel Vlaicu 35');

create table trucks(
	truck_id varchar(20) not null primary key,
	driver_name varchar(20) not null
)

insert into trucks (truck_id, driver_name) values ('T1', 'Ovidiu');
insert into trucks values ('T2', 'Cristina');


create table workers(
	worker_id varchar(20) not null primary key,
	worker_name varchar(20) not null,
	worker_salary money not null,
	worker_time varchar(20) not null,
	worker_type varchar(30)
)

insert into workers (worker_id, worker_name, worker_salary, worker_time, worker_type) values ('WK1', 'Mihai', '$800.00', 'Mon-Fr', 'Cleaner');
insert into workers values ('WK2', 'Ana', '$900.00', 'Mon-Sat', 'Seller');
insert into workers values ('WK3', 'Matei', '$940.00', 'Mon-Sun', 'Programmer');
insert into workers values ('WK4', 'Ramona', '$1200.00', 'Mon-Sun', 'Administrator');
insert into workers values ('WK5', 'Cristina', '$1000.00', 'Mon-Sun', 'Driver');
insert into workers values ('WK6', 'Ovidiu', '$1000.00', 'Mon-Fr', 'Driver');
insert into workers values ('WK7', 'George', '$940.00', 'Mon-Sun', 'Programmer');
insert into workers values ('WK8', 'Maria', '$900.00', 'Mon-Sat', 'Seller');
insert into workers values ('WK9', 'Madalina', '$950.00', 'Mon-Fr', 'Human Resources');
insert into workers values ('WK10', 'Antonia', '$800.00', 'Mon-Fr', 'Cleaner');

create table customers(
	customer_id varchar(20) not null primary key,
	customer_name varchar(20) not null,
	customer_address varchar(20) not null,
	customer_phone varchar(10) not null
)
insert into customers (customer_id, customer_name, customer_address, customer_phone) values ('C1', 'Mihaela', 'Lucian Blaga 20', '0776310032');
insert into customers values ('C2', 'Marcel', 'Eroilor 24', '0766451752');
insert into customers values ('C3', 'Ionut', 'Eroilor 15', '0766467418');
insert into customers values ('C4', 'Daniel', 'Muncii 12', '0766218765');
insert into customers values ('C5', 'Sebi', 'Teilor 40', '0764728590');
insert into customers values ('C6', 'Iulia', 'Mihai Eminescu 24', '0744356782');
insert into customers values ('C7', 'Ioana', 'Victoriei 4', '0755221093');
insert into customers values ('C8', 'Ariana', 'George Cosbuc 37', '0766669911');
insert into customers values ('C9', 'Raul', 'Pastorilor 9', '0766442368');
insert into customers values ('C10', 'Victor', 'Axente Sever 49', '0738379472');


create table orders(
	order_id varchar(20) not null primary key,
	customer_id varchar(20) not null,
	truck_id varchar(20) not null,
	book_id varchar(20) not null,
	store_id varchar(20) not null,
	order_quantity varchar(20) not null,
	arrival varchar(10) not null
)
insert into orders(order_id, customer_id, truck_id, book_id, store_id, order_quantity, arrival) values ('O1', 'C1' ,'T1' , 'B3', 'S1' , 2 , 'YES');
insert into orders values ('O2', 'C2' ,'T1' , 'B11', 'S1' , 2, 'YES');
insert into orders values ('O3', 'C3' ,'T2' , 'B3', 'S1' , 1, 'NO');
insert into orders values ('O4', 'C4' ,'T2' , 'B4', 'S1' , 3, 'NO');
insert into orders values ('O5', 'C5' ,'T1' , 'B6', 'S1' , 1, 'YES');
insert into orders values ('O6', 'C6' ,'T1' , 'B12', 'S1' , 1, 'YES');
insert into orders values ('O7', 'C7' ,'T2' , 'B24', 'S1' , 2, 'NO');
insert into orders values ('O8', 'C7' ,'T2' , 'B6', 'S1' , 3, 'NO');
insert into orders values ('O9', 'C7' ,'T1' , 'B13', 'S1' , 1, 'YES');
insert into orders values ('O10', 'C8' ,'T2' , 'B26', 'S1' , 50, 'NO');
insert into orders values ('O11', 'C8' ,'T1' , 'B3', 'S1' , 27, 'YES');
insert into orders values ('O12', 'C9' ,'T1' , 'B25', 'S1' , 13, 'YES');
insert into orders values ('O13', 'C9' ,'T2' , 'B17', 'S1' , 11, 'NO');
insert into orders values ('O14', 'C9' ,'T2' , 'B8', 'S1' , 25, 'NO');
insert into orders values ('O15', 'C10' ,'T1' , 'B1', 'S1' , 5, 'YES');
insert into orders values ('O16', 'C10' ,'T2' , 'B2', 'S1' , 35, 'NO');
insert into orders values ('O17', 'C2' ,'T1' , 'B8', 'S1' , 2, 'YES');
insert into orders values ('O18', 'C3' ,'T2' , 'B18', 'S1' , 1, 'NO');
insert into orders values ('019', 'C4' ,'T2' , 'B21', 'S1' , 3, 'NO');
insert into orders values ('O20', 'C5' ,'T1' , 'B27', 'S1' , 1, 'YES');
insert into orders values ('O21', 'C6' ,'T1' , 'B4', 'S1' , 1, 'YES');
insert into orders values ('O22', 'C7' ,'T2' , 'B14', 'S1' , 2, 'NO');
insert into orders values ('O23', 'C7' ,'T2' , 'B15', 'S1' , 3, 'NO');
insert into orders values ('O24', 'C7' ,'T1' , 'B5', 'S1' , 1, 'YES');
insert into orders values ('O25', 'C8' ,'T2' , 'B12', 'S1' , 50, 'NO');
insert into orders values ('O26', 'C8' ,'T1' , 'B9', 'S1' , 35, 'YES');
insert into orders values ('O27', 'C9' ,'T1' , 'B10', 'S1' , 50, 'YES');
insert into orders values ('O28', 'C9' ,'T2' , 'B18', 'S1' , 40, 'NO');
insert into orders values ('O29', 'C9' ,'T2' , 'B19', 'S1' , 35, 'NO');
insert into orders values ('O30', 'C10' ,'T1' , 'B22', 'S1' , 35, 'YES');
insert into orders values ('O31', 'C10' ,'T2' , 'B7', 'S1' , 35, 'NO');
insert into orders values ('O32', 'C7' ,'T2' , 'B15', 'S1' , 3, 'NO');
insert into orders values ('O33', 'C7' ,'T1' , 'B5', 'S1' , 1, 'YES');
insert into orders values ('O34', 'C8' ,'T2' , 'B12', 'S1' , 5, 'NO');
insert into orders values ('O35', 'C8' ,'T1' , 'B9', 'S1' , 10, 'YES');
insert into orders values ('O36', 'C9' ,'T1' , 'B6', 'S1' , 20, 'YES');
insert into orders values ('O37', 'C9' ,'T2' , 'B20', 'S1' , 10, 'NO');
insert into orders values ('O38', 'C9' ,'T2' , 'B19', 'S1' , 15, 'NO');
insert into orders values ('O39', 'C10' ,'T1' , 'B1', 'S1' , 3, 'YES');
insert into orders values ('O40', 'C10' ,'T2' , 'B17', 'S1' , 5, 'NO');

create table wish_list(
	wish_list_id varchar(20) not null primary key,
	wish_book_name varchar(50) not null,
	wish_book_type varchar(20) not null,
	customer_id varchar(20) not null
)

insert into wish_list(wish_list_id, wish_book_name, wish_book_type, customer_id) values ('L1', 'Sword Arts', 'Science Fiction', 'C1');
insert into wish_list values ('L2', 'Wolf Hall', 'Historical', 'C1');
insert into wish_list values ('L3', 'Sword Arts', 'Science Fiction', 'C3');
insert into wish_list values ('L4', 'Monsters', 'Historical', 'C4');
insert into wish_list values ('L5', 'Ben Hur', 'Drama', 'C5');
insert into wish_list values ('L6', 'The Godfather', 'Drama', 'C6');



	
