--Table for topics. Each topic has an author and a title.
--The topics have a one-to-many relationship with comments.
CREATE TABLE public.topics
(
    topic_id serial,
    author_id integer NOT NULL,
    title character varying(40) NOT NULL,
    creation_time timestamp with time zone DEFAULT now(),
    PRIMARY KEY (topic_id)
);

ALTER TABLE IF EXISTS public.topics
    OWNER to postgres;
	
--Table for comments. Each comment has an associated topic id, author id, 
--and comment text. They have a many-to-one relationship with users.
CREATE TABLE public.comments
(
    comment_id serial,
	topic_id integer NOT NULL,
    author_id integer NOT NULL,
    comment_body character varying(40) NOT NULL,
    creation_time timestamp with time zone DEFAULT now(),
    PRIMARY KEY (topic_id)
);

ALTER TABLE IF EXISTS public.comments
    OWNER to postgres;
	
--A barebones table for users.
--Realistically, they would contain more than a username.
CREATE TABLE public.users
(
	user_id serial,
	user_name character varying(16) NOT NULL,
	PRIMARY KEY (user_id)
);

ALTER TABLE IF EXISTS public.users
	OWNER to postgres;