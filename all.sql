--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE adopt;
DROP DATABASE air_traffic;
DROP DATABASE blogly;
DROP DATABASE blogly_test;
DROP DATABASE cfan;
DROP DATABASE cupcakes;
DROP DATABASE cupcakes_test;
DROP DATABASE feedback;
DROP DATABASE library;
DROP DATABASE movies_example;
DROP DATABASE music;
DROP DATABASE outer_space;
DROP DATABASE reddit_db;




--
-- Drop roles
--

DROP ROLE cfan;
DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE cfan;
ALTER ROLE cfan WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:pt8nKhxxKdTf9Hu/jlgmUQ==$4ITszk8xGGgTLOSeODoFGp5XFSzzeKkEyJrK8fv8Wb4=:krEKdnRQKGoNy2hJTorZom80iowB0294xVXYsLFrvMg=';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect template1

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

--
-- PostgreSQL database dump complete
--

--
-- Database "adopt" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: adopt; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE adopt WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect adopt

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: pets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pets (
    id integer NOT NULL,
    name text NOT NULL,
    species text NOT NULL,
    photo_url text,
    age integer,
    notes text,
    available boolean NOT NULL
);


--
-- Name: pets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;


--
-- Name: pets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);


--
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pets (id, name, species, photo_url, age, notes, available) FROM stdin;
2	Nala	cat	https://mylostpetalert.com/wp-content/uploads/pet_photos/cf8b2766fe26e37b536d87ba8158f0fb.jpeg	6	\N	f
3	Toot	bird	https://mylostpetalert.com/wp-content/uploads/pet_photos/5566b6a88e64a72b64c8d529d27b1a2d.jpg	2	\N	t
4	Dilla	cat	\N	10	\N	t
5	Kiley	dog	https://mylostpetalert.com/wp-content/uploads/pet_photos/f1dd7369c7545e17c8dcd36655ceb31c.jpeg	12	\N	f
1	Tofu	cat	https://mylostpetalert.com/wp-content/uploads/pet_photos/c8b99f22c38a53d515fe6f05aeadd874-1.jpeg	15	very cute but sad	t
\.


--
-- Name: pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pets_id_seq', 5, true);


--
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "air_traffic" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: air_traffic; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE air_traffic WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect air_traffic

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tickets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tickets (
    id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    seat text NOT NULL,
    departure timestamp without time zone NOT NULL,
    arrival timestamp without time zone NOT NULL,
    airline text NOT NULL,
    from_city text NOT NULL,
    from_country text NOT NULL,
    to_city text NOT NULL,
    to_country text NOT NULL
);


--
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;


--
-- Name: tickets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tickets (id, first_name, last_name, seat, departure, arrival, airline, from_city, from_country, to_city, to_country) FROM stdin;
1	Jennifer	Finch	33B	2018-04-08 09:00:00	2018-04-08 12:00:00	United	Washington DC	United States	Seattle	United States
2	Thadeus	Gathercoal	8A	2018-12-19 12:45:00	2018-12-19 16:15:00	British Airways	Tokyo	Japan	London	United Kingdom
3	Sonja	Pauley	12F	2018-01-02 07:00:00	2018-01-02 08:03:00	Delta	Los Angeles	United States	Las Vegas	United States
4	Jennifer	Finch	20A	2018-04-15 16:50:00	2018-04-15 21:00:00	Delta	Seattle	United States	Mexico City	Mexico
5	Waneta	Skeleton	23D	2018-08-01 18:30:00	2018-08-01 21:50:00	TUI Fly Belgium	Paris	France	Casablanca	Morocco
6	Thadeus	Gathercoal	18C	2018-10-31 01:15:00	2018-10-31 12:55:00	Air China	Dubai	UAE	Beijing	China
7	Berkie	Wycliff	9E	2019-02-06 06:00:00	2019-02-06 07:47:00	United	New York	United States	Charlotte	United States
8	Alvin	Leathes	1A	2018-12-22 14:42:00	2018-12-22 15:56:00	American Airlines	Cedar Rapids	United States	Chicago	United States
9	Berkie	Wycliff	32B	2019-02-06 16:28:00	2019-02-06 19:18:00	American Airlines	Charlotte	United States	New Orleans	United States
10	Cory	Squibbes	10D	2019-01-20 19:30:00	2019-01-20 22:45:00	Avianca Brasil	Sao Paolo	Brazil	Santiago	Chile
\.


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tickets_id_seq', 10, true);


