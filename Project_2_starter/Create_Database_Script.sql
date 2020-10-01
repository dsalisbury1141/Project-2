--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "StemDemographics";
--
-- Name: StemDemographics; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "StemDemographics" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "StemDemographics" OWNER TO postgres;

\connect "StemDemographics"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Table: public.Stem_Employee_Demographics

-- DROP TABLE public."Stem_Employee_Demographics";

CREATE TABLE public."Stem_Employee_Demographics"
(
    "Date" integer NOT NULL,
    "Type" character varying COLLATE pg_catalog."default",
    "Company" character varying COLLATE pg_catalog."default",
    "Female" double precision,
    "Male" double precision,
    "White" double precision,
    "Asian" double precision,
    "Latino" double precision,
    "Black" double precision,
    "Multi" double precision,
    "Other" double precision,
    "Undeclared" double precision
)

TABLESPACE pg_default;

ALTER TABLE public."Stem_Employee_Demographics"
    OWNER to postgres;
	
-- Table: public.Stem_Major_Demographics

-- DROP TABLE public."Stem_Major_Demographics";

CREATE TABLE public."Stem_Major_Demographics"
(
    "Rank" integer NOT NULL,
    "Major_code" integer,
    "Major" character varying COLLATE pg_catalog."default",
    "Major_category" character varying COLLATE pg_catalog."default",
    "Total" integer,
    "Men" integer,
    "Women" integer,
    "ShareWomen" double precision,
    "Median" integer,
    CONSTRAINT "Stem_Major_Demographics_pkey" PRIMARY KEY ("Rank")
)

TABLESPACE pg_default;

ALTER TABLE public."Stem_Major_Demographics"
    OWNER to postgres;

