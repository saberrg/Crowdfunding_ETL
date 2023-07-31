﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/U88Ycb
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(200)   NOT NULL,
    "last_name" varchar(200)   NOT NULL,
    "email" varchar(200)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Category" (
    "category_id" varchar(200)   NOT NULL,
    "category" varchar(200)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(200)   NOT NULL,
    "subcategory" varchar(200)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(200)   NOT NULL,
    "description" varchar(200)   NOT NULL,
    "goal" double   NOT NULL,
    "pledged" double   NOT NULL,
    "outcome" varchar(200)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(200)   NOT NULL,
    "currency" varchar(200)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(200)   NOT NULL,
    "subcategory_id" varchar(200)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

