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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_range numeric NOT NULL,
    galaxy_story text,
    galaxy_type character varying(20)
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
    name character varying(30) NOT NULL,
    moon_light boolean NOT NULL,
    moon_age numeric,
    light_length integer,
    moon_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    planet_light boolean NOT NULL,
    planet_story text,
    planet_age numeric
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
    galaxy_id integer NOT NULL,
    star_range numeric NOT NULL,
    star_story text
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
-- Name: universe_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe_info (
    moon_id integer NOT NULL,
    star_id numeric,
    happy boolean,
    universe_info_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.universe_info OWNER TO freecodecamp;

--
-- Name: universe_info_universe_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_info_universe_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_info_universe_info_id_seq OWNER TO freecodecamp;

--
-- Name: universe_info_universe_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_info_universe_info_id_seq OWNED BY public.universe_info.universe_info_id;


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
-- Name: universe_info universe_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_info ALTER COLUMN universe_info_id SET DEFAULT nextval('public.universe_info_universe_info_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxyOne', 20, 'galaxy one has a story', 'star');
INSERT INTO public.galaxy VALUES (2, 'galaxyTwo', 30, 'galaxy two has a story', 'sun');
INSERT INTO public.galaxy VALUES (3, 'galaxyTHree', 20, 'galaxy three story', 'moon');
INSERT INTO public.galaxy VALUES (4, 'galaxyFour', 40, NULL, 'stone');
INSERT INTO public.galaxy VALUES (5, 'galaxyFive', 50, 'no story', 'moon');
INSERT INTO public.galaxy VALUES (6, 'galaxySix', 60, 'sixth sotry', 'sun');
INSERT INTO public.galaxy VALUES (7, 'galaxyseven', 70, NULL, 'moon');
INSERT INTO public.galaxy VALUES (8, 'galaxyeight', 80, NULL, 'soon');
INSERT INTO public.galaxy VALUES (9, 'galaxynine', 29, NULL, 'now');
INSERT INTO public.galaxy VALUES (10, 'galaxyten', 10, NULL, 'star');
INSERT INTO public.galaxy VALUES (15, 'galaxyeleven', 110, NULL, 'moon');
INSERT INTO public.galaxy VALUES (16, 'galaxytwelve', 12, NULL, 'star');
INSERT INTO public.galaxy VALUES (17, 'galaxyfourteen', 13, NULL, 'stone');
INSERT INTO public.galaxy VALUES (18, 'galaxythirteen', 120, NULL, 'sun');
INSERT INTO public.galaxy VALUES (19, 'galaxyfourthy', 40, NULL, 'stone');
INSERT INTO public.galaxy VALUES (20, 'galaxytwentey', 10, 'the last galaxy for the world', 'moon');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('onemoon', true, 10, 10, 1, 1);
INSERT INTO public.moon VALUES ('twomoon', true, 12, 11, 3, 25);
INSERT INTO public.moon VALUES ('threemoon', true, 12, 11, 4, 24);
INSERT INTO public.moon VALUES ('fourmoon', false, 13, 12, 5, 26);
INSERT INTO public.moon VALUES ('fivemoon', true, 14, 12, 6, 33);
INSERT INTO public.moon VALUES ('sixmoon', false, 10, 22, 7, 25);
INSERT INTO public.moon VALUES ('sevenmoon', false, 11, 22, 8, 33);
INSERT INTO public.moon VALUES ('eightmoon', false, 11, 21, 9, 34);
INSERT INTO public.moon VALUES ('ninemoon', false, 11, 21, 10, 33);
INSERT INTO public.moon VALUES ('tenmoon', false, 11, 21, 11, 33);
INSERT INTO public.moon VALUES ('eleven', true, 31, 31, 12, 26);
INSERT INTO public.moon VALUES ('twelve', true, 31, 31, 13, 27);
INSERT INTO public.moon VALUES ('thirteen', true, 21, 34, 14, 28);
INSERT INTO public.moon VALUES ('fourteen', false, 21, 34, 17, 26);
INSERT INTO public.moon VALUES ('fiftheen', true, 23, 22, 18, 30);
INSERT INTO public.moon VALUES ('sixteen', false, 21, 34, 19, 33);
INSERT INTO public.moon VALUES ('seventeen', true, 23, 22, 20, 33);
INSERT INTO public.moon VALUES ('nineteen', false, 21, 34, 21, 33);
INSERT INTO public.moon VALUES ('eightteen', true, 23, 22, 22, 34);
INSERT INTO public.moon VALUES ('twenty moon', false, 10, 11, 25, 33);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'oneplanet', 1, true, 'no story', 10);
INSERT INTO public.planet VALUES (24, 'twoplanet', 2, true, 'story tells', 12);
INSERT INTO public.planet VALUES (25, 'threeplanet', 3, false, 'story tells', 14);
INSERT INTO public.planet VALUES (26, 'fourplanet', 4, false, 'story tells', 15);
INSERT INTO public.planet VALUES (27, 'fiveplanet', 5, true, 'story no', 10);
INSERT INTO public.planet VALUES (28, 'sixplanet', 6, false, NULL, 20);
INSERT INTO public.planet VALUES (30, 'planetseven', 2, true, NULL, 22);
INSERT INTO public.planet VALUES (31, 'planeteight', 3, true, NULL, 23);
INSERT INTO public.planet VALUES (32, 'planetnine', 4, true, NULL, 90);
INSERT INTO public.planet VALUES (33, 'planet ten', 5, true, NULL, 10);
INSERT INTO public.planet VALUES (34, 'planet eleven', 6, false, NULL, 12);
INSERT INTO public.planet VALUES (35, 'planet twelve', 3, false, NULL, 30);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sparkling', 1, 10, 'this is not a story');
INSERT INTO public.star VALUES (2, 'shiningtwo', 2, 20, 'this is not a story');
INSERT INTO public.star VALUES (3, 'sparklingthree', 3, 30, 'story three');
INSERT INTO public.star VALUES (4, 'shiningthree', 4, 40, 'string story');
INSERT INTO public.star VALUES (5, 'shingfour', 5, 50, 'story is story');
INSERT INTO public.star VALUES (6, 'singingstar', 6, 60, NULL);


--
-- Data for Name: universe_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe_info VALUES (1, 6, true, 1, 'one');
INSERT INTO public.universe_info VALUES (2, 6, true, 2, 'two');
INSERT INTO public.universe_info VALUES (3, 5, false, 3, 'three');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 35, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: universe_info_universe_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_info_universe_info_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


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
-- Name: universe_info universe_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_info
    ADD CONSTRAINT universe_info_name_key UNIQUE (name);


--
-- Name: universe_info universe_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_info
    ADD CONSTRAINT universe_info_pkey PRIMARY KEY (universe_info_id);


--
-- Name: moon fl_planet_id_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fl_planet_id_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

