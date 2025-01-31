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
    name character varying(20) NOT NULL,
    movement_direction character varying(10),
    shape_id integer,
    constellation character varying(50)
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
    planet_id integer,
    "position" integer,
    has_stargate boolean,
    name character varying(20) NOT NULL
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
    star_id integer,
    "position" integer,
    hitchhiker_guide_entry text,
    name character varying(25) NOT NULL,
    has_life boolean
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
-- Name: shape; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.shape (
    shape_id integer NOT NULL,
    name character varying(20) NOT NULL,
    count_of_galaxies integer
);


ALTER TABLE public.shape OWNER TO freecodecamp;

--
-- Name: shape_shape_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.shape_shape_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shape_shape_id_seq OWNER TO freecodecamp;

--
-- Name: shape_shape_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.shape_shape_id_seq OWNED BY public.shape.shape_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    class character varying(2),
    reference character varying(20),
    name character varying(20) NOT NULL,
    mass numeric(12,2),
    constellation character varying(50)
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: shape shape_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape ALTER COLUMN shape_id SET DEFAULT nextval('public.shape_shape_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Towards', 2, 'Andromeda');
INSERT INTO public.galaxy VALUES (2, 'Backward Galaxy', 'Unknown', 1, 'Centaurus');
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'Neither', 1, 'Ursa Major');
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'N/A', 2, 'Sagittarius');
INSERT INTO public.galaxy VALUES (5, 'Hoag''s Object', 'Pass', 7, 'Serpens Caput');
INSERT INTO public.galaxy VALUES (6, 'Topsy Turvy Galaxy', 'Who Cares', 4, 'Reticulum');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 4, 1, false, 'Luna');
INSERT INTO public.moon VALUES (2, 3, 1, true, 'Deimos');
INSERT INTO public.moon VALUES (3, 3, 2, false, 'Phobos');
INSERT INTO public.moon VALUES (4, 12, 1, true, 'Untitled');
INSERT INTO public.moon VALUES (5, 5, 3, false, 'Ganymede');
INSERT INTO public.moon VALUES (6, 5, 2, false, 'Europa');
INSERT INTO public.moon VALUES (7, 5, 4, true, 'Callisto');
INSERT INTO public.moon VALUES (8, 5, 1, false, 'Io');
INSERT INTO public.moon VALUES (9, 6, 2, false, 'Enceladus');
INSERT INTO public.moon VALUES (10, 6, 6, true, 'Titan');
INSERT INTO public.moon VALUES (11, 6, 1, false, 'Mimas');
INSERT INTO public.moon VALUES (12, 6, 5, true, 'Rhea');
INSERT INTO public.moon VALUES (13, 6, 10, false, 'Janus');
INSERT INTO public.moon VALUES (14, 6, 3, false, 'Tethys');
INSERT INTO public.moon VALUES (16, 7, 5, true, 'Miranda');
INSERT INTO public.moon VALUES (17, 7, 1, false, 'Ariel');
INSERT INTO public.moon VALUES (18, 7, 2, false, 'Umbriel');
INSERT INTO public.moon VALUES (19, 7, 3, false, 'Titania');
INSERT INTO public.moon VALUES (20, 7, 4, false, 'Oberon');
INSERT INTO public.moon VALUES (21, 8, 1, true, 'Triton');
INSERT INTO public.moon VALUES (15, 4, 1, false, 'Charon');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 6, 1, 'bipolar pebble', 'Mercury', false);
INSERT INTO public.planet VALUES (2, 6, 2, 'hot but tart', 'Venus', false);
INSERT INTO public.planet VALUES (3, 6, 4, 'quietly enraged', 'Mars', false);
INSERT INTO public.planet VALUES (4, 6, 3, 'mostly harmless', 'Earth', true);
INSERT INTO public.planet VALUES (5, 6, 5, 'majestic af', 'Jupiter', false);
INSERT INTO public.planet VALUES (6, 6, 6, 'this one fucks', 'Saturn', false);
INSERT INTO public.planet VALUES (7, 6, 7, 'transmasc', 'Uranus', false);
INSERT INTO public.planet VALUES (8, 6, 8, 'weather. lots of weather', 'Neptune', false);
INSERT INTO public.planet VALUES (9, 5, 4, 'continental climate', 'Beowulf', true);
INSERT INTO public.planet VALUES (10, 2, 2, 'barely terraformed', 'Manticore', true);
INSERT INTO public.planet VALUES (11, 3, 4, 'proper weather for cocoa', 'Sphinx', true);
INSERT INTO public.planet VALUES (12, 2, 2, 'false potato. do not engage', 'Hades', true);


--
-- Data for Name: shape; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.shape VALUES (1, 'Spiral', 42);
INSERT INTO public.shape VALUES (2, 'Barred Spiral', 16);
INSERT INTO public.shape VALUES (3, 'Elliptical', 6);
INSERT INTO public.shape VALUES (4, 'Irregular', 98);
INSERT INTO public.shape VALUES (5, 'Lenticular', 34);
INSERT INTO public.shape VALUES (6, 'Peculiar', 7);
INSERT INTO public.shape VALUES (7, 'Ring', 32);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 4, 'O9', 'Zeta Ophiuchi', 'none', 20.20, 'Ophiuchus');
INSERT INTO public.star VALUES (3, 4, 'B8', 'Beta Orionis', 'Rigel', 21.00, 'Orion');
INSERT INTO public.star VALUES (4, 4, 'A7', 'Alpha Aquilae', 'Altair', 1.86, 'Aquila');
INSERT INTO public.star VALUES (5, 4, 'F5', 'Alpha Canis Minoris', 'Procyon', 1.48, 'Canis Minoris');
INSERT INTO public.star VALUES (6, 4, 'M5', 'Alpha Centauri C', 'Proxima Centauri', 0.12, 'Centaurus');
INSERT INTO public.star VALUES (7, 4, 'G2', 'N/A', 'Sol', 4.83, NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: shape_shape_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.shape_shape_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: shape shape_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape
    ADD CONSTRAINT shape_name_key UNIQUE (name);


--
-- Name: shape shape_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape
    ADD CONSTRAINT shape_pkey PRIMARY KEY (shape_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_reference_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_reference_key UNIQUE (reference);


--
-- Name: galaxy galaxy_shape_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_shape_id FOREIGN KEY (shape_id) REFERENCES public.shape(shape_id);


--
-- Name: moon moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

