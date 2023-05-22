INSERT INTO services(
    service_info,
    price
) VALUES (
    'Paint Job',
    '349.99'
),(
    'Maintenance Check',
    '95.99'
);



INSERT INTO car (
    car_info,
    make,
    model,
    car_year
) VALUES (
    'USED',
    'Toyota',
    'Prius Prime',
    '2017'
),(
    'NEW',
    'Nissan',
    'Leaf',
    '2016'
),(
    'NEW',
    'Tesla',
    'Model X',
    '2019'
);

INSERT INTO customer(
    invoice_id,
    full_name,
    email
) VALUES (
    1,
    'BoJack Horseman',
    'bojack.horseman@hollywoo.com'
), (
    2,
    'Danny Brown',
    'danny.brown@bruiser.com'
),(
    3,
    'Alex Delarage',
    'alex.delarge@clockwork.com'
);
INSERT INTO customer(
    invoice_id,
    full_name,
    email
) VALUES (
    4,
    'Patrick Bateman',
    'batemanpat@hueylewis.com'
);

INSERT INTO invoice(
    customer_id,
    salesperson_id,
    amount_paid,
    car_id
) VALUES (
    1,
    3,
    '55,000',
    1
), (
    2,
    2,
    '99,000',
    3
), (
    3,
    3,
    '68,000',
    2
);

INSERT INTO salesperson(
    invoice_id,
    salesperson_name
) VALUES(
    0,
    'Jackie Brown'
), (
    2,
    'Cillian Murphy'
),(
    1,
    'Hector  LaVoe'
);

SELECT *
FROM invoice;

INSERT INTO customer_car(
    car_vin,
    car_year,
    make,
    model,
    customer_id
) VALUES (
    '1HGBH42JKHN10346335',
    1996,
    'BMW',
    '318',
    4
    
);

SELECT *
FROM customer;

INSERT INTO mechanic(
    service_ticket_id,
    mechanic_name
) VALUES (
    1,
    'Tony Montana'
), (
    2,
    'Freddie Gibbs'
);

INSERT INTO service_ticket(
    invoice_id,
    customer_id,
    mechanic_id,
    service_id,
    customer_car_id
) VALUES (
    1,
    1,
    1,
    1,
    1
);

INSERT INTO service_history(
    customer_id,
    mechanic_id,
    service_history_desc,
    service_id
) VALUES (
    1,
    1,
    'Came in May,1,2022 for a paint job',
    1
);

SELECT *
FROM service_history;

SELECT service_history.service_history_id, customer.full_name
FROM service_history
INNER JOIN customer ON service_history.customer_id= customer.customer_id;