--
-- Data for Name: Stem_Employee_Demographics; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Country', 'U.S. Population', 50.79, 49.21, 64, 4, 16, 12, 1, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'Facebook', 31, 69, 57, 34, 4, 2, 3, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'Instagram', 31, 69, 57, 34, 4, 2, 3, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'Google+', 30, 70, 61, 30, 3, 2, 4, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'YouTube', 30, 70, 61, 30, 3, 2, 4, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'LinkedIn', 39, 61, 53, 38, 4, 2, 2, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'Pinterest', 40, 60, 50, 42, 2, 1, NULL, 5, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'Tumblr', 37, 62, 50, 39, 4, 2, 2, 2, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'Flickr', 37, 62, 50, 39, 4, 2, 2, 2, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Social Media', 'Twitter', 30, 70, 59, 29, 3, 2, 3, 4, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Yahoo!', 37, 62, 50, 39, 4, 2, 2, 2, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Google', 30, 70, 61, 30, 3, 2, 4, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Apple', 30, 70, 55, 15, 11, 7, 2, 1, 9);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Cisco', 23, 77, 54, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'eBay', 42, 58, 61, 24, 5, 7, 1, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'HP', 33, 67, 72, 6, 14, 7, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Indiegogo', 45, 55, 64, 23, 8, 2, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Nvidia', 16.05, 83.95, 38, 44, 3, 1, 14, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Dell', 30, 70.45, 68.65, 9.11, 11.14, 10.04, NULL, 0.97, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Ingram Micro', 42, 58.22, 63.03, 10.52, 15.7, 10.13, NULL, 0.48, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Intel', 25, 75.44, 60.81, 26.05, 8.63, 3.61, NULL, 0.93, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Groupon', 47, 53, 71, 15, 5, 4, NULL, 4, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Amazon', 37, 63, 60, 13, 9, 15, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Salesforce', 29, 71, 67, 22, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Pandora', 49, 51, 71, 12, 7, 3, 6, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Tech', 'Microsoft', 29, 71, 60.6, 28.9, 5.1, 3.5, 1.2, 0.8, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Entity', 'DiversityInc top 50', 54, 46, 68, 10, 10, 12, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Entity', 'Fortune 500 CEOs', 4.8, 95, 83, 1.8, 2, 1.2, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Entity', 'Kaiser Permanente', 76, 24, 48, 20, 18, 13, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Government', 'US Congress', 19, 81, 80, 5.6, 6, 8, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2014, 'Entity', 'Venture Capitalists', 11, 89, 87, 9, 2, 2, 2, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Country', 'U.S. Population', 50.79, 49.21, 64, 4, 16, 12, 1, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'Facebook', 33, 67, 53, 38, 4, 2, 3, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'Instagram', 31, 69, 57, 34, 4, 2, 3, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'Google+', 30, 70, 60, 31, 3, 2, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'YouTube', 30, 70, 61, 30, 3, 2, 4, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'LinkedIn', 42, 58, 56, 37, 4, 2, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'Pinterest', 40, 60, 50, 42, 2, 1, NULL, 5, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'Tumblr', 37, 62, 50, 39, 4, 2, 2, 2, 1);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'Flickr', 37, 62, 50, 39, 4, 2, 2, 2, 1);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Social Media', 'Twitter', 34, 56, 59, 29, 3, 2, 3, 4, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Yahoo!', 37, 62, 47, 43, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Google', 31, 69, 59, 32, 3, 2, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Apple', 32, 68, 56, 19, 12, 9, 2, 1, 2);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Cisco', 23, 77, 54, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'eBay', 43, 57, 60, 25, 5, 8, 1, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'HP', 33, 67, 72, 6, 14, 7, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Indiegogo', 45, 55, 64, 23, 8, 2, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Nvidia', 16.05, 83.95, 38, 44, 3, 1, 14, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Dell', 30, 70.45, 68.65, 9.11, 11.14, 10.04, NULL, 0.97, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Ingram Micro', 42, 58.22, 63.03, 10.52, 15.7, 10.13, NULL, 0.48, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Intel', 25, 75.44, 60.81, 26.05, 8.63, 3.61, NULL, 0.93, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Groupon', 47, 53, 71, 15, 5, 4, NULL, 4, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Amazon', 37, 63, 60, 13, 9, 15, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Etsy', 51, 49, 79, 11, 4, 3, 3, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Microsoft', 28, 72, 59, 28.9, 5.1, 3.5, 1.2, 0.8, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Salesforce', 29, 71, 67, 22, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Pandora', 49, 51, 71, 12, 7, 3, 6, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Tech', 'Uber', 36.1, 63.9, 49.8, 30.9, 5.6, 8.8, 4.3, 0.6, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Entity', 'DiversityInc top 50', 54, 46, 68, 10, 10, 12, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Entity', 'Fortune 500 CEOs', 4.8, 95, 83, 1.8, 2, 1.2, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Entity', 'Kaiser Permanente', 76, 24, 48, 20, 18, 13, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Government', 'US Congress', 19, 81, 80, 5.6, 6, 8, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2016, 'Entity', 'Venture Capitalists', 11, 89, 87, 9, 2, 2, 2, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Country', 'U.S. Population', 51, 49, 61, 5.7, 17.8, 13.3, 2.6, 0.2, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Facebook', 35, 65, 49, 40, 5, 3, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Instagram', 35, 65, 49, 40, 5, 3, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Google+', 31, 69, 56, 35, 4, 2, 4, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'YouTube', 31, 69, 56, 35, 4, 2, 4, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'LinkedIn', 42, 58, 52, 39, 4, 4, 2, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Pinterest', 45, 55, 48, 41, 6, 3, 2, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Tumblr', 37, 63, 45, 44, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Flickr', 37, 63, 45, 44, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Twitter', 37, 63, 57, 32, 4, 3, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Yahoo!', 37, 63, 45, 44, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Google', 31, 69, 56, 35, 4, 2, 4, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Apple', 32, 68, 54, 21, 13, 9, 3, 1, 2);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Cisco', 24, 76, 53, 37, 5, 4, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'eBay', 38, 62, 52, 40, 4, 2, 1, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'HP', 37, 63, 73, 12, 8, 4, 2, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Indiegogo', 50, 50, 58, 28, 7, 4, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Nvidia', 17, 83, 37, 45, 3, 1, 14, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Dell', 28, 72, 68.65, 9.11, 11.14, 10.04, NULL, 0.97, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Ingram Micro', 31, 69, 52, 14, 19, 14, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Intel', 26, 73.9, 48, 38, 9, 4, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Groupon', 44, 56, 62, 20, 8, 8, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Amazon', 39, 61, 48, 13, 13, 21, NULL, 5, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Etsy', 54, 46, 79, 10, 4, 3, 4, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Microsoft', 26, 74, 56, 31, 6, 4, 2, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Salesforce', 31, 69, 65, 24, 4, 3, 3, NULL, 2);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Pandora', 49, 51, 65, 16, 8, 5, 5, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Uber', 36.1, 63.9, 49.8, 30.9, 5.6, 8.8, 4.3, 0.6, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Entity', 'DiversityInc top 50', 44, 56, 78, 6, 7, 9, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Entity', 'Fortune 500 CEOs', 6, 94, 73, 21, 3, 2, 0.5, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Government', 'US Congress', 20, 80, 80, 3, 7, 9, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Country', 'U.S. Population', 50.79, 49.21, 64, 4, 16, 12, 1, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'Facebook', 32, 68, 55, 36, 4, 2, 3, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'Instagram', 31, 69, 57, 34, 4, 2, 3, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'Google+', 30, 70, 60, 31, 3, 2, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'YouTube', 30, 70, 61, 30, 3, 2, 4, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'LinkedIn', 42, 58, 56, 37, 4, 2, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'Pinterest', 40, 60, 50, 42, 2, 1, NULL, 5, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'Tumblr', 37, 62, 50, 39, 4, 2, 2, 2, 1);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'Flickr', 37, 62, 50, 39, 4, 2, 2, 2, 1);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Social Media', 'Twitter', 30, 70, 59, 29, 3, 2, 3, 4, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Yahoo!', 37, 62, 50, 39, 4, 2, 2, 2, 1);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Google', 30, 70, 60, 31, 3, 2, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Apple', 31, 69, 54, 18, 11, 8, 2, 1, 6);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Cisco', 23, 77, 54, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'eBay', 43, 57, 60, 25, 5, 8, 1, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'HP', 33, 67, 72, 6, 14, 7, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Indiegogo', 45, 55, 64, 23, 8, 2, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Nvidia', 16.05, 83.95, 38, 44, 3, 1, 14, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Dell', 30, 70.45, 68.65, 9.11, 11.14, 10.04, NULL, 0.97, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Ingram Micro', 42, 58.22, 63.03, 10.52, 15.7, 10.13, NULL, 0.48, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Intel', 25, 75.44, 60.81, 26.05, 8.63, 3.61, NULL, 0.93, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Groupon', 47, 53, 71, 15, 5, 4, NULL, 4, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Amazon', 37, 63, 60, 13, 9, 15, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Etsy', 51, 49, 79, 11, 4, 3, 3, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Microsoft', 28, 72, 59, 28.9, 5.1, 3.5, 1.2, 0.8, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Salesforce', 29, 71, 67, 22, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Tech', 'Pandora', 49, 51, 71, 12, 7, 3, 6, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Entity', 'DiversityInc top 50', 54, 46, 68, 10, 10, 12, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Entity', 'Fortune 500 CEOs', 4.8, 95, 83, 1.8, 2, 1.2, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Entity', 'Kaiser Permanente', 76, 24, 48, 20, 18, 13, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Government', 'US Congress', 19, 81, 80, 5.6, 6, 8, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2015, 'Entity', 'Venture Capitalists', 11, 89, 87, 9, 2, 2, 2, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Country', 'U.S. Population', 51, 49, 61, 5.7, 17.8, 13.3, 2.6, 0.2, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Facebook', 35, 65, 49, 40, 5, 3, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Instagram', 35, 65, 49, 40, 5, 3, 3, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Google+', 31, 69, 56, 35, 4, 2, 4, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'YouTube', 31, 69, 56, 35, 4, 2, 4, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'LinkedIn', 42, 58, 52, 39, 4, 4, 2, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Pinterest', 45, 55, 48, 41, 6, 3, 2, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Tumblr', 37, 63, 45, 44, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Flickr', 37, 63, 45, 44, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Social Media', 'Twitter', 38.4, 61.6, 43.5, 25.8, 3.4, 3.4, 2.7, NULL, 21.1);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Yahoo!', 37, 63, 45, 44, 4, 2, 2, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Google', 31, 69, 53, 36, 4, 3, 4, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Apple', 32, 68, 54, 21, 13, 9, 3, 1, 2);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Cisco', 24, 76, 53, 37, 5, 4, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'eBay', 40, 60, 50, 39, 6, 3, 1, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'HP', 37, 63, 73, 12, 8, 4, 2, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Indiegogo', 50, 50, 58, 28, 7, 4, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Nvidia', 17, 83, 37, 45, 3, 1, 14, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Dell', 28, 72, 68.65, 9.11, 11.14, 10.04, NULL, 0.97, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Ingram Micro', 31, 69, 52, 14, 19, 14, 1, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Intel', 26.5, 73.5, 47.8, 38.5, 8.8, 4, 0.2, 0.7, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Groupon', 44, 56, 62, 20, 8, 8, NULL, 3, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Amazon', 39, 61, 48, 13, 13, 21, NULL, 5, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Etsy', 54, 46, 79, 10, 4, 3, 4, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Microsoft', 26, 74, 56, 31, 6, 4, 2, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Salesforce', 30.9, 68.7, 64.69, 23.87, 3.9, 2.53, 2.56, 0.1, 1.98);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Pandora', 49, 51, 65, 16, 8, 5, 5, 1, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Uber', 38, 62, 48.6, 32.3, 6.1, 8.1, 4.3, 0.7, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Slack', 44.7, 55.3, 58.7, 24.4, 6.9, 4.9, 4.4, 0.7, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'AirBnB', 41.15, 59, 49.81, 36.36, 7.44, 3.45, 2.52, 0.5, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Netflix', 43, 57, 49, 24, 6, 4, NULL, 4, 13);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Tech', 'Yelp', 54, 46, 62, 15, 10, 6, 5, 2, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Entity', 'DiversityInc top 50', 44, 56, 78, 6, 7, 9, NULL, NULL, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Entity', 'Fortune 500 CEOs', 6, 94, 73, 21, 3, 2, 0.5, 0.5, NULL);
INSERT INTO public."Stem_Employee_Demographics" ("Date", "Type", "Company", "Female", "Male", "White", "Asian", "Latino", "Black", "Multi", "Other", "Undeclared") VALUES (2018, 'Government', 'US Congress', 20, 80, 80, 3, 7, 9, NULL, 1, NULL);


