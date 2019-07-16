CREATE DATABASE "ncr-user";

-- Then switch to the new database

CREATE SCHEMA ncr AUTHORIZATION ncr;

SET search_path =  "ncr-user", ncr, public;

CREATE TABLE subscriptions (
	"id" bigserial PRIMARY KEY,
	"name" character varying,
	"layer" character varying,
	"filterxml" text,
	"topic" character varying,
	"startdate" timestamp with time zone,
	"expirationdate" timestamp with time zone,
	"subscriptionid" character varying,
	"consumer_id" text,
	"request_id" text,
	"requestor_id" text
);
