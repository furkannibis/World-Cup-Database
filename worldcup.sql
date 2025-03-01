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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 4, 2, 326, 327);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 2, 0, 328, 329);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 2, 1, 327, 329);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 1, 0, 326, 328);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 3, 2, 327, 330);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 2, 0, 329, 331);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 2, 1, 328, 332);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 2, 0, 326, 333);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 2, 1, 329, 334);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 1, 0, 331, 335);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 3, 2, 328, 336);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 2, 0, 332, 337);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 2, 1, 327, 338);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 2, 1, 330, 339);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 1, 333, 340);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 4, 3, 326, 341);
INSERT INTO public.games VALUES (49, 2014, 'Final', 1, 0, 342, 341);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 3, 0, 343, 332);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 1, 0, 341, 343);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 7, 1, 342, 332);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 1, 0, 343, 344);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 1, 0, 341, 328);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 2, 1, 332, 334);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 1, 0, 342, 326);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 2, 1, 332, 345);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 2, 0, 334, 333);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 0, 326, 346);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 1, 342, 347);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 2, 1, 343, 337);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 1, 344, 348);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 1, 0, 341, 335);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 1, 328, 349);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (326, 'France');
INSERT INTO public.teams VALUES (327, 'Croatia');
INSERT INTO public.teams VALUES (328, 'Belgium');
INSERT INTO public.teams VALUES (329, 'England');
INSERT INTO public.teams VALUES (330, 'Russia');
INSERT INTO public.teams VALUES (331, 'Sweden');
INSERT INTO public.teams VALUES (332, 'Brazil');
INSERT INTO public.teams VALUES (333, 'Uruguay');
INSERT INTO public.teams VALUES (334, 'Colombia');
INSERT INTO public.teams VALUES (335, 'Switzerland');
INSERT INTO public.teams VALUES (336, 'Japan');
INSERT INTO public.teams VALUES (337, 'Mexico');
INSERT INTO public.teams VALUES (338, 'Denmark');
INSERT INTO public.teams VALUES (339, 'Spain');
INSERT INTO public.teams VALUES (340, 'Portugal');
INSERT INTO public.teams VALUES (341, 'Argentina');
INSERT INTO public.teams VALUES (342, 'Germany');
INSERT INTO public.teams VALUES (343, 'Netherlands');
INSERT INTO public.teams VALUES (344, 'Costa Rica');
INSERT INTO public.teams VALUES (345, 'Chile');
INSERT INTO public.teams VALUES (346, 'Nigeria');
INSERT INTO public.teams VALUES (347, 'Algeria');
INSERT INTO public.teams VALUES (348, 'Greece');
INSERT INTO public.teams VALUES (349, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 349, true);


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