--
-- Data for Name: Stem_Major_Demographics; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (1, 2419, 'PETROLEUM ENGINEERING', 'Engineering', 2339, 2057, 282, 0.120564344, 110000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (2, 2416, 'MINING AND MINERAL ENGINEERING', 'Engineering', 756, 679, 77, 0.101851852, 75000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (3, 2415, 'METALLURGICAL ENGINEERING', 'Engineering', 856, 725, 131, 0.153037383, 73000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (4, 2417, 'NAVAL ARCHITECTURE AND MARINE ENGINEERING', 'Engineering', 1258, 1123, 135, 0.107313196, 70000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (5, 2418, 'NUCLEAR ENGINEERING', 'Engineering', 2573, 2200, 373, 0.144966965, 65000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (6, 2405, 'CHEMICAL ENGINEERING', 'Engineering', 32260, 21239, 11021, 0.341630502, 65000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (7, 5001, 'ASTRONOMY AND ASTROPHYSICS', 'Physical Sciences', 1792, 832, 960, 0.535714286, 62000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (8, 2414, 'MECHANICAL ENGINEERING', 'Engineering', 91227, 80320, 10907, 0.119558903, 60000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (9, 2401, 'AEROSPACE ENGINEERING', 'Engineering', 15058, 12953, 2105, 0.139792801, 60000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (10, 2408, 'ELECTRICAL ENGINEERING', 'Engineering', 81527, 65511, 16016, 0.196450256, 60000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (11, 2407, 'COMPUTER ENGINEERING', 'Engineering', 41542, 33258, 8284, 0.199412643, 60000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (12, 5008, 'MATERIALS SCIENCE', 'Engineering', 4279, 2949, 1330, 0.310820285, 60000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (13, 2404, 'BIOMEDICAL ENGINEERING', 'Engineering', 14955, 8407, 6548, 0.437846874, 60000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (14, 2409, 'ENGINEERING MECHANICS PHYSICS AND SCIENCE', 'Engineering', 4321, 3526, 795, 0.183985189, 58000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (15, 2402, 'BIOLOGICAL ENGINEERING', 'Engineering', 8925, 6062, 2863, 0.320784314, 57100);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (16, 2412, 'INDUSTRIAL AND MANUFACTURING ENGINEERING', 'Engineering', 18968, 12453, 6515, 0.343473218, 57000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (17, 2400, 'GENERAL ENGINEERING', 'Engineering', 61152, 45683, 15469, 0.252959838, 56000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (18, 2403, 'ARCHITECTURAL ENGINEERING', 'Engineering', 2825, 1835, 990, 0.350442478, 54000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (19, 2102, 'COMPUTER SCIENCE', 'Computers & Mathematics', 128319, 99743, 28576, 0.222695002, 53000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (20, 2502, 'ELECTRICAL ENGINEERING TECHNOLOGY', 'Engineering', 11565, 8181, 3384, 0.292607004, 52000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (21, 2413, 'MATERIALS ENGINEERING AND MATERIALS SCIENCE', 'Engineering', 2993, 2020, 973, 0.325091881, 52000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (22, 2499, 'MISCELLANEOUS ENGINEERING', 'Engineering', 9133, 7398, 1735, 0.189970437, 50000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (23, 2406, 'CIVIL ENGINEERING', 'Engineering', 53153, 41081, 12072, 0.227117943, 50000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (24, 2500, 'ENGINEERING TECHNOLOGIES', 'Engineering', 3600, 2695, 905, 0.251388889, 50000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (25, 2411, 'GEOLOGICAL AND GEOPHYSICAL ENGINEERING', 'Engineering', 720, 488, 232, 0.322222222, 50000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (26, 2410, 'ENVIRONMENTAL ENGINEERING', 'Engineering', 4047, 2662, 1385, 0.342228811, 50000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (27, 6107, 'NURSING', 'Health', 209394, 21773, 187621, 0.896018988, 48000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (28, 2503, 'INDUSTRIAL PRODUCTION TECHNOLOGIES', 'Engineering', 4631, 3477, 1154, 0.24919024, 46000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (29, 5102, 'NUCLEAR, INDUSTRIAL RADIOLOGY, AND BIOLOGICAL TECHNOLOGIES', 'Physical Sciences', 2116, 528, 1588, 0.75047259, 46000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (30, 2105, 'INFORMATION SCIENCES', 'Computers & Mathematics', 11913, 9005, 2908, 0.244103081, 45000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (31, 2100, 'COMPUTER AND INFORMATION SYSTEMS', 'Computers & Mathematics', 36698, 27392, 9306, 0.253583302, 45000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (32, 5007, 'PHYSICS', 'Physical Sciences', 32142, 23080, 9062, 0.281936407, 45000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (33, 3701, 'APPLIED MATHEMATICS', 'Computers & Mathematics', 4939, 2794, 2145, 0.434298441, 45000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (34, 3700, 'MATHEMATICS', 'Computers & Mathematics', 72397, 39956, 32441, 0.448098678, 45000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (35, 3702, 'STATISTICS AND DECISION SCIENCE', 'Computers & Mathematics', 6251, 2960, 3291, 0.526475764, 45000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (36, 3607, 'PHARMACOLOGY', 'Biology & Life Science', 1762, 515, 1247, 0.707718502, 45000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (37, 6105, 'MEDICAL TECHNOLOGIES TECHNICIANS', 'Health', 15914, 3916, 11998, 0.75392736, 45000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (38, 5006, 'OCEANOGRAPHY', 'Physical Sciences', 2418, 752, 1666, 0.688999173, 44700);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (39, 2501, 'ENGINEERING AND INDUSTRIAL MANAGEMENT', 'Engineering', 2906, 2400, 506, 0.174122505, 44000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (40, 4005, 'MATHEMATICS AND COMPUTER SCIENCE', 'Computers & Mathematics', 609, 500, 109, 0.178981938, 42000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (41, 6104, 'MEDICAL ASSISTING SERVICES', 'Health', 11123, 803, 10320, 0.927807246, 42000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (42, 2101, 'COMPUTER PROGRAMMING AND DATA PROCESSING', 'Computers & Mathematics', 4168, 3046, 1122, 0.269193858, 41300);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (43, 4006, 'COGNITIVE SCIENCE AND BIOPSYCHOLOGY', 'Biology & Life Science', 3831, 1667, 2164, 0.56486557, 41000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (44, 2504, 'MECHANICAL ENGINEERING RELATED TECHNOLOGIES', 'Engineering', 4790, 4419, 371, 0.077453027, 40000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (45, 2599, 'MISCELLANEOUS ENGINEERING TECHNOLOGIES', 'Engineering', 8804, 7043, 1761, 0.200022717, 40000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (46, 5000, 'PHYSICAL SCIENCES', 'Physical Sciences', 1436, 894, 542, 0.377437326, 40000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (47, 1401, 'ARCHITECTURE', 'Engineering', 46420, 25463, 20957, 0.451464886, 40000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (48, 3605, 'GENETICS', 'Biology & Life Science', 3635, 1761, 1874, 0.515543329, 40000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (49, 3603, 'MOLECULAR BIOLOGY', 'Biology & Life Science', 18300, 7426, 10874, 0.59420765, 40000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (50, 6108, 'PHARMACY PHARMACEUTICAL SCIENCES AND ADMINISTRATION', 'Health', 23551, 8697, 14854, 0.630716318, 40000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (51, 5003, 'CHEMISTRY', 'Physical Sciences', 66530, 32923, 33607, 0.505140538, 39000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (52, 3606, 'MICROBIOLOGY', 'Biology & Life Science', 15232, 6383, 8849, 0.580948004, 38000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (53, 2106, 'COMPUTER ADMINISTRATION MANAGEMENT AND SECURITY', 'Computers & Mathematics', 8066, 6607, 1459, 0.180882718, 37500);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (54, 3601, 'BIOCHEMICAL SCIENCES', 'Biology & Life Science', 39107, 18951, 20156, 0.515406449, 37400);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (55, 3602, 'BOTANY', 'Biology & Life Science', 1329, 626, 703, 0.52896915, 37000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (56, 2107, 'COMPUTER NETWORKING AND TELECOMMUNICATIONS', 'Computers & Mathematics', 7613, 5291, 2322, 0.305004597, 36400);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (57, 5004, 'GEOLOGY AND EARTH SCIENCE', 'Physical Sciences', 10972, 5813, 5159, 0.470196865, 36200);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (58, 5005, 'GEOSCIENCES', 'Physical Sciences', 1978, 809, 1169, 0.591001011, 36000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (59, 6199, 'MISCELLANEOUS HEALTH MEDICAL PROFESSIONS', 'Health', 13386, 1589, 11797, 0.881293889, 36000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (60, 1301, 'ENVIRONMENTAL SCIENCE', 'Biology & Life Science', 25965, 10787, 15178, 0.584556133, 35600);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (61, 5002, 'ATMOSPHERIC SCIENCES AND METEOROLOGY', 'Physical Sciences', 4043, 2744, 1299, 0.321296067, 35000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (62, 2001, 'COMMUNICATION TECHNOLOGIES', 'Computers & Mathematics', 18035, 11431, 6604, 0.366176878, 35000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (63, 5098, 'MULTI-DISCIPLINARY OR GENERAL SCIENCE', 'Physical Sciences', 62052, 27015, 35037, 0.564639335, 35000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (64, 3608, 'PHYSIOLOGY', 'Biology & Life Science', 22060, 8422, 13638, 0.618223028, 35000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (65, 3611, 'NEUROSCIENCE', 'Biology & Life Science', 13663, 4944, 8719, 0.63814682, 35000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (66, 6103, 'HEALTH AND MEDICAL ADMINISTRATIVE SERVICES', 'Health', 18109, 4266, 13843, 0.764426528, 35000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (67, 4002, 'NUTRITION SCIENCES', 'Health', 18909, 2563, 16346, 0.864456079, 35000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (68, 6110, 'COMMUNITY AND PUBLIC HEALTH', 'Health', 19735, 4103, 15632, 0.792095262, 34000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (69, 3699, 'MISCELLANEOUS BIOLOGY', 'Biology & Life Science', 10706, 4747, 5959, 0.556603774, 33500);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (70, 6106, 'HEALTH AND MEDICAL PREPARATORY PROGRAMS', 'Health', 12740, 5521, 7219, 0.566640502, 33500);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (71, 3600, 'BIOLOGY', 'Biology & Life Science', 280709, 111762, 168947, 0.601858152, 33400);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (72, 3604, 'ECOLOGY', 'Biology & Life Science', 9154, 3878, 5276, 0.576360061, 33000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (73, 6109, 'TREATMENT THERAPY PROFESSIONS', 'Health', 48491, 13487, 35004, 0.721865913, 33000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (74, 6100, 'GENERAL MEDICAL AND HEALTH SERVICES', 'Health', 33599, 7574, 26025, 0.774576624, 32400);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (75, 6102, 'COMMUNICATION DISORDERS SCIENCES AND SERVICES', 'Health', 38279, 1225, 37054, 0.967998119, 28000);
INSERT INTO public."Stem_Major_Demographics" ("Rank", "Major_code", "Major", "Major_category", "Total", "Men", "Women", "ShareWomen", "Median") VALUES (76, 3609, 'ZOOLOGY', 'Biology & Life Science', 8409, 3050, 5359, 0.637293376, 26000);

--
-- PostgreSQL database dump complete
--

