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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying NOT NULL,
    gravity integer,
    galaxy_id integer,
    wormhole boolean
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    isspiral boolean,
    ispartoflocalgroup boolean,
    distancelightyears integer NOT NULL,
    numberofstars_bn integer,
    test text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    is_tidally_locked boolean,
    has_atmosphere boolean,
    diameter_km integer,
    orbital_period_days integer,
    test text,
    planet_id integer
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
    name character varying NOT NULL,
    has_life boolean,
    has_rings boolean,
    radius_km integer,
    distance_from_sun_tm integer,
    mass_earth_units integer,
    test text,
    star_id integer
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
    name character varying NOT NULL,
    in_habitable_zone boolean,
    is_binary boolean,
    luminosity numeric,
    temperature integer,
    age_million_yrs integer,
    galaxy_id integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'a', 1, 1, false);
INSERT INTO public.blackhole VALUES (2, 'b', 2, 2, false);
INSERT INTO public.blackhole VALUES (3, 'c', 3, 3, false);
INSERT INTO public.blackhole VALUES (4, 'd', 4, 4, false);
INSERT INTO public.blackhole VALUES (5, 'e', 5, 5, false);
INSERT INTO public.blackhole VALUES (6, 'f', 6, 6, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, true, 0, 400, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, true, 2537000, 1000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', true, true, 2730000, 40, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', true, false, 23000000, 100, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, false, 31100000, 800, NULL);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', false, true, 163000, 30, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, false, 3474, 27, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', true, false, 22, 0, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', true, false, 12, 1, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', true, false, 5268, 7, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Europa', true, false, 3121, 4, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', true, false, 4820, 17, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Io', true, true, 3643, 2, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Titan', true, true, 5149, 16, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, true, 504, 1, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Mimas', true, false, 396, 1, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Tethys', true, false, 1066, 2, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Iapetus', true, false, 1469, 79, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Triton', true, true, 2706, 6, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Oberon', true, false, 1523, 13, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Titania', true, false, 1578, 9, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Charon', true, false, 1212, 6, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Nix', false, false, 50, 25, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Hydra', false, false, 51, 38, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Kepler-452b I', true, false, 714, 120, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Gliese 581g I', true, false, 856, 130, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, false, 6371, 150, 1, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, false, 3389, 228, 0, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', false, true, 69911, 778, 318, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Saturn', false, true, 58232, 1427, 95, NULL, 4);
INSERT INTO public.planet VALUES (5, 'Venus', false, false, 6051, 108, 1, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Mercury', false, false, 2439, 58, 0, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Neptune', false, true, 24622, 4495, 17, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', false, true, 25362, 2873, 15, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', false, false, 1188, 5906, 0, NULL, 3);
INSERT INTO public.planet VALUES (10, 'Proxima b', false, false, 7165, 40200000, 1, NULL, 4);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', false, false, 10108, 1402000, 5, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', false, false, 8660, 20070000, 3, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, false, 1, 5778, 4600, 1);
INSERT INTO public.star VALUES (2, 'Proxima', true, false, 0.0017, 3042, 4500, 2);
INSERT INTO public.star VALUES (3, 'Sirius', true, true, 25.4, 9940, 242, 3);
INSERT INTO public.star VALUES (4, 'Rigel', false, false, 120000, 11000, 8, 4);
INSERT INTO public.star VALUES (5, 'Betelgeuse', false, false, 126000, 3500, 10000, 5);
INSERT INTO public.star VALUES (6, 'Alpha Centauri', true, true, 1.519, 5790, 5200, 6);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