--
-- Name: tickets tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "blogly" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: blogly; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE blogly WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect blogly

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    content text,
    created_at timestamp without time zone NOT NULL,
    user_id integer
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts_tags (
    post_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name text
);


--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    image_url text
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts (id, title, content, created_at, user_id) FROM stdin;
1	post1 apple	today i ate an apple	2021-04-03 16:09:27.543798	1
2	post2 dog	today i pet a dog	2021-04-03 16:09:27.543798	1
3	post4 test	today i saw a test	2021-04-03 18:18:02.259769	1
\.


--
-- Data for Name: posts_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts_tags (post_id, tag_id) FROM stdin;
1	1
1	2
2	3
2	2
1	5
3	5
3	2
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tags (id, name) FROM stdin;
1	apple
2	today
3	dog
5	test
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, first_name, last_name, image_url) FROM stdin;
1	Charlie	Fan	
2	Jennifer	Fan	
3	Jerry	Fan	
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_id_seq', 3, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tags_id_seq', 5, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts_tags posts_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_tags
    ADD CONSTRAINT posts_tags_pkey PRIMARY KEY (post_id, tag_id);


--
-- Name: tags tags_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: posts_tags posts_tags_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_tags
    ADD CONSTRAINT posts_tags_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: posts_tags posts_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_tags
    ADD CONSTRAINT posts_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "blogly_test" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: blogly_test; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE blogly_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect blogly_test

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    content text,
    created_at timestamp without time zone NOT NULL,
    user_id integer
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts_tags (
    post_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name text
);


--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    image_url text
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts (id, title, content, created_at, user_id) FROM stdin;
\.


--
-- Data for Name: posts_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts_tags (post_id, tag_id) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tags (id, name) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, first_name, last_name, image_url) FROM stdin;
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts_tags posts_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_tags
    ADD CONSTRAINT posts_tags_pkey PRIMARY KEY (post_id, tag_id);


--
-- Name: tags tags_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: posts_tags posts_tags_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_tags
    ADD CONSTRAINT posts_tags_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: posts_tags posts_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_tags
    ADD CONSTRAINT posts_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "cfan" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: cfan; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cfan WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect cfan

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

--
-- PostgreSQL database dump complete
--

--
-- Database "cupcakes" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: cupcakes; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cupcakes WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect cupcakes

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cupcakes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cupcakes (
    id integer NOT NULL,
    flavor text NOT NULL,
    size text NOT NULL,
    rating double precision NOT NULL,
    image text NOT NULL
);


--
-- Name: cupcakes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cupcakes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cupcakes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cupcakes_id_seq OWNED BY public.cupcakes.id;


--
-- Name: cupcakes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cupcakes ALTER COLUMN id SET DEFAULT nextval('public.cupcakes_id_seq'::regclass);


--
-- Data for Name: cupcakes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cupcakes (id, flavor, size, rating, image) FROM stdin;
\.


--
-- Name: cupcakes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cupcakes_id_seq', 3, true);


--
-- Name: cupcakes cupcakes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cupcakes
    ADD CONSTRAINT cupcakes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "cupcakes_test" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: cupcakes_test; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cupcakes_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect cupcakes_test

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cupcakes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cupcakes (
    id integer NOT NULL,
    flavor text NOT NULL,
    size text NOT NULL,
    rating double precision NOT NULL,
    image text NOT NULL
);


--
-- Name: cupcakes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cupcakes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cupcakes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cupcakes_id_seq OWNED BY public.cupcakes.id;


--
-- Name: cupcakes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cupcakes ALTER COLUMN id SET DEFAULT nextval('public.cupcakes_id_seq'::regclass);


--
-- Data for Name: cupcakes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cupcakes (id, flavor, size, rating, image) FROM stdin;
6	TestFlavor3	TestSize	5	http://test.com/cupcake.jpg
\.


--
-- Name: cupcakes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cupcakes_id_seq', 6, true);


--
-- Name: cupcakes cupcakes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cupcakes
    ADD CONSTRAINT cupcakes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "feedback" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: feedback; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE feedback WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect feedback

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: feedback; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    content text NOT NULL,
    username character varying(20) NOT NULL
);


--
-- Name: feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.feedback_id_seq OWNED BY public.feedback.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    username character varying(20) NOT NULL,
    password text NOT NULL,
    email character varying(50) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL
);


--
-- Name: feedback id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_id_seq'::regclass);


