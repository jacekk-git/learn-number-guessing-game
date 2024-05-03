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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL,
    played_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 9, '2024-05-03 20:32:39.471807+00');
INSERT INTO public.games VALUES (2, 1, 9, '2024-05-03 20:36:42.398248+00');
INSERT INTO public.games VALUES (3, 2, 618, '2024-05-03 20:36:54.956782+00');
INSERT INTO public.games VALUES (4, 2, 726, '2024-05-03 20:36:55.083044+00');
INSERT INTO public.games VALUES (5, 3, 216, '2024-05-03 20:36:55.171278+00');
INSERT INTO public.games VALUES (6, 3, 446, '2024-05-03 20:36:55.271661+00');
INSERT INTO public.games VALUES (7, 2, 99, '2024-05-03 20:36:55.340808+00');
INSERT INTO public.games VALUES (8, 2, 446, '2024-05-03 20:36:55.444416+00');
INSERT INTO public.games VALUES (9, 2, 326, '2024-05-03 20:36:55.520616+00');
INSERT INTO public.games VALUES (10, 4, 819, '2024-05-03 20:40:17.568626+00');
INSERT INTO public.games VALUES (11, 4, 258, '2024-05-03 20:40:17.632823+00');
INSERT INTO public.games VALUES (12, 5, 868, '2024-05-03 20:40:17.747012+00');
INSERT INTO public.games VALUES (13, 5, 326, '2024-05-03 20:40:17.823619+00');
INSERT INTO public.games VALUES (14, 4, 668, '2024-05-03 20:40:17.910614+00');
INSERT INTO public.games VALUES (15, 4, 99, '2024-05-03 20:40:17.961093+00');
INSERT INTO public.games VALUES (16, 4, 318, '2024-05-03 20:40:18.024712+00');
INSERT INTO public.games VALUES (17, 6, 377, '2024-05-03 20:41:33.289103+00');
INSERT INTO public.games VALUES (18, 6, 839, '2024-05-03 20:41:33.386173+00');
INSERT INTO public.games VALUES (19, 7, 341, '2024-05-03 20:41:33.470147+00');
INSERT INTO public.games VALUES (20, 7, 48, '2024-05-03 20:41:33.517476+00');
INSERT INTO public.games VALUES (21, 6, 849, '2024-05-03 20:41:33.616147+00');
INSERT INTO public.games VALUES (22, 6, 808, '2024-05-03 20:41:33.70901+00');
INSERT INTO public.games VALUES (23, 6, 444, '2024-05-03 20:41:33.778991+00');
INSERT INTO public.games VALUES (24, 8, 859, '2024-05-03 20:42:35.095209+00');
INSERT INTO public.games VALUES (25, 8, 357, '2024-05-03 20:42:35.193761+00');
INSERT INTO public.games VALUES (26, 9, 885, '2024-05-03 20:42:35.341912+00');
INSERT INTO public.games VALUES (27, 9, 222, '2024-05-03 20:42:35.426977+00');
INSERT INTO public.games VALUES (28, 8, 402, '2024-05-03 20:42:35.527979+00');
INSERT INTO public.games VALUES (29, 8, 786, '2024-05-03 20:42:35.66176+00');
INSERT INTO public.games VALUES (30, 8, 436, '2024-05-03 20:42:35.774929+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jacek');
INSERT INTO public.users VALUES (2, 'user_1714768614820');
INSERT INTO public.users VALUES (3, 'user_1714768614819');
INSERT INTO public.users VALUES (4, 'user_1714768817431');
INSERT INTO public.users VALUES (5, 'user_1714768817430');
INSERT INTO public.users VALUES (6, 'user_1714768893178');
INSERT INTO public.users VALUES (7, 'user_1714768893177');
INSERT INTO public.users VALUES (8, 'user_1714768954944');
INSERT INTO public.users VALUES (9, 'user_1714768954943');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 30, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_users; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

