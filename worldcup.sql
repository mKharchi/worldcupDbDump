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
    round character varying(100) NOT NULL,
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
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES (173, 2018, 'Final', 4, 2, 239, 240);
INSERT INTO public.games VALUES (174, 2018, 'Third Place', 2, 0, 241, 242);
INSERT INTO public.games VALUES (175, 2018, 'Semi-Final', 2, 1, 240, 242);
INSERT INTO public.games VALUES (176, 2018, 'Semi-Final', 1, 0, 239, 241);
INSERT INTO public.games VALUES (177, 2018, 'Quarter-Final', 3, 2, 240, 243);
INSERT INTO public.games VALUES (178, 2018, 'Quarter-Final', 2, 0, 242, 244);
INSERT INTO public.games VALUES (179, 2018, 'Quarter-Final', 2, 1, 241, 245);
INSERT INTO public.games VALUES (180, 2018, 'Quarter-Final', 2, 0, 239, 246);
INSERT INTO public.games VALUES (181, 2018, 'Eighth-Final', 2, 1, 242, 247);
INSERT INTO public.games VALUES (182, 2018, 'Eighth-Final', 1, 0, 244, 248);
INSERT INTO public.games VALUES (183, 2018, 'Eighth-Final', 3, 2, 241, 249);
INSERT INTO public.games VALUES (184, 2018, 'Eighth-Final', 2, 0, 245, 250);
INSERT INTO public.games VALUES (185, 2018, 'Eighth-Final', 2, 1, 240, 251);
INSERT INTO public.games VALUES (186, 2018, 'Eighth-Final', 2, 1, 243, 252);
INSERT INTO public.games VALUES (187, 2018, 'Eighth-Final', 2, 1, 246, 253);
INSERT INTO public.games VALUES (188, 2018, 'Eighth-Final', 4, 3, 239, 254);
INSERT INTO public.games VALUES (189, 2014, 'Final', 1, 0, 255, 254);
INSERT INTO public.games VALUES (190, 2014, 'Third Place', 3, 0, 256, 245);
INSERT INTO public.games VALUES (191, 2014, 'Semi-Final', 1, 0, 254, 256);
INSERT INTO public.games VALUES (192, 2014, 'Semi-Final', 7, 1, 255, 245);
INSERT INTO public.games VALUES (193, 2014, 'Quarter-Final', 1, 0, 256, 257);
INSERT INTO public.games VALUES (194, 2014, 'Quarter-Final', 1, 0, 254, 241);
INSERT INTO public.games VALUES (195, 2014, 'Quarter-Final', 2, 1, 245, 247);
INSERT INTO public.games VALUES (196, 2014, 'Quarter-Final', 1, 0, 255, 239);
INSERT INTO public.games VALUES (197, 2014, 'Eighth-Final', 2, 1, 245, 258);
INSERT INTO public.games VALUES (198, 2014, 'Eighth-Final', 2, 0, 247, 246);
INSERT INTO public.games VALUES (199, 2014, 'Eighth-Final', 2, 0, 239, 259);
INSERT INTO public.games VALUES (200, 2014, 'Eighth-Final', 2, 1, 255, 260);
INSERT INTO public.games VALUES (201, 2014, 'Eighth-Final', 2, 1, 256, 250);
INSERT INTO public.games VALUES (202, 2014, 'Eighth-Final', 2, 1, 257, 261);
INSERT INTO public.games VALUES (203, 2014, 'Eighth-Final', 1, 0, 254, 248);
INSERT INTO public.games VALUES (204, 2014, 'Eighth-Final', 2, 1, 241, 262);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 239);
INSERT INTO public.teams VALUES ('Croatia', 240);
INSERT INTO public.teams VALUES ('Belgium', 241);
INSERT INTO public.teams VALUES ('England', 242);
INSERT INTO public.teams VALUES ('Russia', 243);
INSERT INTO public.teams VALUES ('Sweden', 244);
INSERT INTO public.teams VALUES ('Brazil', 245);
INSERT INTO public.teams VALUES ('Uruguay', 246);
INSERT INTO public.teams VALUES ('Colombia', 247);
INSERT INTO public.teams VALUES ('Switzerland', 248);
INSERT INTO public.teams VALUES ('Japan', 249);
INSERT INTO public.teams VALUES ('Mexico', 250);
INSERT INTO public.teams VALUES ('Denmark', 251);
INSERT INTO public.teams VALUES ('Spain', 252);
INSERT INTO public.teams VALUES ('Portugal', 253);
INSERT INTO public.teams VALUES ('Argentina', 254);
INSERT INTO public.teams VALUES ('Germany', 255);
INSERT INTO public.teams VALUES ('Netherlands', 256);
INSERT INTO public.teams VALUES ('Costa Rica', 257);
INSERT INTO public.teams VALUES ('Chile', 258);
INSERT INTO public.teams VALUES ('Nigeria', 259);
INSERT INTO public.teams VALUES ('Algeria', 260);
INSERT INTO public.teams VALUES ('Greece', 261);
INSERT INTO public.teams VALUES ('United States', 262);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 204, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 262, true);


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