--
-- Data for Name: feedback; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.feedback (id, title, content, username) FROM stdin;
1	title1	content1	test
2	title2	content2	test
3	title3	content3	test
4	title of feedback	content is king	cfan
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (username, password, email, first_name, last_name) FROM stdin;
test	$2b$12$zZAZW8VXfnzzrWWfefblX.NpX6wQ0QrjDZjmCYBEuGrMYwFgQdlhm	test@test.com	first	last
cfan	$2b$12$k5OEqS94eJGRJDV3dF3eOe4VmfURjyvuO1JOUMSP4UcmgzljOvZNa	cfan@test.com	charlie	fan
jen	$2b$12$ueccnhoE/dHWjJYmOQtUouih5jC4t5CE/Bm0EwPvadMxQ63/IsYNK	jen@test.com	jennifer	fan
jerry	$2b$12$3NnVcP6l40Mj4QGe.vvY3u31lTtG6RksJt0YZxIAI4VaIygJl6Xk2	jerry@test.com	jerry	fan
\.


--
-- Name: feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.feedback_id_seq', 4, true);


--
-- Name: feedback feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: feedback feedback_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- PostgreSQL database dump complete
--

--
-- Database "library" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: library; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect library

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title text,
    author text,
    price real,
    page_count integer,
    publisher text,
    publication_date date
);


--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    email text,
    password text NOT NULL,
    salary integer,
    CONSTRAINT employees_salary_check CHECK ((salary >= 0))
);


--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.books (id, title, author, price, page_count, publisher, publication_date) FROM stdin;
1	The Design of Everyday Things: Revised and Expanded Edition	Don Norman	12.92	368	Basic Books	2013-11-05
2	Introduction to Analytic and Probabilistic Number Theory	Gerald Tenenbaum	89	629	American Mathematical Society	2015-07-16
3	Flatland: A Romance of Many Dimensions	Edwin A. Abbott	3	96	Dover Publications	1992-09-21
4	House of Leaves	Mark Z. Danielewski	15.18	709	Pantheon	2000-03-07
5	You Don't Know JS: Up & Going	Kyle Simpson	2.99	88	O'Reilly Media	2015-04-10
6	You Don't Know JS: Scope & Closures	Kyle Simpson	17.09	98	O'Reilly Media	2014-03-24
7	You Don't Know JS: this & Object Prototypes	Kyle Simpson	12.11	174	O'Reilly Media	2014-07-27
8	You Don't Know JS: Types & Grammar	Kyle Simpson	11.92	198	O'Reilly Media	2015-02-14
9	You Don't Know JS: Async & Performance	Kyle Simpson	13.67	296	O'Reilly Media	2015-03-09
10	You Don't Know JS: ES6 & Beyond	Kyle Simpson	20.09	278	O'Reilly Media	2015-12-27
11	Elementary Differential Equations	William Trench	42.95	605	Brooks Cole	1999-10-28
12	JavaScript: The Good Parts	Douglas Crockford	19.11	176	O'Reilly Media	2008-05-01
13	Harry Potter and the Sorcerer's Stone	J. K. Rowling	7.06	309	Scholastic	1999-09-08
14	Harry Potter And The Chamber Of Secrets	J. K. Rowling	7.39	341	Scholastic	2000-08-15
15	Harry Potter And The Prisoner of Azkaban	J. K. Rowling	7.39	448	Scholastic	2001-09-11
16	Harry Potter And The Goblet of Fire	J. K. Rowling	9.78	752	Scholastic	2002-07-30
17	Harry Potter And The Order Of The Phoenix	J. K. Rowling	8.59	896	Scholastic	2004-08-10
18	Harry Potter And The Half-Blood Prince	J. K. Rowling	9.26	652	Scholastic	2006-07-25
19	Harry Potter And The Deathly Hallows	J. K. Rowling	11.03	759	Scholastic	2009-07-07
20	Effective Java	Joshua Bloch	49.78	416	Addison-Wesley Professional	2018-01-06
21	Discrete Mathematics and Its Applications Seventh Edition	Kenneth Rosen	169.03	1072	McGraw-Hill Education	2011-06-14
22	Power-Up: Unlocking the Hidden Mathematics in Video Games	Matthew Lane	22.2	264	Princeton University Press	2017-05-23
23	How to Avoid Huge Ships	John Trimmer	112.42	112	Cornell Maritime Pr	1993-03-01
24	Multiplicative Number Theory	Harold Davenport	63.96	182	Springer	2000-10-31
25	Goodnight Moon	Margaret Wise Brown	12.79	32	HarperCollins	2007-01-23
26	I Want My Hat Back	Jon Klassen	13.59	40	Candlewick Press	2011-09-27
27	Hidden Figures: The American Dream and the Untold Story of the Black Women Mathematicians Who Helped Win the Space Race	Margot Lee Shetterly	9.98	368	William Morrow Paperbacks	2016-12-06
28	Born A Crime: Stories from a South African Childhood	Trevor Noah	16.16	304	Spiegel & Grau	2016-11-15
29	Between the World and Me	Ta-Nehisi Coates	10.35	176	Spiegel & Grau	2015-07-14
30	What If?: Serious Scientific Answers to Absurd Hypothetical Questions	Randall Munroe	13.89	320	Houghton Mifflin Harcourt	2014-09-02
31	Give Us the Ballot: The Modern Struggle for Voting Rights in America	Ari Berman	19.49	384	Farrar, Straus and Giroux	2015-08-04
32	Weapons of Math Destruction: How Big Data Increases Inequality and Threatens Democracy	Cathy O'Neil	11	288	Broadway Books	2017-09-05
33	How Not to Be Wrong: The Power of Mathematical Thinking	Jordan Ellenberg	11.55	480	Penguin Books	2015-05-26
34	Dreamland: The True Tale of America's Opiate Epidemic	Sam Quinones	12.23	384	Bloomsbury Press	2016-04-05
35	A Wrinkle in Time	Madeleine L'Engle	4.64	256	Square Fish	2007-05-01
36	Charlie and the Chocolate Factory	Roald Dahl	6.39	155	Puffin Modern Classics	2004-04-12
37	Guns, Germs, and Steel: The Fates of Human Societies	Jared Diamond	16.71	528	W. W. Norton & Company	2005-07-17
38	The Omnivore's Dilemma: A Natural History of Four Meals	Michael Pollan	12.56	450	Penguin	2007-08-28
39	The Wind-Up Bird Chronicle	Haruki Murakami	11.52	607	Vintage	1998-09-01
40	Where the Sidewalk Ends	Shel Silverstein	17.13	176	HarperCollins	2000-10-03
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employees (id, email, password, salary) FROM stdin;
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.books_id_seq', 40, true);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.employees_id_seq', 1, false);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: employees employees_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_email_key UNIQUE (email);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "movies_example" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: movies_example; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE movies_example WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect movies_example

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    first_name text NOT NULL,
    last_name text,
    birth_date date NOT NULL
);


