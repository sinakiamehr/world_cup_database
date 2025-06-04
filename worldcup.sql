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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (131, 168, 169, 2, 4, 2018, 'Final');
INSERT INTO public.games VALUES (132, 170, 171, 0, 2, 2018, 'Third Place');
INSERT INTO public.games VALUES (133, 169, 171, 1, 2, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (134, 168, 170, 0, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (135, 169, 172, 2, 3, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (136, 171, 173, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (137, 170, 174, 1, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (138, 168, 175, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (139, 171, 176, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (140, 173, 177, 0, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (141, 170, 178, 2, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (142, 174, 179, 0, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (143, 169, 180, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (144, 172, 181, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (145, 175, 182, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (146, 168, 183, 3, 4, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (147, 184, 183, 0, 1, 2014, 'Final');
INSERT INTO public.games VALUES (148, 185, 174, 0, 3, 2014, 'Third Place');
INSERT INTO public.games VALUES (149, 183, 185, 0, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (150, 184, 174, 1, 7, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (151, 185, 186, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (152, 183, 170, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (153, 174, 176, 1, 2, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (154, 184, 168, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (155, 174, 187, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (156, 176, 175, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (157, 168, 188, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (158, 184, 189, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (159, 185, 179, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (160, 186, 190, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (161, 183, 177, 0, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (162, 170, 191, 1, 2, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (168, 'France');
INSERT INTO public.teams VALUES (169, 'Croatia');
INSERT INTO public.teams VALUES (170, 'Belgium');
INSERT INTO public.teams VALUES (171, 'England');
INSERT INTO public.teams VALUES (172, 'Russia');
INSERT INTO public.teams VALUES (173, 'Sweden');
INSERT INTO public.teams VALUES (174, 'Brazil');
INSERT INTO public.teams VALUES (175, 'Uruguay');
INSERT INTO public.teams VALUES (176, 'Colombia');
INSERT INTO public.teams VALUES (177, 'Switzerland');
INSERT INTO public.teams VALUES (178, 'Japan');
INSERT INTO public.teams VALUES (179, 'Mexico');
INSERT INTO public.teams VALUES (180, 'Denmark');
INSERT INTO public.teams VALUES (181, 'Spain');
INSERT INTO public.teams VALUES (182, 'Portugal');
INSERT INTO public.teams VALUES (183, 'Argentina');
INSERT INTO public.teams VALUES (184, 'Germany');
INSERT INTO public.teams VALUES (185, 'Netherlands');
INSERT INTO public.teams VALUES (186, 'Costa Rica');
INSERT INTO public.teams VALUES (187, 'Chile');
INSERT INTO public.teams VALUES (188, 'Nigeria');
INSERT INTO public.teams VALUES (189, 'Algeria');
INSERT INTO public.teams VALUES (190, 'Greece');
INSERT INTO public.teams VALUES (191, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 162, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 191, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

