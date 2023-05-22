CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "invoice_id" INTEGER,
  "full_name" VARCHAR,
  "email" VARCHAR,
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL,
  "invoice_id" INTEGER,
  "salesperson_name" VARCHAR,
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "car" (
  "car_id" SERIAL,
  "car_info" VARCHAR,
  "year" INTEGER,
  "make" VARCHAR,
  "model" VARCHAR,
  PRIMARY KEY ("car_id"),
  CONSTRAINT "FK_car.year"
    FOREIGN KEY ("year")
      REFERENCES "salesperson"("salesperson_id")
);

CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "customer_id" INTEGER,
  "salesperson_id" INTEGER,
  "amount_paid" VARCHAR,
  "car_id" INTEGER,
  PRIMARY KEY ("invoice_id")
);

CREATE TABLE "customer_car" (
  "customer_car_id" SERIAL,
  "car_vin" VARCHAR,
  "year" INTEGER,
  "make" VARCHAR,
  "model" VARCHAR,
  PRIMARY KEY ("customer_car_id")
);

CREATE TABLE "service_ticket" (
  "service_ticket_id" SERIAL,
  "invoice_id" INTEGER,
  "customer_id" INTEGER,
  "mechanic_id" INTEGER,
  "service_id" INTEGER,
  "customer_car_id" INTEGER,
  PRIMARY KEY ("service_ticket_id"),
  CONSTRAINT "FK_service_ticket.customer_car_id"
    FOREIGN KEY ("customer_car_id")
      REFERENCES "customer_car"("customer_car_id")
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL,
  "service_ticket_id" INTEGER,
  "mechanic_name" VARCHAR,
  PRIMARY KEY ("mechanic_id")
);

CREATE TABLE "service_history" (
  "service_history_id" SERIAL,
  "customer_id" INTEGER,
  "mechanic_id" INTEGER,
  "service_history_desc" VARCHAR,
  "service_id" INTEGER,
  PRIMARY KEY ("service_history_id"),
  CONSTRAINT "FK_service_history.mechanic_id"
    FOREIGN KEY ("mechanic_id")
      REFERENCES "mechanic"("mechanic_id")
);

CREATE TABLE "services" (
  "service_id" SERIAL,
  "service_info" VARCHAR(150),
  "price" VARCHAR,
  PRIMARY KEY ("service_id")
);

SELECT *
FROM service_history;

ALTER TABLE car
DROP year;

ALTER TABLE car
ADD car_year INTEGER;

SELECT *
FROM car;

ALTER TABLE customer_car
ADD customer_id INTEGER;

ALTER TABLE customer_car
RENAME year TO car_year;
