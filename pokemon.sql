--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Trainers; Type: TABLE; Schema: public; Owner: robika
--

CREATE TABLE public."Trainers" (
    id integer NOT NULL,
    "Name" character varying,
    "isGymLeader" boolean,
    "pokemonSlot1" integer,
    "pokemonSlot2" integer,
    "pokemonSlot3" integer,
    "pokemonSlot4" integer,
    "pokemonSlot5" integer,
    "pokemonSlot6" integer
);


ALTER TABLE public."Trainers" OWNER TO robika;

--
-- Name: people; Type: TABLE; Schema: public; Owner: robika
--

CREATE TABLE public.people (
    name character varying,
    points integer,
    gender character(1),
    cohort_start_date date,
    graduated boolean
);


ALTER TABLE public.people OWNER TO robika;

--
-- Name: pokemon; Type: TABLE; Schema: public; Owner: robika
--

CREATE TABLE public.pokemon (
    id integer,
    name character varying,
    type character varying,
    evolves_from_id integer
);


ALTER TABLE public.pokemon OWNER TO robika;

--
-- Data for Name: Trainers; Type: TABLE DATA; Schema: public; Owner: robika
--

COPY public."Trainers" (id, "Name", "isGymLeader", "pokemonSlot1", "pokemonSlot2", "pokemonSlot3", "pokemonSlot4", "pokemonSlot5", "pokemonSlot6") FROM stdin;
1	Ash	f	1	10	\N	\N	\N	\N
2	Misty	t	7	\N	\N	\N	\N	\N
3	Brock	t	3	6	9	\N	\N	\N
4	Axle	t	2	4	8	\N	\N	\N
5	Moxie	f	1	\N	9	9	9	9
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: robika
--

COPY public.people (name, points, gender, cohort_start_date, graduated) FROM stdin;
Adam	200	M	2018-09-14	t
Sam	100	M	2018-09-14	t
Alex	150	M	2018-09-14	t
Robel	50	M	2018-09-14	f
\.


--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: robika
--

COPY public.pokemon (id, name, type, evolves_from_id) FROM stdin;
1	Bulbasaur	Grass	\N
2	Ivysaur	Grass	1
3	Venusaur	Grass	2
4	Charmander	Fire	\N
5	Charmeleon	Fire	4
6	Charizard	Fire	5
7	Squirtle	Water	\N
8	Wartortle	Water	7
9	Blastoise	Water	8
10	Caterpie	Bug	\N
11	Metapod	Bug	10
12	Butterfree	Bug	11
\.


--
-- Name: Trainers """"; Type: CONSTRAINT; Schema: public; Owner: robika
--

ALTER TABLE ONLY public."Trainers"
    ADD CONSTRAINT """""""""" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

