--
-- PostgreSQL database dump
--

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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_hole_id integer NOT NULL,
    black_hole_name character varying NOT NULL,
    galaxy_name character varying NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    threat_to_earth boolean,
    type text
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_holes.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric
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
    moon_name character varying NOT NULL,
    planet_name character varying NOT NULL,
    galaxy_name character varying NOT NULL,
    star_name character varying NOT NULL,
    description text,
    has_life boolean,
    hostile_life boolean,
    age_in_millions_of_years integer
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
    planet_name character varying NOT NULL,
    galaxy_name character varying NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    star_name character varying NOT NULL,
    hostile_life boolean
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
    galaxy_name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    star_name character varying NOT NULL
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
-- Name: black_holes black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'NGC 4459', 'Comet', NULL, 70, false, 'Quasar');
INSERT INTO public.black_holes VALUES (2, 'Sagittarius A', 'Milky Way', 'Sits at the center of the Milky Way galaxy', 200, true, 'Supermassive');
INSERT INTO public.black_holes VALUES (3, 'Fornax A', 'Cosmos Redshift 7', NULL, NULL, false, 'Quasar');
INSERT INTO public.black_holes VALUES (4, 'Messier 32', 'Malin 1', 'Also known as M32', NULL, false, 'Supermassive');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our galaxy', true, 13600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, false, 10000);
INSERT INTO public.galaxy VALUES (3, 'Malin 1', 'It is located 1.19 billion light-years away from the Milky Way', false, 15800);
INSERT INTO public.galaxy VALUES (4, 'Comet', 'In the shape of a comet', false, 9800);
INSERT INTO public.galaxy VALUES (5, 'Cosmos Redshift 7', NULL, true, 16750);
INSERT INTO public.galaxy VALUES (6, 'Fireworks', 'Forms the shape of fireworks', false, 12330);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 'Milky Way', 'Sol', 'This is our moon', false, false, 3800);
INSERT INTO public.moon VALUES (2, 'Triton', 'Naptune', 'Milky Way', 'Sol', 'Triton is the largest natural satellite of the planet Neptune', true, false, 4250);
INSERT INTO public.moon VALUES (3, 'Nereid', 'Neptune', 'Milky Way', 'Sol', NULL, NULL, NULL, 3780);
INSERT INTO public.moon VALUES (4, 'Luna', 'PA-99-N2', 'Andromeda', 'Gamma Centauri', NULL, NULL, NULL, 3465);
INSERT INTO public.moon VALUES (5, 'Phobos', 'Titus', 'Malin 1', 'Merlin', 'A relatively brown in colour surface', false, false, 2180);
INSERT INTO public.moon VALUES (6, 'Europa', 'Ero', 'Fireworks', 'Corvus', NULL, true, true, 1200);
INSERT INTO public.moon VALUES (7, 'Himalia', 'Stalaris', 'Comet', 'Kyra', NULL, false, false, 960);
INSERT INTO public.moon VALUES (8, 'Deimos', 'Ero', 'Fireworks', 'Corvus', 'Grey in colour', false, false, 160);
INSERT INTO public.moon VALUES (9, 'Metis', 'Jupiter', 'Milky Way', 'Sol', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Atlas', 'Calypso', 'Andromeda', 'Gamma Centauri', NULL, true, true, 691);
INSERT INTO public.moon VALUES (11, 'Tarvos', 'Stalaris', 'Comet', 'Kyra', NULL, NULL, NULL, 985);
INSERT INTO public.moon VALUES (12, 'Despina', 'Neptune', 'Milky Way', 'Sol', NULL, false, false, 3960);
INSERT INTO public.moon VALUES (13, 'Neso', 'Neptune', 'Milky Way', 'Sol', NULL, false, false, 3550);
INSERT INTO public.moon VALUES (15, 'Chaldene', 'Neptune', 'Milky Way', 'Sol', NULL, false, false, 2850);
INSERT INTO public.moon VALUES (16, 'Aoede', 'Yavin', 'Cosmos Redshift 7', 'Serpens', 'No imagery available', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Adrastea', 'Titus', 'Malin 1', 'Merlin', NULL, NULL, NULL, 1250);
INSERT INTO public.moon VALUES (18, 'Rhea', 'Stalaris', 'Comet', 'Kyra', 'Roughly the same size as our moon', false, false, 680);
INSERT INTO public.moon VALUES (19, 'Janus', 'NI-22-UZ', 'Cosmos Redshift 7', 'Serpens', NULL, false, false, 1370);
INSERT INTO public.moon VALUES (20, 'Lysithea', 'JH-89-BY', 'Fireworks', 'Corvus', NULL, false, false, 870);
INSERT INTO public.moon VALUES (21, 'Pandia', 'JH-89-BY', 'Fireworks', 'Corvus', NULL, true, false, 911);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', 'Milky Way', 'Our home', true, 4400, 'Sol', false);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Milky Way', 'The most distant planet in our galaxy', NULL, 4550, 'Sol', NULL);
INSERT INTO public.planet VALUES (6, 'Titus', 'Malin 1', NULL, true, 2500, 'Merlin', true);
INSERT INTO public.planet VALUES (7, 'Stalaris', 'Comet', 'Majority ocean with islands', true, 1100, 'Kyra', false);
INSERT INTO public.planet VALUES (10, 'Mars', 'Milky Way', 'Our closest neighour', NULL, 4430, 'Sol', NULL);
INSERT INTO public.planet VALUES (11, 'Ero', 'Fireworks', NULL, true, 1670, 'Corvus', true);
INSERT INTO public.planet VALUES (12, 'Calypso', 'Andromeda', NULL, false, 720, 'Gamma Centauri', false);
INSERT INTO public.planet VALUES (13, 'Jupiter', 'Milky Way', 'Largest planet in the Milky Way', false, 4430, 'Sol', false);
INSERT INTO public.planet VALUES (14, 'JH-89-BY', 'Fireworks', NULL, NULL, 1100, 'Corvus', NULL);
INSERT INTO public.planet VALUES (15, 'Yavin', 'Cosmos Redshift 7', 'Large forests', true, 678, 'Serpens', false);
INSERT INTO public.planet VALUES (16, 'PA-99-N2', 'Andromeda', 'Strong candidate planet for life', NULL, 3820, 'Gamma Centauri', NULL);
INSERT INTO public.planet VALUES (9, 'NI-22-UZ', 'Cosmos Redshift 7', 'Majority ocean with islands', true, 1780, 'Serpens', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Milky Way', 'This is our sun', 4600, 'Sol');
INSERT INTO public.star VALUES (2, 'Andromeda', NULL, 6200, 'Gamma Centauri');
INSERT INTO public.star VALUES (3, 'Malin 1', 'The oldest star we have on file', 12655, 'Merlin');
INSERT INTO public.star VALUES (4, 'Comet', 'The youngest star we have on file', 2305, 'Kyra');
INSERT INTO public.star VALUES (5, 'Cosmos Redshift 7', NULL, 11254, 'Serpens');
INSERT INTO public.star VALUES (6, 'Fireworks', NULL, 7110, 'Corvus');


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_holes black_holes_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


--
-- Name: planet fk_galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: star fk_galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon fk_galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: black_holes fk_galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT fk_galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: planet fk_star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_name FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: moon fk_star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_star_name FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- PostgreSQL database dump complete
--

