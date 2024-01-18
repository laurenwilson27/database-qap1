--Create a database for a 'forum' website, with topics and comments within each topic.
--This will be a simplified version of my Semester 2 Sprint 2's JSON database.
CREATE DATABASE forum
	WITH
	OWNER = postgres
	ENCODING = 'UTF8'
	LOCALE_PROVIDER = 'libc'
	CONNECTION LIMIT = -1
	IS_TEMPLATE = False;