--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: movies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    title text NOT NULL,
    release_year integer,
    runtime integer,
    rating text,
    studio_id integer
);


--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    movie_id integer,
    actor_id integer
);


--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: studios; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.studios (
    id integer NOT NULL,
    name text NOT NULL,
    founded_in date
);


--
-- Name: studios_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.studios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: studios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.studios_id_seq OWNED BY public.studios.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: studios id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.studios ALTER COLUMN id SET DEFAULT nextval('public.studios_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.actors (id, first_name, last_name, birth_date) FROM stdin;
1	Scarlett	Johansson	1984-11-22
2	Samuel L	Jackson	1948-12-21
3	Kristen	Wiig	1973-08-22
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.movies (id, title, release_year, runtime, rating, studio_id) FROM stdin;
1	Star Wars: The Force Awakens	2015	136	PG-13	1
2	Avatar	2009	160	PG-13	2
3	Black Panther	2018	140	PG-13	1
4	Jurassic World	2015	124	PG-13	3
5	Marvelâ€™s The Avengers	2012	142	PG-13	1
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roles (id, movie_id, actor_id) FROM stdin;
1	1	1
2	1	2
3	3	2
\.


--
-- Data for Name: studios; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.studios (id, name, founded_in) FROM stdin;
1	Walt Disney Studios Motion Pictures	1953-06-23
2	20th Century Fox	1935-05-31
3	Universal Pictures	1912-04-30
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.actors_id_seq', 3, true);


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.movies_id_seq', 5, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- Name: studios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.studios_id_seq', 3, true);


--
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: studios studios_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.studios
    ADD CONSTRAINT studios_pkey PRIMARY KEY (id);


--
-- Name: movies movies_studio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_studio_id_fkey FOREIGN KEY (studio_id) REFERENCES public.studios(id);


--
-- Name: roles roles_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.actors(id) ON DELETE CASCADE;


