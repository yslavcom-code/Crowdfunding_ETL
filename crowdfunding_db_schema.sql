#create tables
CREATE TABLE Contact (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE Subcategory (
    subcategory_id INT PRIMARY KEY,
    subcategory_name VARCHAR(100)
);

CREATE TABLE Campaign (
    contact_id INT PRIMARY KEY,
    cf_id INT,
    company_name VARCHAR(100),
    description VARCHAR(100),
    goal VARCHAR(50),
    pledged VARCHAR(50),
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(10),
    launched_date DATE,
    end_date DATE,
    category_id INT,
    sub_category_id INT,
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (sub_category_id) REFERENCES Subcategory(subcategory_id)
);


#select * statement
SELECT * FROM Contact;
SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Campaign;
