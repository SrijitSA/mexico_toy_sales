if OBJECT_ID('mextoys..products', 'U') is not null
	drop table mextoys..products;

create table mextoys..products (
Product_ID int primary key identity(1,1),
Product_Name varchar(30) not null,
Product_Category varchar(30) not null,
Product_Cost money not null,
Product_Price money not null
);

insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Action Figure', 'Toys', $9.99, $15.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Animal Figures', 'Toys', $9.99, $12.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Barrel Of Slime', 'Art & Crafts', $1.99, $3.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Chutes & Ladders', 'Games', $9.99, $12.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Classic Dominoes', 'Games', $7.99, $9.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Colorbuds', 'Electronics', $6.99, $14.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Dart Gun', 'Sports & Outdoors', $11.99, $15.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Deck Of Cards', 'Games', $3.99, $6.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Dino Egg', 'Toys', $9.99, $10.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Dinosaur Figures', 'Toys', $10.99, $14.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Etch A Sketch', 'Art & Crafts', $10.99, $20.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Foam Disk Launcher', 'Sports & Outdoors', $8.99, $11.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Gamer Headphones', 'Electronics', $14.99, $20.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Glass Marbles', 'Games', $5.99, $10.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Hot Wheels 5-Pack', 'Toys', $3.99, $5.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Jenga', 'Games', $2.99, $9.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Kids Makeup Kit', 'Art & Crafts', $13.99, $19.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Lego Bricks', 'Toys', $34.99, $39.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Magic Sand', 'Art & Crafts', $13.99, $15.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Mini Basketball Hoop', 'Sports & Outdoors', $8.99, $24.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Mini Ping Pong Set', 'Sports & Outdoors', $6.99, $9.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Monopoly', 'Games', $13.99, $19.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Mr. Potatohead', 'Toys', $4.99, $9.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Nerf Gun', 'Sports & Outdoors', $14.99, $19.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('PlayDoh Can', 'Art & Crafts', $1.99, $2.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('PlayDoh Playset', 'Art & Crafts', $20.99, $24.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('PlayDoh Toolkit', 'Art & Crafts', $3.99, $4.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Playfoam', 'Art & Crafts', $3.99, $10.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Plush Pony', 'Toys', $8.99, $19.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Rubiks Cube', 'Games', $17.99, $19.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Splash Balls', 'Sports & Outdoors', $7.99, $8.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Supersoaker Water Gun', 'Sports & Outdoors', $11.99, $14.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Teddy Bear', 'Toys', $10.99, $12.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Toy Robot', 'Electronics', $20.99, $25.99);
insert into mextoys..products(Product_Name, Product_Category, Product_Cost, Product_Price)output inserted.Product_ID
	values('Uno Card Game', 'Games', $3.99, $7.99);

select * from mextoys..products;