create database expenses;

use expenses;

-- Vendor table
CREATE TABLE Vendor (
    VendorID INT PRIMARY KEY AUTO_INCREMENT,
    VendorName VARCHAR(50) NOT NULL
);

-- Category table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL
);

-- Expense table
CREATE TABLE Expense (
    ExpenseID INT PRIMARY KEY AUTO_INCREMENT,
    VendorID INT,
    CategoryID INT,
    Date DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(20) NOT NULL CHECK (PaymentMethod IN ('Cash', 'Debit Card', 'Net Banking')),
    Description VARCHAR(255),
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);
-- Value Insertion

INSERT INTO Category (CategoryName) VALUES ('Food');
INSERT INTO Category (CategoryName) VALUES ('Transportation');
INSERT INTO Category (CategoryName) VALUES ('Entertainment');
INSERT INTO Category (CategoryName) VALUES ('Recharge');
INSERT INTO Category (CategoryName) VALUES ('Miscellaneous');

INSERT INTO Vendor (VendorName) VALUES ('Supermarket');
INSERT INTO Vendor (VendorName) VALUES ('Tiffin Store');
INSERT INTO Vendor (VendorName) VALUES ('Bus Fare');
INSERT INTO Vendor (VendorName) VALUES ('Auto Fare');
INSERT INTO Vendor (VendorName) VALUES ('Cinema');
INSERT INTO Vendor (VendorName) VALUES ('Mobile Recharge');


INSERT INTO Expense (VendorID, CategoryID, Date, Amount, PaymentMethod, Description) 
VALUES 
(1, 1, '2024-01-01', 50.00, 'Debit Card', 'Groceries'),
(1, 1, '2024-01-08', 70.00, 'Debit Card', 'Groceries'),
(1, 1, '2024-01-15', 70.00, 'Debit Card', 'Groceries'),
(1, 1, '2024-01-22', 70.00, 'Debit Card', 'Groceries'),
(1, 1, '2024-01-29', 70.00, 'Debit Card', 'Groceries');

INSERT INTO Expense (VendorID, CategoryID, Date, Amount, PaymentMethod, Description) 
VALUES 
(2, 2, '2024-01-02', 30.00, 'Cash', 'Breakfast'),
(2, 2, '2024-01-09', 30.00, 'Cash', 'Breakfast'),
(2, 2, '2024-01-16', 30.00, 'Cash', 'Breakfast'),
(2, 2, '2024-01-23', 30.00, 'Cash', 'Breakfast'),
(2, 2, '2024-01-30', 30.00, 'Cash', 'Breakfast');

INSERT INTO Expense (VendorID, CategoryID, Date, Amount, PaymentMethod, Description) 
VALUES 
(3, 3, '2024-01-03', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-04', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-08', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-09', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-10', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-11', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-12', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-15', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-16', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-17', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-18', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-19', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-22', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-23', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-24', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-25', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-26', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-29', 24.00, 'Cash', 'Bus fare'),
(3, 3, '2024-01-30', 24.00, 'Cash', 'Bus fare');

INSERT INTO Expense (VendorID, CategoryID, Date, Amount, PaymentMethod, Description) 
VALUES 
(4, 3, '2024-01-03', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-04', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-08', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-09', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-10', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-11', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-12', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-15', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-16', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-17', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-18', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-19', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-22', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-23', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-24', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-25', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-26', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-29', 10.00, 'Cash', 'Auto fare'),
(4, 3, '2024-01-30', 10.00, 'Cash', 'Auto fare');

INSERT INTO Expense (VendorID, CategoryID, Date, Amount, PaymentMethod, Description) 
VALUES 
(5, 4, '2024-01-05', 150.00, 'Debit Card', 'Movie ticket');

INSERT INTO Expense (VendorID, CategoryID, Date, Amount, PaymentMethod, Description) 
VALUES 
(6, 5, '2024-01-06', 500.00, 'Net Banking', 'Mobile recharge');

INSERT INTO Expense (VendorID, CategoryID, Date, Amount, PaymentMethod, Description) 
VALUES 
(1, 1, '2024-01-02', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-03', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-04', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-08', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-09', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-10', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-11', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-12', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-15', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-16', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-17', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-18', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-19', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-22', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-23', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-24', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-25', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-26', 20.00, 'Cash', 'Miscellaneous'),
(1, 1, '2024-01-29', 20.00, 'Cash', 'Miscellaneous'),
(2, 1, '2024-01-30', 20.00, 'Cash', 'Miscellaneous');







SELECT * from Vendor;
SELECT * from category;
SELECT * from expense;

-- truncate table expense
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Solving the Case study based on Daily expenses:

-- Total Expenses for the Month of January
select sum(amount) as TotalExpenses 
from expense 
where month(Date)=1;



-- Total Expenses by Category
select categoryid,sum(amount) as TotalExpense
from expense
group by categoryid;

-- Total Expenses by Vendor
select vendorid,sum(amount) as TotalExpense
from expense
group by vendorid;

-- Average Daily Expenses
select date,avg(amount) as AverageExpenses
from expense
group by date;

-- Expenses on Specific Dates
-- (Retrieve all expenses on the dates '2024-01-01' and '2024-01-10')

select date,sum(amount) as DailyExpenses
from expense
where date between '2024-01-01' and '2024-01-10'
group by date;


-- Total Transportation Expenses
select sum(e.amount) as TransportationCost
from expense e
join category c
on e.categoryid=c.categoryid
where c.categoryName="Transportation"
group by e.categoryid;


-- Expenses by Payment Method
select PaymentMethod,sum(amount) as PayExpenses
from expense
group by PaymentMethod;


-- Highest Expense Day
select date
from expense
where amount =(
select max(amount) HighestExpense
from expense);
/*
SELECT * from Vendor;
SELECT * from category;
SELECT * from expense;
*/
-- Most Frequent Vendor
with cte as (select v.vendorid,count(e.vendorid) as countvendor from expense e
join vendor v
on e.vendorid=v.vendorid
group by v.vendorid)
select vendorid from cte
where countvendor=( select max(countvendor) from cte);


-- Expenses Grouped by Week
select week(date) as weeks,sum(amount) as WeeklyExpenses
from expense
group by week(date);

-- Top 3 transactions
select description,sum(amount) as amount from expense
group by description
order by amount desc
limit 3;