--
-- Name: roles roles_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

--
-- Database "music" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: music; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE music WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect music

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: songs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.songs (
    id integer NOT NULL,
    title text NOT NULL,
    duration_in_seconds integer NOT NULL,
    release_date date NOT NULL,
    artists text[] NOT NULL,
    album text NOT NULL,
    producers text[] NOT NULL
);


--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.songs (id, title, duration_in_seconds, release_date, artists, album, producers) FROM stdin;
1	MMMBop	238	1997-04-15	{Hanson}	Middle of Nowhere	{"Dust Brothers","Stephen Lironi"}
2	Bohemian Rhapsody	355	1975-10-31	{Queen}	A Night at the Opera	{"Roy Thomas Baker"}
3	One Sweet Day	282	1995-11-14	{"Mariah Cary","Boyz II Men"}	Daydream	{"Walter Afanasieff"}
4	Shallow	216	2018-09-27	{"Lady Gaga","Bradley Cooper"}	A Star Is Born	{"Benjamin Rice"}
5	How You Remind Me	223	2001-08-21	{Nickelback}	Silver Side Up	{"Rick Parashar"}
6	New York State of Mind	276	2009-10-20	{"Jay Z","Alicia Keys"}	The Blueprint 3	{"Al Shux"}
7	Dark Horse	215	2013-12-17	{"Katy Perry","Juicy J"}	Prism	{"Max Martin",Cirkut}
8	Moves Like Jagger	201	2011-06-21	{"Maroon 5","Christina Aguilera"}	Hands All Over	{Shellback,"Benny Blanco"}
9	Complicated	244	2002-05-14	{"Avril Lavigne"}	Let Go	{"The Matrix"}
10	Say My Name	240	1999-11-07	{"Destiny's Child"}	The Writings on the Wall	{Darkchild}
\.


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.songs_id_seq', 10, true);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "outer_space" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: outer_space; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE outer_space WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect outer_space

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: planets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.planets (
    id integer NOT NULL,
    name text NOT NULL,
    orbital_period_in_years double precision NOT NULL,
    orbits_around text NOT NULL,
    galaxy text NOT NULL,
    moons text[]
);


--
-- Name: planets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;


--
-- Name: planets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);


--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.planets (id, name, orbital_period_in_years, orbits_around, galaxy, moons) FROM stdin;
1	Earth	1	The Sun	Milky Way	{"The Moon"}
2	Mars	1.88	The Sun	Milky Way	{Phobos,Deimos}
3	Venus	0.62	The Sun	Milky Way	{}
4	Neptune	164.8	The Sun	Milky Way	{Naiad,Thalassa,Despina,Galatea,Larissa,"S/2004 N 1",Proteus,Triton,Nereid,Halimede,Sao,Laomedeia,Psamathe,Neso}
5	Proxima Centauri b	0.03	Proxima Centauri	Milky Way	{}
6	Gliese 876 b	0.23	Gliese 876	Milky Way	{}
\.


--
-- Name: planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.planets_id_seq', 6, true);


--
-- Name: planets planets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


--
-- PostgreSQL database dump complete
--

--
-- Database "reddit_db" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: reddit_db; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE reddit_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


\connect reddit_db

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    user_id integer,
    comment_text text NOT NULL
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: subreddits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subreddits (
    id integer NOT NULL,
    user_id integer,
    name character varying(15) NOT NULL,
    description text,
    subscribers integer DEFAULT 1,
    is_private boolean DEFAULT false,
    CONSTRAINT subreddits_subscribers_check CHECK ((subscribers > 0))
);


--
-- Name: subreddits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subreddits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subreddits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subreddits_id_seq OWNED BY public.subreddits.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(15) NOT NULL,
    password character varying(20) NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: subreddits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subreddits ALTER COLUMN id SET DEFAULT nextval('public.subreddits_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comments (id, user_id, comment_text) FROM stdin;
\.


--
-- Data for Name: subreddits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.subreddits (id, user_id, name, description, subscribers, is_private) FROM stdin;
1	2	chickens	\N	1	f
2	1	waterluvers	\N	1	f
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, username, password) FROM stdin;
1	graylady	askldjas
2	stevie-chicks	asdkljasl
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: subreddits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.subreddits_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: subreddits subreddits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subreddits
    ADD CONSTRAINT subreddits_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: comments comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: subreddits subreddits_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subreddits
    ADD CONSTRAINT subreddits_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

