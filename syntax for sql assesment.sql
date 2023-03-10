-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.customer_table
(
    customer_id character varying(15) COLLATE pg_catalog."default" NOT NULL,
    first_name text COLLATE pg_catalog."default" NOT NULL,
    last_name text COLLATE pg_catalog."default" NOT NULL,
    phone_no integer NOT NULL,
    email_address character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT customer_tbl_pkey PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS public.driver_table
(
    driver_id character varying(15) COLLATE pg_catalog."default" NOT NULL,
    driver_name text COLLATE pg_catalog."default" NOT NULL,
    driver_salary double precision NOT NULL,
    driver_nin character varying(15) COLLATE pg_catalog."default" NOT NULL,
    driver_email_address character varying(70) COLLATE pg_catalog."default" NOT NULL,
    driver_phone_no integer NOT NULL,
    license_no character varying(20) COLLATE pg_catalog."default" NOT NULL,
    issue_date date NOT NULL,
    expiry_date date NOT NULL,
    country_issue text COLLATE pg_catalog."default" NOT NULL,
    motorbike_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    manager_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    restaurant_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT driver_tbl_pkey PRIMARY KEY (driver_id)
);

CREATE TABLE IF NOT EXISTS public.item_table
(
    item_id character varying(15) COLLATE pg_catalog."default" NOT NULL,
    item_name text COLLATE pg_catalog."default" NOT NULL,
    item_category text COLLATE pg_catalog."default" NOT NULL,
    item_price double precision NOT NULL,
    restaurant_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT item_tbl_pkey PRIMARY KEY (item_id)
);

CREATE TABLE IF NOT EXISTS public.manager_table
(
    manager_id character varying(15) COLLATE pg_catalog."default" NOT NULL,
    manger_name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT manager_tbl_pkey PRIMARY KEY (manager_id)
);

CREATE TABLE IF NOT EXISTS public.motorbike_table
(
    motorbike_id character varying(15) COLLATE pg_catalog."default" NOT NULL,
    motorbike_reg character varying(10) COLLATE pg_catalog."default" NOT NULL,
    colour text COLLATE pg_catalog."default" NOT NULL,
    motor_type text COLLATE pg_catalog."default" NOT NULL,
    date_purchase date NOT NULL,
    engine_size character varying(10) COLLATE pg_catalog."default" NOT NULL,
    restaurant_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT motorbike_tbl_pkey PRIMARY KEY (motorbike_id)
);

CREATE TABLE IF NOT EXISTS public.order_table
(
    order_id character varying(15) COLLATE pg_catalog."default" NOT NULL,
    order_date date NOT NULL,
    item_ordered text COLLATE pg_catalog."default" NOT NULL,
    customer_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    item_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    restaurant_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    driver_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT order_tbl_pkey PRIMARY KEY (order_id)
);

CREATE TABLE IF NOT EXISTS public.restaurant_table
(
    restaurant_id character varying(15) COLLATE pg_catalog."default" NOT NULL,
    restaurant_name text COLLATE pg_catalog."default" NOT NULL,
    restaurant_branch text COLLATE pg_catalog."default" NOT NULL,
    restaurant_address character varying(70) COLLATE pg_catalog."default" NOT NULL,
    restaurant_post_code character varying(10) COLLATE pg_catalog."default" NOT NULL,
    manager_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT restaurant_tbl_pkey PRIMARY KEY (restaurant_id)
);
END;

SELECT *
FROM customer_tbl

INSERT INTO customer_tbl (CUSTOMER_ID, FIRST_NAME, LAST_NAME, PHONE_NO, EMAIL_ADDRESS) 
VALUES ('JS-1O1', 'John', 'Smith', '01234567890', 'john.smith@gmail.com'), 
('JW-102', 'Jane', 'Williams', '01235678901', 'jane.williams@gmail.com'), 
('DJ103', 'David', 'Jones', '01236789012', 'david.jones@gmail.com'), 
('MT-104', 'Mary', 'Taylor', '01237890123', 'mary.taylor@gmail.com'), 
('PB-105', 'Peter', 'Brown', '01238901234', 'peter.brown@gmail.com'), 
('RD-106', 'Rachel', 'Davis', '01239012345', 'rachel.davis@gmail.com'), 
('KW-107', 'Kevin', 'Wilson', '01240123456', 'kevin.wilson@gmail.com'), 
('SA-108', 'Sarah', 'Moore', '01241234567', 'sarah.moore@gmail.com'), 
('MT-109', 'Michael', 'Taylor', '01242345678', 'michael.taylor@gmail.com'), 
('JA-110', 'Jennifer', 'Anderson', '01243456789', 'jennifer.anderson@gmail.com'), 
('RT-111', 'Richard', 'Thomas', '01244567890', 'richard.thomas@gmail.com'), 
('RJ-112', 'Robert', 'Jackson', '01245678901', 'robert.jackson@gmail.com'), 
('SW-113', 'Susan', 'White', '01246789012', 'susan.white@gmail.com'), 
('LH-114', 'Lisa', 'Harris', '01247890123', 'lisa.harris@gmail.com'), 
('CM-115', 'Christopher', 'Martin', '01248901234', 'christopher.martin@gmail.com'), 
('NT-116', 'Nicole', 'Thompson', '01249012345', 'nicole.thompson@gmail.com'), 
('JM-117', 'Julie', 'Moore', '01250123456', 'julie.moore@gmail.com'),
 ('ET-118', 'Emily', 'Taylor', '01251234567', 'emily.taylor@gmail.com'), 
('JA-119', 'James', 'Anderson', '01252345678', 'james.anderson@gmail.com'), 
('LD-120', 'Laura', 'Davis', '01253456789', 'laura.davis@gmail.com');

SELECT *
FROM restaurant_tbl

INSERT INTO restaurant_tbl (RESTAURANT_ID, RESTAURANT_NAME, RESTAURANT_BRANCH, RESTAURANT_ADDRESS, RESTAURANT_POST_CODE, MANAGER_ID) 
VALUES ('NAN-101', 'NANO', 'Oxford St.', '3 Crown Place, London W1S 1JD', 'W1S 1JD','KR-12'), 
       ('PIZ-101', 'Pizza KING', 'Bray', 'High St, Bray, Maidenhead SL6 2AQ', 'SL6 2AQ','FM-13'), 
        ('NAN-102', 'NANO', 'Manchester', '1 The Orient, Manchester M4 3EJ', 'M4 3EJ','AJ-34');

SELECT *
FROM manager_tbl

INSERT INTO manager_tbl (manager_id, manger_name) 
VALUES ('KR-12', 'Kunle Remi'), 
('FM-13', 'Femi Adebayo'), 
('AJ-34', 'Ajayi Kayode');

SELECT *
FROM MOTORBIKE_TBL

INSERT INTO motorbike_tbl (MOTORBIKE_ID, MOTORBIKE_REG, COLOUR, MOTOR_TYPE, DATE_PURCHASE, ENGINE_SIZE, RESTAURANT_ID)
 VALUES ('HON-321', 'ABC123', 'Red', 'HONDA', '01/01/2022', '500cc', 'NAN-101'), 
('TOY-123', 'DEF456', 'Blue', 'TOYOTA', '15/02/2021', '750cc', 'NAN-101'), 
('BEN-111', 'GHI789', 'Green', 'BENZ', '30/03/2021', '1200cc', 'PIZ-101'), 
('FOR-777', 'JKL012', 'Black', 'FORD', '20/04/2021', '250cc', 'PIZ-101'), 
('AUD-789', 'MNO345', 'White', 'AUDI', '10/05/2021', '150cc', 'NAN-102'), 
('PEG-786', 'PQR678', 'Silver', 'PEGOUT', '06/01/2021', '600cc', 'NAN-102');


SELECT *
FROM DRIVER_TBL

INSERT INTO driver_tbl (driver_id, driver_name, driver_salary, driver_nin, driver_email_address, driver_phone_no, license_no, issue_date, expiry_date, country_issue, motorbike_id, manager_id, restaurant_id) 
VALUES ('TED-234', 'Ted Butterfield', 9.6, 'AB123456C', 'tedbutterfield@gmail.com', 771234568, 'TED123456', '01/01/2010', '01/01/2030', 'United Kingdom', 'HON-321', 'KR-12', 'NAN-101'),
       ('BRE-001', 'Brendan Sweed', 9.6, 'CD654321D', 'brendansweer@gmail.com', 798765421, 'BRE654321', '01/01/2011', '01/01/2040', 'United Kingdom', 'TOY-123', 'KR-12', 'NAN-101'), 
       ('LEN-090', 'Lena Hernandez', 10.1, 'EF098765E', 'lenasweer@gmail.com', 75124578, 'LEN98765', '01/01/2012', '01/01/2020', 'United Kingdom', 'BEN-111', 'FM-13', 'PIZ-101'), 
       ('KUN-348', 'Kunst Miller', 10.1, 'GH567890F', 'kunstsweer@gmail.com', 765432100, 'KUN567890', '01/01/2013', '01/01/2025', 'United Kingdom', 'FOR-777', 'FM-13', 'PIZ-101'),
       ('PAT-123', 'Patrick O Donnell', 9.9, 'IJ223344G', 'patricksweer@gmail.com', 771112233, 'PAT223344', '01/01/2014', '01/01/2030', 'United Kingdom', 'AUD-789', 'AJ-34', 'NAN-102'),
       ('ODE-097', 'Odella Nelson', 9.9, 'KL556677H', 'odellasweer@gmail.com', 798899566, 'ODE556677', '01/01/2015', '01/01/2040', 'United Kingdom', 'PEG-786', 'AJ-34', 'NAN-102');

SELECT *
FROM ITEM_TBL

INSERT INTO item_tbl (item_id, item_name, item_category, item_price, restaurant_id)
VALUES ('CHO-001', 'Chocolate Cake', 'Dessert', 3, 'NAN-101'), 
('CHES-001', 'Cheesecake', 'Dessert', 4, 'NAN-101'), 
('CAR-001', 'Carrot Cake', 'Dessert', 4, 'NAN-101'), 
('CAS-001', 'Caesar Salad', 'Starter', 8, 'NAN-101'), 
('TOM-001', 'Tomato Soup', 'Starter', 5, 'NAN-101'), 
('BAR-001', 'Barbecue Soup', 'Starter', 6, 'NAN-101'),
 ('MAR-001', 'Martini', 'Drink', 2, 'NAN-101'),
 ('WHI-001', 'Whiskey Sour', 'Drink', 3, 'NAN-101'),
 ('MAG-001', 'Margarita', 'Drink', 3, 'NAN-101'), 
('BEE-001', 'Beef Stroganoff', 'Main Course', 7, 'NAN-101'),
 ('GRIL-001', 'Grilled Salmon', 'Main Course', 9, 'NAN-101'),
 ('SPA-001', 'Spaghetti Bolognese', 'Main Course', 4, 'NAN-101'), 
('APP-001', 'Apple Pie', 'Dessert', 4, 'PIZ-101'), 
('ICE-001', 'Ice Cream Sundae', 'Dessert', 6, 'PIZ-101'),
 ('MOU-001', 'Mousse Choco', 'Dessert', 3, 'PIZ-101'),
 ('SOU-001', 'Soup of the Day', 'Starter', 5, 'PIZ-101'),
 ('BAS-001', 'Bread Basket', 'Starter', 6, 'PIZ-101'),
 ('FRE-001', 'French Onion Soup', 'Starter', 4, 'PIZ-101'), 
('GIN-001', 'Gin and Tonic', 'Drink', 2, 'PIZ-101'),
 ('RED-001', 'Red Wine', 'Drink', 4, 'PIZ-101'),
 ('PIN-001', 'Pinot Noir', 'Drink', 3, 'PIZ-101'), 
('POR-001', 'Pork Chops', 'Main Course', 6, 'PIZ-101'),
 ('CHI-001', 'Chicken Alfredo', 'Main Course', 7, 'PIZ-101'), 
('GRILC-001', 'Grilled CHICKEN', 'Main Course', 8, 'PIZ-101'),
('GRILS-001', 'Grilled Steak', 'Main Course', 8, 'PIZ-101'),
('CAR-001-2', 'Carrot Cake', 'Dessert', 3, 'NAN-102'), 
('CAS-001-2', 'Caesar Salad', 'Starter', 6, 'NAN-102'), 
('TOM-001-2', 'Tomato Soup', 'Starter', 4, 'NAN-102'),
 ('BAR-001-2', 'Barbecue Soup', 'Starter', 7, 'NAN-102'), 
('MAR-001-2', 'Martini', 'Drink', 2, 'NAN-102'), 
('WHI-001-2', 'Whiskey Sour', 'Drink', 2, 'NAN-102'),
 ('MAG-001-2', 'Margarita', 'Drink', 2, 'NAN-102'), 
('BEE-001-2', 'Beef Stroganoff', 'Main Course', 6, 'NAN-102'), 
('GRIL-001-2', 'Grilled Salmon', 'Main Course', 5, 'NAN-102'), 
('SPA-001-2', 'Spaghetti Bolognese', 'Main Course', 6, 'NAN-102');
('CHO-001-2', 'Chocolate Cake', 'Dessert', 3, 'NAN-102'), 
('CHES-001-2', 'Cheesecake', 'Dessert', 4, 'NAN-102');

SELECT *
FROM ORDER_TBL

