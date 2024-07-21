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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 935, 16);
INSERT INTO public.games VALUES (2, 87, 16);
INSERT INTO public.games VALUES (3, 324, 17);
INSERT INTO public.games VALUES (4, 773, 17);
INSERT INTO public.games VALUES (5, 306, 16);
INSERT INTO public.games VALUES (6, 450, 16);
INSERT INTO public.games VALUES (7, 32, 16);
INSERT INTO public.games VALUES (8, 640, 18);
INSERT INTO public.games VALUES (9, 978, 18);
INSERT INTO public.games VALUES (10, 141, 19);
INSERT INTO public.games VALUES (11, 293, 19);
INSERT INTO public.games VALUES (12, 682, 18);
INSERT INTO public.games VALUES (13, 353, 18);
INSERT INTO public.games VALUES (14, 718, 18);
INSERT INTO public.games VALUES (15, 935, 20);
INSERT INTO public.games VALUES (16, 841, 20);
INSERT INTO public.games VALUES (17, 68, 21);
INSERT INTO public.games VALUES (18, 557, 21);
INSERT INTO public.games VALUES (19, 311, 20);
INSERT INTO public.games VALUES (20, 672, 20);
INSERT INTO public.games VALUES (21, 263, 20);
INSERT INTO public.games VALUES (22, 560, 22);
INSERT INTO public.games VALUES (23, 763, 22);
INSERT INTO public.games VALUES (24, 900, 23);
INSERT INTO public.games VALUES (25, 414, 23);
INSERT INTO public.games VALUES (26, 67, 22);
INSERT INTO public.games VALUES (27, 203, 22);
INSERT INTO public.games VALUES (28, 330, 22);
INSERT INTO public.games VALUES (29, 472, 24);
INSERT INTO public.games VALUES (30, 477, 24);
INSERT INTO public.games VALUES (31, 718, 25);
INSERT INTO public.games VALUES (32, 904, 25);
INSERT INTO public.games VALUES (33, 7, 24);
INSERT INTO public.games VALUES (34, 686, 24);
INSERT INTO public.games VALUES (35, 170, 24);
INSERT INTO public.games VALUES (36, 457, 26);
INSERT INTO public.games VALUES (37, 955, 26);
INSERT INTO public.games VALUES (38, 85, 27);
INSERT INTO public.games VALUES (39, 977, 27);
INSERT INTO public.games VALUES (40, 101, 26);
INSERT INTO public.games VALUES (41, 841, 26);
INSERT INTO public.games VALUES (42, 84, 26);
INSERT INTO public.games VALUES (43, 466, 28);
INSERT INTO public.games VALUES (44, 523, 28);
INSERT INTO public.games VALUES (45, 689, 29);
INSERT INTO public.games VALUES (46, 805, 29);
INSERT INTO public.games VALUES (47, 446, 28);
INSERT INTO public.games VALUES (48, 473, 28);
INSERT INTO public.games VALUES (49, 443, 28);
INSERT INTO public.games VALUES (50, 219, 30);
INSERT INTO public.games VALUES (51, 684, 30);
INSERT INTO public.games VALUES (52, 629, 31);
INSERT INTO public.games VALUES (53, 124, 31);
INSERT INTO public.games VALUES (54, 376, 30);
INSERT INTO public.games VALUES (55, 722, 30);
INSERT INTO public.games VALUES (56, 801, 30);
INSERT INTO public.games VALUES (57, 639, 32);
INSERT INTO public.games VALUES (58, 526, 32);
INSERT INTO public.games VALUES (59, 747, 33);
INSERT INTO public.games VALUES (60, 681, 33);
INSERT INTO public.games VALUES (61, 426, 32);
INSERT INTO public.games VALUES (62, 139, 32);
INSERT INTO public.games VALUES (63, 252, 32);
INSERT INTO public.games VALUES (64, 477, 34);
INSERT INTO public.games VALUES (65, 620, 34);
INSERT INTO public.games VALUES (66, 130, 35);
INSERT INTO public.games VALUES (67, 218, 35);
INSERT INTO public.games VALUES (68, 145, 34);
INSERT INTO public.games VALUES (69, 999, 34);
INSERT INTO public.games VALUES (70, 221, 34);
INSERT INTO public.games VALUES (71, 161, 36);
INSERT INTO public.games VALUES (72, 690, 36);
INSERT INTO public.games VALUES (73, 35, 37);
INSERT INTO public.games VALUES (74, 998, 37);
INSERT INTO public.games VALUES (75, 988, 36);
INSERT INTO public.games VALUES (76, 201, 36);
INSERT INTO public.games VALUES (77, 779, 36);
INSERT INTO public.games VALUES (78, 148, 38);
INSERT INTO public.games VALUES (79, 705, 38);
INSERT INTO public.games VALUES (80, 440, 39);
INSERT INTO public.games VALUES (81, 660, 39);
INSERT INTO public.games VALUES (82, 264, 38);
INSERT INTO public.games VALUES (83, 259, 38);
INSERT INTO public.games VALUES (84, 115, 38);
INSERT INTO public.games VALUES (85, 819, 40);
INSERT INTO public.games VALUES (86, 98, 40);
INSERT INTO public.games VALUES (87, 770, 41);
INSERT INTO public.games VALUES (88, 951, 41);
INSERT INTO public.games VALUES (89, 142, 40);
INSERT INTO public.games VALUES (90, 490, 40);
INSERT INTO public.games VALUES (91, 761, 40);
INSERT INTO public.games VALUES (92, 10, 42);
INSERT INTO public.games VALUES (93, 509, 46);
INSERT INTO public.games VALUES (94, 538, 46);
INSERT INTO public.games VALUES (95, 751, 47);
INSERT INTO public.games VALUES (96, 831, 47);
INSERT INTO public.games VALUES (97, 225, 46);
INSERT INTO public.games VALUES (98, 694, 46);
INSERT INTO public.games VALUES (99, 279, 46);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'mar');
INSERT INTO public.users VALUES (2, 'user_1721549589834');
INSERT INTO public.users VALUES (3, 'user_1721549589833');
INSERT INTO public.users VALUES (4, 'user_1721549783295');
INSERT INTO public.users VALUES (5, 'user_1721549783294');
INSERT INTO public.users VALUES (6, 'user_1721549813039');
INSERT INTO public.users VALUES (7, 'user_1721549813038');
INSERT INTO public.users VALUES (8, 'user_1721549837707');
INSERT INTO public.users VALUES (9, 'user_1721549837706');
INSERT INTO public.users VALUES (10, 'user_1721550296059');
INSERT INTO public.users VALUES (11, 'user_1721550296058');
INSERT INTO public.users VALUES (12, 'user_1721550326839');
INSERT INTO public.users VALUES (13, 'user_1721550326838');
INSERT INTO public.users VALUES (14, 'user_1721550544398');
INSERT INTO public.users VALUES (15, 'user_1721550544397');
INSERT INTO public.users VALUES (16, 'user_1721550566521');
INSERT INTO public.users VALUES (17, 'user_1721550566520');
INSERT INTO public.users VALUES (18, 'user_1721550635414');
INSERT INTO public.users VALUES (19, 'user_1721550635413');
INSERT INTO public.users VALUES (20, 'user_1721551129225');
INSERT INTO public.users VALUES (21, 'user_1721551129224');
INSERT INTO public.users VALUES (22, 'user_1721551390383');
INSERT INTO public.users VALUES (23, 'user_1721551390382');
INSERT INTO public.users VALUES (24, 'user_1721551571405');
INSERT INTO public.users VALUES (25, 'user_1721551571404');
INSERT INTO public.users VALUES (26, 'user_1721551632262');
INSERT INTO public.users VALUES (27, 'user_1721551632261');
INSERT INTO public.users VALUES (28, 'user_1721551635096');
INSERT INTO public.users VALUES (29, 'user_1721551635095');
INSERT INTO public.users VALUES (30, 'user_1721551671414');
INSERT INTO public.users VALUES (31, 'user_1721551671413');
INSERT INTO public.users VALUES (32, 'user_1721552088793');
INSERT INTO public.users VALUES (33, 'user_1721552088792');
INSERT INTO public.users VALUES (34, 'user_1721552343649');
INSERT INTO public.users VALUES (35, 'user_1721552343648');
INSERT INTO public.users VALUES (36, 'user_1721552393227');
INSERT INTO public.users VALUES (37, 'user_1721552393226');
INSERT INTO public.users VALUES (38, 'user_1721552529975');
INSERT INTO public.users VALUES (39, 'user_1721552529974');
INSERT INTO public.users VALUES (40, 'user_1721552626392');
INSERT INTO public.users VALUES (41, 'user_1721552626391');
INSERT INTO public.users VALUES (42, 'km');
INSERT INTO public.users VALUES (43, 'user_1721553315294');
INSERT INTO public.users VALUES (44, 'user_1721553315293');
INSERT INTO public.users VALUES (45, 'df');
INSERT INTO public.users VALUES (46, 'user_1721553397884');
INSERT INTO public.users VALUES (47, 'user_1721553397883');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 99, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 47, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

