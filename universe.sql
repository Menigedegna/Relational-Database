--
-- PostgreSQL database dump 
-- FreeCodeCamp : CELESTIAL BODIES DB

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth integer,
    diameter integer,
    has_life boolean
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
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_life_id_seq OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    has_life boolean,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    has_life boolean,
    description text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth integer,
    diameter integer,
    galaxy_id integer NOT NULL
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
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy1', 2.3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy2', 5.6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaaxy3', 5.3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', 5.8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', 7.5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', 1.5, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (1, 'Lion', 'mammal', 1);
INSERT INTO public.life VALUES (2, 'Homo sapiens', 'mammal', 1);
INSERT INTO public.life VALUES (3, 'Cat', 'mammal', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Moon2', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Moon3', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Moon4', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Moon5', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Moon6', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Moon7', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Moon8', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Moon9', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Moon10', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Moon11', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Moon12', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Moon13', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Moon14', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Moon15', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (16, 'Moon16', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (17, 'Moon17', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (18, 'Moon18', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (19, 'Moon19', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Moon20', NULL, NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Planet2', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Planet3', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Planet4', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'Planet5', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (6, 'Planet6', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'Planet7', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (8, 'Planet8', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Planet9', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Planet10', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'Planet11', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, 'Planet12', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', 2.3, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Star2', 5.6, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Star3', 5.3, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'Star4', 5.8, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'Star5', 7.5, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (6, 'Star6', 1.5, NULL, NULL, NULL, NULL, NULL, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_life_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_name_key UNIQUE (name);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


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
-- Name: star star_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


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
-- Name: life life_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
