--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    nebula_id integer,
    diameter_lightyears integer,
    rank_favorite integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    mass_tons numeric,
    rotation_days integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying NOT NULL,
    nickname text
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    mass_tons numeric,
    orbit_days integer,
    gaseous boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    age_megaannus integer,
    neutron_star boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G_ONE', 3, 1000000, 4);
INSERT INTO public.galaxy VALUES (2, 'G_TWO', 1, 26000000, 2);
INSERT INTO public.galaxy VALUES (3, 'G_THREE', 2, 37500, 5);
INSERT INTO public.galaxy VALUES (4, 'G_FOUR', 2, 806000, 6);
INSERT INTO public.galaxy VALUES (5, 'G_FIVE', 3, 72400000, 1);
INSERT INTO public.galaxy VALUES (6, 'G_SIX', 1, 45600, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M_ONE', 9, 487, 94);
INSERT INTO public.moon VALUES (2, 'M_TWO', 2, 847, 54);
INSERT INTO public.moon VALUES (3, 'M_THREE', 11, 649, 21);
INSERT INTO public.moon VALUES (4, 'M_FOUR', 3, 774, 53);
INSERT INTO public.moon VALUES (5, 'M_FIVE', 6, 148, 37);
INSERT INTO public.moon VALUES (6, 'M_SIX', 7, 228, 16);
INSERT INTO public.moon VALUES (7, 'M_SEVEN', 12, 467, 45);
INSERT INTO public.moon VALUES (8, 'M_EIGHT', 10, 774, 68);
INSERT INTO public.moon VALUES (9, 'M_NINE', 2, 827, 83);
INSERT INTO public.moon VALUES (10, 'M_TEN', 7, 733, 44);
INSERT INTO public.moon VALUES (11, 'M_ELEVEN', 11, 646, 22);
INSERT INTO public.moon VALUES (12, 'M_TWELVE', 2, 774, 64);
INSERT INTO public.moon VALUES (13, 'M_THIRTEEN', 8, 226, 51);
INSERT INTO public.moon VALUES (14, 'M_FOURTEEN', 1, 951, 55);
INSERT INTO public.moon VALUES (15, 'M_FIFTEEN', 6, 221, 31);
INSERT INTO public.moon VALUES (16, 'M_SIXTEEN', 5, 996, 30);
INSERT INTO public.moon VALUES (17, 'M_SEVENTEEN', 9, 113, 46);
INSERT INTO public.moon VALUES (18, 'M_EIGHTEEN', 12, 778, 11);
INSERT INTO public.moon VALUES (19, 'M_NINETEEN', 3, 184, 67);
INSERT INTO public.moon VALUES (20, 'M_TWENTY', 4, 555, 27);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'N_ONE', 'First');
INSERT INTO public.nebula VALUES (2, 'N_TWO', 'Second');
INSERT INTO public.nebula VALUES (3, 'N_THREE', 'Third');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P_ONE', 6, 34584, 756, true);
INSERT INTO public.planet VALUES (3, 'P_THREE', 2, 59787, 294, true);
INSERT INTO public.planet VALUES (5, 'P_FIVE', 3, 14432, 685, true);
INSERT INTO public.planet VALUES (7, 'P_SEVEN', 1, 45984, 516, true);
INSERT INTO public.planet VALUES (9, 'P_NINE', 6, 44662, 764, true);
INSERT INTO public.planet VALUES (11, 'P_ELEVEN', 3, 52297, 85, true);
INSERT INTO public.planet VALUES (12, 'P_TWELVE', 4, 66479, 551, true);
INSERT INTO public.planet VALUES (2, 'P_TWO', 2, 48561, 318, false);
INSERT INTO public.planet VALUES (4, 'P_FOUR', 5, 67498, 488, false);
INSERT INTO public.planet VALUES (6, 'P_SIX', 5, 26884, 119, false);
INSERT INTO public.planet VALUES (8, 'P_EIGHT', 4, 64877, 227, false);
INSERT INTO public.planet VALUES (10, 'P_TEN', 1, 97443, 668, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S_ONE', 5, 2000, true);
INSERT INTO public.star VALUES (2, 'S_TWO', 2, 6610, false);
INSERT INTO public.star VALUES (3, 'S_THREE', 1, 8164, false);
INSERT INTO public.star VALUES (4, 'S_FOUR', 6, 1685, false);
INSERT INTO public.star VALUES (5, 'S_FIVE', 3, 4136, false);
INSERT INTO public.star VALUES (6, 'S_SIX', 4, 8441, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_rank_favorite_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_rank_favorite_key UNIQUE (rank_favorite);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebula nebula_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_nickname_key UNIQUE (nickname);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_nebula_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nebula_id_fkey FOREIGN KEY (nebula_id) REFERENCES public.nebula(nebula_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

