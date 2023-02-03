--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16 (Debian 11.16-0+deb10u1)
-- Dumped by pg_dump version 14.2

-- Started on 2023-02-03 12:42:35

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

DROP DATABASE cd11;
--
-- TOC entry 3055 (class 1262 OID 16405)
-- Name: cd11; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cd11 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


\connect cd11

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 199 (class 1259 OID 54032)
-- Name: band; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.band (
    band_id integer NOT NULL,
    band_name character varying(75) NOT NULL,
    band_info character varying(500),
    band_instagram character varying(150),
    band_facebook character varying(150),
    band_youtube character varying(150),
    band_creation_date date NOT NULL
);


--
-- TOC entry 198 (class 1259 OID 54030)
-- Name: band_band_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.band_band_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 198
-- Name: band_band_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.band_band_id_seq OWNED BY public.band.band_id;


--
-- TOC entry 215 (class 1259 OID 54194)
-- Name: band_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.band_category (
    band_category_id integer NOT NULL,
    band_id integer,
    category_id integer
);


--
-- TOC entry 214 (class 1259 OID 54192)
-- Name: band_category_band_song_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.band_category_band_song_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 214
-- Name: band_category_band_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.band_category_band_song_id_seq OWNED BY public.band_category.band_category_id;


--
-- TOC entry 203 (class 1259 OID 54061)
-- Name: band_comment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.band_comment (
    comment_id integer NOT NULL,
    band_id integer,
    comment_body character varying(250) NOT NULL,
    comment_alias character varying(50)
);


--
-- TOC entry 202 (class 1259 OID 54059)
-- Name: band_comment_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.band_comment_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 202
-- Name: band_comment_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.band_comment_comment_id_seq OWNED BY public.band_comment.comment_id;


--
-- TOC entry 211 (class 1259 OID 54108)
-- Name: band_event; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.band_event (
    band_event_id integer NOT NULL,
    band_id integer,
    event_id integer
);


--
-- TOC entry 210 (class 1259 OID 54106)
-- Name: band_event_band_event_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.band_event_band_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 210
-- Name: band_event_band_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.band_event_band_event_id_seq OWNED BY public.band_event.band_event_id;


--
-- TOC entry 207 (class 1259 OID 54082)
-- Name: band_song; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.band_song (
    band_song_id integer NOT NULL,
    band_id integer,
    song_id integer
);


--
-- TOC entry 206 (class 1259 OID 54080)
-- Name: band_song_band_song_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.band_song_band_song_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 206
-- Name: band_song_band_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.band_song_band_song_id_seq OWNED BY public.band_song.band_song_id;


--
-- TOC entry 201 (class 1259 OID 54048)
-- Name: band_visits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.band_visits (
    visits_id integer NOT NULL,
    band_id integer,
    visits_num integer
);


--
-- TOC entry 200 (class 1259 OID 54046)
-- Name: band_visits_visits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.band_visits_visits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 200
-- Name: band_visits_visits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.band_visits_visits_id_seq OWNED BY public.band_visits.visits_id;


--
-- TOC entry 197 (class 1259 OID 54024)
-- Name: category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    category_name character varying(75) NOT NULL
);


--
-- TOC entry 196 (class 1259 OID 54022)
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 196
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- TOC entry 213 (class 1259 OID 54126)
-- Name: configuration; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.configuration (
    configuration_id integer NOT NULL,
    emphasis_days integer,
    event_images_path character varying(250),
    band_images_path character varying(250),
    news_images_path character varying(250),
    band_number integer
);


--
-- TOC entry 212 (class 1259 OID 54124)
-- Name: configuration_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.configuration_configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 212
-- Name: configuration_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.configuration_configuration_id_seq OWNED BY public.configuration.configuration_id;


--
-- TOC entry 209 (class 1259 OID 54100)
-- Name: event; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.event (
    event_id integer NOT NULL,
    event_name character varying(100) NOT NULL,
    event_date_time date NOT NULL,
    event_region character varying(50) NOT NULL,
    event_address character varying(100),
    event_buy_tickets character varying(150),
    event_creation_date date NOT NULL
);


--
-- TOC entry 208 (class 1259 OID 54098)
-- Name: event_event_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 208
-- Name: event_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.event_event_id_seq OWNED BY public.event.event_id;


--
-- TOC entry 205 (class 1259 OID 54074)
-- Name: song; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.song (
    song_id integer NOT NULL,
    album_name character varying(75),
    song_name character varying(75) NOT NULL,
    song_audio character varying(250) NOT NULL,
    song_emph boolean NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 54072)
-- Name: song_song_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.song_song_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 204
-- Name: song_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.song_song_id_seq OWNED BY public.song.song_id;


--
-- TOC entry 218 (class 1259 OID 69970)
-- Name: ti18n; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n (
    id_i18n integer NOT NULL,
    class_name character varying(150),
    i18n_description character varying(250)
);


--
-- TOC entry 219 (class 1259 OID 69975)
-- Name: ti18n_value; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n_value (
    id_i18n_value integer NOT NULL,
    id_i18n integer NOT NULL,
    "KEY" character varying(250),
    es_es character varying(255),
    en_us character varying(255),
    gl_es character varying(255)
);


--
-- TOC entry 216 (class 1259 OID 69946)
-- Name: trequest_statistics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trequest_statistics (
    id_request_statistics integer NOT NULL,
    service_name character varying(255),
    method_name character varying(50),
    user_name character varying(50),
    execution_date date,
    execution_time integer,
    method_params character varying(5000),
    service_exception character varying(5000)
);


--
-- TOC entry 220 (class 1259 OID 107578)
-- Name: tuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser (
);


--
-- TOC entry 217 (class 1259 OID 69962)
-- Name: tuser_preference; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_preference (
    id_user_preference integer NOT NULL,
    preference_name character varying(150),
    user_login character varying(150),
    preference_value character varying(255)
);


--
-- TOC entry 2855 (class 2604 OID 54035)
-- Name: band band_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band ALTER COLUMN band_id SET DEFAULT nextval('public.band_band_id_seq'::regclass);


--
-- TOC entry 2863 (class 2604 OID 54197)
-- Name: band_category band_category_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_category ALTER COLUMN band_category_id SET DEFAULT nextval('public.band_category_band_song_id_seq'::regclass);


--
-- TOC entry 2857 (class 2604 OID 54064)
-- Name: band_comment comment_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_comment ALTER COLUMN comment_id SET DEFAULT nextval('public.band_comment_comment_id_seq'::regclass);


--
-- TOC entry 2861 (class 2604 OID 54111)
-- Name: band_event band_event_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_event ALTER COLUMN band_event_id SET DEFAULT nextval('public.band_event_band_event_id_seq'::regclass);


--
-- TOC entry 2859 (class 2604 OID 54085)
-- Name: band_song band_song_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_song ALTER COLUMN band_song_id SET DEFAULT nextval('public.band_song_band_song_id_seq'::regclass);


--
-- TOC entry 2856 (class 2604 OID 54051)
-- Name: band_visits visits_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_visits ALTER COLUMN visits_id SET DEFAULT nextval('public.band_visits_visits_id_seq'::regclass);


--
-- TOC entry 2854 (class 2604 OID 54027)
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- TOC entry 2862 (class 2604 OID 54129)
-- Name: configuration configuration_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.configuration ALTER COLUMN configuration_id SET DEFAULT nextval('public.configuration_configuration_id_seq'::regclass);


--
-- TOC entry 2860 (class 2604 OID 54103)
-- Name: event event_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event ALTER COLUMN event_id SET DEFAULT nextval('public.event_event_id_seq'::regclass);


--
-- TOC entry 2858 (class 2604 OID 54077)
-- Name: song song_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song ALTER COLUMN song_id SET DEFAULT nextval('public.song_song_id_seq'::regclass);


--
-- TOC entry 3028 (class 0 OID 54032)
-- Dependencies: 199
-- Data for Name: band; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.band VALUES (10, 'BTS', 'BTS es una boy band surcoreana formada en Seúl en 2010.2​ Está compuesta por siete integrantes: Jin, Suga, J-Hope, RM, Jimin, V y Jungkook. Debutó el 13 de junio de 2013, bajo la compañía Big Hit Entertainment, con la canción «No More Dream», incluida en su primer sencillo Cool Skool.', 'https://www.instagram.com/bts.bighitofficial', 'https://www.facebook.com/bangtan.official', 'https://www.youtube.com/channel/UCLkAepWjdylmXSltofFvsYQ', '2020-06-01');
INSERT INTO public.band VALUES (38, 'ABBA', 'ABBA fue un grupo sueco de música pop, integrado por Agnetha Fältskog, Björn Ulvaeus, Benny Andersson y Anni-Frid «Frida» Lyngstad. ABBA ha ganado popularidad empleando melodías pegadizas, letras simples y su sonido propio, caracterizado por las armonías de las voces femeninas y el wall of sound.', 'https://www.instagram.com/abba/', 'https://es-es.facebook.com/ABBA/', 'https://www.youtube.com/channel/abba', '2020-06-01');
INSERT INTO public.band VALUES (11, 'TWICE', 'Twice es un grupo femenino surcoreano formado por JYP Entertainment a través del programa Sixteen (2015). El grupo consta de nueve integrantes: Nayeon, Jeongyeon, Momo, Sana, Jihyo, Mina, Dahyun, Chaeyoung y Tzuyu. Twice debutó oficialmente el 20 de octubre de 2015 con el lanzamiento del miniálbum The Story Begins.', 'https://www.instagram.com/official.twice', 'https://www.facebook.com/JYPETWICE', 'https://www.youtube.com/channel/UCzgxx_DM2Dcb9Y1spb9mUJA', '2020-06-01');
INSERT INTO public.band VALUES (2, 'ZARCORT', 'Miguel Ángel Martos Bello, mejor conocido Zarcort (anteriormente conocido como Maikid o en sus inicios conocido como Paste) es un Rapero y Youtuber procedente de Almeria, España. Es muy conocido por hacer temas de videojuegos actualmente, aunque en el pasado era conocido por formar parte del grupo Tinta Culta junto con su primo Piter G.', 'https://www.instagram.com/zarcort_oficial/', 'https://es-es.facebook.com/ZarcortOficial', 'https://www.youtube.com/channel/UCE3qZH8ltYwmQDmm5uinPXw', '2020-07-01');
INSERT INTO public.band VALUES (40, 'METALLICA', 'Formed in 1981 by drummer Lars Ulrich and guitarist and vocalist James Hetfield, Metallica have become one of the most influential and commercially successful rock bands in history.', 'https://www.instagram.com/metallica/', 'https://es-la.facebook.com/Metallica', 'https://www.youtube.com/channel/UCbulh9WdLtEXiooRcYK7SWw', '2020-06-01');
INSERT INTO public.band VALUES (49, 'RICKY MARTIN', 'Global Music Icon Ricky Martin continues to soar in his third decade as a leader in the Entertainment Industry.', 'https://www.instagram.com/ricky_martin', 'https://www.facebook.com/RickyMartinOfficialPage', 'https://www.youtube.com/channel/UCGkkG-VYVXenlhVIqjH-9oA', '2020-06-01');
INSERT INTO public.band VALUES (22, 'QUEEN', 'QUEEN is Freddie Mercury, Brian May, Roger Taylor and John Deacon and they play rock n'' roll.', 'https://www.instagram.com/officialqueenmusic/', 'https://es-la.facebook.com/Queen/', 'https://www.youtube.com/user/queenofficial', '2020-06-01');
INSERT INTO public.band VALUES (44, 'U2', 'U2 es una banda de rock alternativo originaria de Dublín (Irlanda), formada en 1976 por Bono (voz), The Edge (guitarra, teclado y voz), Adam Clayton (bajo), y Larry Mullen Jr. (batería).', 'https://www.instagram.com/u2/', 'https://gl-es.facebook.com/u2', 'https://www.youtube.com/channel/UC4gPNusMDwx2Xm-YI35AkCA', '2020-06-01');
INSERT INTO public.band VALUES (1, 'BEE GEES', 'Beginning in the mid- to late ''60s as a Beatlesque ensemble, they quickly developed as songwriters and singers to create a style of their own that carried them from psychedelia to progressive pop.', 'https://www.instagram.com/beegees/', 'http://facebook.com/beegees', 'https://www.youtube.com/channel/UCD9sCcKXnFxMeuFoNayVxeQ', '2020-06-01');
INSERT INTO public.band VALUES (42, 'SCORPIONS', 'Founded in Hannover, West Germany in 1965, Scorpions were part of the first wave of metal in the 1970’s with their debut album, Lonesome Crow, released in 1972.', 'https://www.instagram.com/scorpions/', 'https://www.facebook.com/Scorpions', 'https://www.youtube.com/user/ScorpionsOfficial', '2020-06-01');
INSERT INTO public.band VALUES (46, 'DEPECHE MODE', 'Depeche Mode es una banda británica de música electrónica formada en 1980 por Vince Clarke, Andrew Fletcher, Martin Gore y David Gahan. Tras su álbum debut Speak & Spell en 1981, Clarke dejó el grupo y fue sustituido por Alan Wilder, quien permaneció hasta 1995. Desde entonces, Gahan, Gore y Fletcher han continuado el proyecto como trío.', 'https://www.instagram.com/depechemode', 'https://www.facebook.com/depechemode', 'https://www.youtube.com/channel/UCM-CWGUijAC-8idv6k6Fygw', '2020-07-30');
INSERT INTO public.band VALUES (7, 'C TANGANA', 'Antón Álvarez Alfaro (Madrid, 16 de julio de 1990), más conocido como C. Tangana, es un rapero español de géneros musicales como el trap, latin pop y reguetón', 'https://www.instagram.com/c.tangana', 'https://www.facebook.com/ctanganaoficial', 'https://www.youtube.com/channel/UCOZyjrZSrTJJHU05DlF71Jw', '2020-06-01');
INSERT INTO public.band VALUES (30, 'MICHAEL JACKSON', 'Michael Joseph Jackson (Gary, Indiana; 29 de agosto de 1958-Los Ángeles, California; 25 de junio de 2009) fue un cantante, compositor, productor discográfico, bailarín, actor y filántropo estadounidense. Conocido como el «Rey del Pop», sus contribuciones y reconocimiento en la historia de la música y el baile, así como su publicitada vida personal, lo convirtieron en una figura internacional en la cultura popular durante más de cuatro décadas. ', 'https://www.instagram.com/michaeljackson', 'https://www.facebook.com/michaeljackson', 'https://www.youtube.com/user/michaeljackson', '2020-07-03');
INSERT INTO public.band VALUES (33, 'COMMODORES', 'The Commodores es un grupo estadounidense, famoso por su estilo musical funk/soul, que destacó en las décadas de 1970 y 1980. Se formaron en Detroit en 1968, y al año firmaron contrato con Motown Records. ', 'https://www.instagram.com/thecommodores', 'https://www.facebook.com/TheCommodores', 'https://www.youtube.com/channel/UCmdiAudyJFCgdQjnPyoUaWw', '2020-06-01');
INSERT INTO public.band VALUES (43, 'ACDC', 'Formed in 1973, AC/DC''s high voltage rock ''n'' roll has flowed out into the world via consistently sold-out concert tours and global sales totaling more than 150 million albums and counting.', 'https://www.instagram.com/acdc/', 'https://www.facebook.com/acdc', 'https://www.youtube.com/user/acdc', '2020-06-01');
INSERT INTO public.band VALUES (41, 'KISS', 'KISS is an American rock band formed in New York City in December 1972. Easily identified by its members'' trademark face paint and stage outfits, the group rose to prominence in the mid and late-1970s on the basis of their elaborate live performances, which featured fire breathing, blood spitting, smoking guitars, and pyrotechnics. Kiss has been awarded 24 gold albums to date.', 'https://www.instagram.com/kissonline/', 'https://www.facebook.com/KISS/', 'https://www.youtube.com/channel/UCyOw2FDjfQOFQH7paKxNVvA', '2020-06-01');
INSERT INTO public.band VALUES (12, 'MAGNATIZ', 'Magnatiz en sus inicios no se llamaban así, sino Muerte Acústica, bajo este nombre grabaron su primera maqueta titulada Las rimas escritas benditas en el año 1997. Un año después editaron su segunda maqueta, esta vez lanzada en soporte CD titulada Manada vamos a.... Ya como Magnatiz, en el año 2000 editan su primer trabajo en formato profesional bajo la discográfica Boa, Un maxi titulado Triste Navidad y un maxi sencillo bajo el nombre del grupo con dos temas inéditos.', 'https://www.instagram.com/explore/tags/shugawuga/top', NULL, 'https://www.youtube.com/channel/UCqxgDrcH8qNy-cXvm7MeS0w', '2020-06-01');
INSERT INTO public.band VALUES (48, 'BECKY G', 'Rebbeca Marie Gómez (Inglewood, California; 2 de marzo de 1997), conocida artísticamente como Becky G, es una cantante, compositora, bailarina y actriz estadounidense de ascendencia mexicana. Comenzó a tener reconocimiento en 2011 después de haber subido varios vídeos de ella misma interpretando remezclas de canciones populares en YouTube.', 'https://www.instagram.com/iambeckyg', 'https://www.facebook.com/iambeckyg', 'https://www.youtube.com/channel/UCgtNC51EUSgcZ6kKyVoPxKA', '2020-06-01');
INSERT INTO public.band VALUES (9, 'LA ZOWI', 'La Zowi nació en París. Ha vivido en varias ciudades europeas: Granada, Marsella, Londres, Barcelona y Madrid. Es hija de artistas, su padre es Patrice Jean Marcel Jeanneau, guitarrista de flamenco conocido como El Yerbita, y su madre es poetisa. Empezó a componer con PXXR GVNG, el proyecto de la banda Los Santos. Con ellos publicó su primer tema, «Raxeta» en 2013, a través de YouTube.', 'https://www.instagram.com/zowiputx', 'https://www.facebook.com/LAZOWI', 'https://www.youtube.com/channel/UCJLO8VfhXveoJsAM_Hhk7YA', '2020-06-01');
INSERT INTO public.band VALUES (29, 'EL ÚLTIMO DE LA FILA', 'El Último de la Fila fue un grupo musical de rock español formado por Manolo García (vocalista) y Quimi Portet (guitarrista), y surgido en la ciudad de Barcelona. Ha sido uno de los grupos musicales de más éxito en España durante las décadas de 1980 y de 1990, años en los que desarrollaron siete álbumes musicales y numerosas giras, generalmente en España, aunque también en diversos países de Hispanoamérica.', 'https://www.instagram.com/manologarciaycia', 'https://www.facebook.com/El-ultimo-de-la-fila-169565379848517', 'https://www.youtube.com/channel/UCTpc04nv5GbJBYpukHtcrdA', '2020-06-01');
INSERT INTO public.band VALUES (32, 'AMY WINEHOUSE', 'Amy Jade Winehouse (Londres, 14 de septiembre de 1983-Ib., 23 de julio de 2011) fue una cantante y compositora británica famosa, entre otras cosas, por sus mezclas de diversos géneros musicales, entre los que destacan el jazz, R&B, soul y ska. Se la conoce por ser contralto, registro vocal que fue descrito como «acústicamente poderoso» y capaz de expresar «profundamente sus emociones».', 'https://www.instagram.com/amywinehousethebest/', 'https://www.facebook.com/amywinehouse', 'https://www.youtube.com/channel/UCWsQKPFHQdRMJZSAAzh1Qbg', '2020-07-02');
INSERT INTO public.band VALUES (26, 'CAMERATA BARILOCHE', 'La Camerata Bariloche es un conjunto de música de cámara argentino, fundado en 1967 que ha alcanzado prestigio internacional. A lo largo de su historia ha realizado más de veinticinco giras internacionales, tocando en salas de 33 países de América, Europa y Asia. La idea de crear la Camerata fue producto del músico Alberto Lysy, quien organizaba Festivales de Música de Cámara en Buenos Aires con participación de músicos argentinos y extranjeros.', 'https://www.instagram.com/cameratabariloche', 'https://www.facebook.com/CamerataBarilocheOficial', 'https://www.youtube.com/channel/UCdZHXyN3HVv5c0jbCG9GL2Q', '2020-06-29');
INSERT INTO public.band VALUES (25, 'CUARTETOS VIACH', 'Los Cuarteto Vlach (en checo, Vlachovo kvarteto) son dos conjuntos musicales de cuartetos de cuerdas clásicos consecutivos, con base en Praga, ambos fundados por miembros de la familia Vlach. El Cuarteto original de Vlach fue fundado por Josef Vlach en 1949 y terminó en 1975. En 1982, el Nuevo Cuarteto Vlach (en en checo, Nové Vlachovo kvarteto fue fundada por su hija Jana Vlachova, con la orientación de su padre, y llegó a ser conocido como el Cuarteto Vlach de Praga.', NULL, 'https://www.facebook.com/events/teatro-villamarta-jerez/cuarteto-vlach/184054966271051', NULL, '2020-06-01');
INSERT INTO public.band VALUES (34, 'EARTH,WIND & FIRE', 'Earth, Wind & Fire, conocidos también como EWF, es un grupo musical estadounidense, formado en Chicago (Illinois) en 1970. Fue fundado por Maurice White. Utiliza varios géneros de música, una fusión de disco, R&B, funk con el jazz, soul, gospel, pop, blues, psicodelia, folk, música africana y rock and roll. Durante su carrera han sido 20 veces candidatos a los Grammy, ganando 6 premios. ', 'https://www.instagram.com/earthwindandfire', 'https://www.facebook.com/EarthWindandFire', 'https://www.youtube.com/channel/UCztiH7D-fHwsMyUF8r15vsQ', '2020-06-01');
INSERT INTO public.band VALUES (4, '7 NOTAS 7 COLORES', '7 Notas 7 Colores es un grupo de música rap de El Prat de Llobregat fundado en 1993. En su momento fueron uno de los grupos más representativos en la escena no sólo nacional sino también hispanoamericana, llegando a editarse algunos de sus discos en Estados Unidos. Se dice que 7 Notas 7 Colores es uno de los grupos pioneros del rap español.', 'https://www.instagram.com/hechoessimple20th', 'https://www.facebook.com/hechoesimple', 'https://www.youtube.com/channel/UCJ6anYf0CiabyJKd4yM9HXQ', '2020-06-15');
INSERT INTO public.band VALUES (23, 'ROLLING STONES', 'The Rolling Stones es una banda británica de rock originaria de Londres. La banda se formó en abril de 1962 por Brian Jones, Mick Jagger, Keith Richards, Bill Wyman, Charlie Watts e Ian Stewart. Brian Jones fue despedido en junio de 1969, falleciendo tres semanas después, siendo reemplazado por el guitarrista Mick Taylor, que dejaría el grupo en 1975 y sería a su vez reemplazado por Ronnie Wood. ', 'https://www.instagram.com/therollingstones/', 'https://www.facebook.com/therollingstones', 'https://www.youtube.com/therollingstones', '2020-06-30');
INSERT INTO public.band VALUES (28, 'NEDERLANDS KAMERKOOR', 'El Nederlands Kamerkoor es un conjunto vocal y profesional que interpreta música de la alta Edad Media hasta incluso música contemporánea. En el género de coros de cámera pertenece a la élite mundial. El coro está radicado en Utrecht desde mayo 2015, después de una estancia de 78 años en Ámsterdam.', 'https://www.instagram.com/ned_kamerkoor', 'https://www.facebook.com/nederlandskamerkoor', 'https://www.youtube.com/user/NederlandsKamerkoor', '2020-06-01');
INSERT INTO public.band VALUES (19, 'MADONA', 'Madonna pasó su infancia en Bay City y en 1978 se mudó a la ciudad de Nueva York para realizar una carrera de danza contemporánea. Después de participar en dos grupos musicales, Breakfast Club y Emmy, en 1982 firmó con Sire Records (filial de Warner Bros.) y lanzó su álbum debut Madonna al año siguiente. Siguió publicando una serie de álbumes en los que encontró una inmensa popularidad.', 'https://www.instagram.com/madonna/', 'https://es-la.facebook.com/madonna/', 'https://www.youtube.com/madonna', '2020-06-01');
INSERT INTO public.band VALUES (6, 'LOS SANTOS', 'Los Santos (Antiguamente PXXR GVNG) es un grupo de Trap español formado por Yung Beef conocido como a el Seko, Kaydy Cain conocido anteriormente como D. Gómez y Khaled. El nombre del grupo fue pensado por Cecilio G, en aquellos tiempos amigo de ellos, como una parodia a Rich Gang. Mucho antes de aquello cada integrante producía su propia música y la colgaba en Internet como entretenimiento.', 'https://www.instagram.com/lossantos000', 'https://www.facebook.com/lossantos000', 'https://www.youtube.com/channel/UC0y2SZ31-dBD2GVDHIcbfMw', '2020-06-01');
INSERT INTO public.band VALUES (8, 'DELLAFUENTE', 'Pablo Enoc Bayo (Granada, 1 de enero de 1992), conocido como Dellafuente, es un cantante, compositor y músico español.1​ Comenzó a introducirse en el mundo de la música con solo 15 años y en la actualidad es uno de los mayores representantes de la música urbana en España', 'https://www.instagram.com/dellafuente', 'https://www.facebook.com/Dellafuente', 'https://www.youtube.com/channel/UCwNXmdL8oVfJgXXHE6gk7_Q', '2020-06-01');
INSERT INTO public.band VALUES (13, 'NWA', 'Fue un grupo estadounidense de hip hop de Compton, California, y está considerado de modo generalizado como el grupo pionero en la formación del subgénero musical gangsta rap. Su actividad duró desde 1986 hasta 1991, tiempo en el que se vieron envueltos en la controversia como consecuencia de la naturaleza explícita de sus letras, siendo por ello prohibido en buena parte de las emisoras de radio mainstream de Estados Unidos, llegándose incluso a cancelar alguna de sus giras', 'https://www.instagram.com/nwa', 'https://www.facebook.com/NWAmusic', 'https://www.youtube.com/channel/UCSHCTJS2P4Hvu_reLKtiT6g', '2020-06-01');
INSERT INTO public.band VALUES (16, 'SONS OF KEMET', 'Algunos de los mejores talentos del jazz británico más progresivo se encuentran bajo el nombre de Sons Of Kemet, banda de jazz afro-futurista con un poderoso mensaje de unidad intercultural que lidera Hutchings, compositor y saxofonista liberando toda su furia junto con Tom Skinner y Seb Rochford, ambos a la batería, y Theon Cross con la tuba.', 'https://www.instagram.com/sonsofkemet', 'https://www.facebook.com/sonsofkemet', 'https://www.youtube.com/channel/UCnxajfDcQCUX-VhZMQUexXg', '2020-06-01');
INSERT INTO public.band VALUES (14, 'VIVI JAZZ QUARTET', 'Vivi Jazz Quartet, con Jaime Iglesias a la guitarra, Alejandro Ollero al contrabajo, Carlos Bermúdez al saxo tenor y Viviana Jaén cantando historias, un cuarteto muy personal y elegante, perfecto para amenizar cualquier tipo de evento, desde una boda, a una fiesta privada, con un amplio repertorio que abarca Jazz, Bossa Nova, y Soul.', NULL, NULL, NULL, '2020-06-01');
INSERT INTO public.band VALUES (35, 'OTTIS REDDING', 'Es considerado uno de los más grandes cantantes en la historia de la música estadounidense y un artista seminal en la música soul y de rhythm and blues. Su estilo de canto procedía de la música gospel, el precedente de su género musical. Su estilo de canto influyó en muchos otros cantantes de soul de los años 1960. Durante su vida, sus grabaciones fueron producidas por Stax Records, establecida en Memphis, Tennessee.', 'https://www.instagram.com/otisredding', 'https://www.facebook.com/otisredding', 'https://www.youtube.com/channel/UC0d604wgOhA8on5Lgw4lMYQ', '2020-07-02');
INSERT INTO public.band VALUES (24, 'REM', 'R.E.M. fue una banda de rock alternativo estadounidense formada en Athens, Georgia, en 1980 por el cantante Michael Stipe, el guitarrista Peter Buck, el bajista Mike Mills y el baterista Bill Berry. De las primeras bandas pioneras del rock alternativo, R.E.M. fue fundamental en la creación y desarrollo de dicho género. Allmusic declaró: "R.E.M. marcó el punto en el que el post-punk se convirtió en rock alternativo". ', 'https://www.instagram.com/rem', 'https://www.facebook.com/REMhq', 'https://www.youtube.com/channel/UC7eaRqtonpyiYw0Pns0Au_g', '2020-06-01');
INSERT INTO public.band VALUES (5, 'SFDK', 'El grupo nace a principios de la década de los 90, en el instituto donde estudiaba Zatu. Junto a varios amigos formaron el grupo Straight From Da Kranny (SFDK. Dicho nombre hace referencia al lugar en el que se reunía el grupo. Este derivó y pasó a ser ''Siempre Fuertes De Konciencia''. En 1993 Zatu grabó una maqueta titulada Outta Kranny. Un año más tarde Acción Sánchez ingresa en el grupo y en 1995 graban otra maqueta ''Tras mil vueltas''. ', 'https://www.instagram.com/sfdkoficial', 'https://www.facebook.com/sfdkoficial', 'https://www.youtube.com/channel/UCvtasRlErM9YfpqT0ZSVLtw', '2020-06-17');
INSERT INTO public.band VALUES (27, 'IL DIVO', 'Un grupo proyectado y asociado por el productor musical Simon Cowell para la discográfica inglesa Syco Music, perteneciente a la cadena internacional Sony Music, bautizó el grupo como Il Divo, palabra italiana que significa artista divino, que traducido al español se aclararía como El Divo, que se detalla en género masculino y en número singular, a pesar de ser cuatro cantantes, ya que el nombre se refiere al encajado de las voces entre sí. ', 'https://www.instagram.com/ildivo', 'https://www.facebook.com/ildivo', 'https://www.youtube.com/channel/UCPfDWRnKmMxbsrINdunzxnA', '2020-06-01');
INSERT INTO public.band VALUES (21, 'THE BEATLES', 'The Beatles fue una banda de rock inglesa activa durante la década de 1960, y reconocida como la más exitosa comercialmente y la más alabada por la crítica en la historia de la música popular y de la música rock. Formada en Liverpool, estuvo constituida desde 1962 por John Lennon (guitarra rítmica, vocalista), Paul McCartney (bajo, vocalista), George Harrison (guitarra solista, vocalista) y Ringo Starr (batería, vocalista). ', 'https://www.instagram.com/thebeatles', 'https://www.facebook.com/thebeatles', 'https://www.youtube.com/thebeatles', '2020-07-08');
INSERT INTO public.band VALUES (17, 'THE BAD PLUS', 'The Bad Plus es un trío de jazz contemporáneo formado inicialmente por el pianista Ethan Iverson, el bajista Reid Anderson y el baterista Dave King. Desde 2018 Orrin Evans sustituye a Ethan Iverson al piano. Anderson y King son originarios de Minnesota e Iverson es del cercano Wisconsin. El grupo actuaba desde 1989, pero no fue hasta el año 2000 fundaron The Bad Plus.', 'https://www.instagram.com/thebadplus', 'https://www.facebook.com/thebadplusofficia', 'https://www.youtube.com/channel/UCffLfyriw4jRU-y-TzABZgQ', '2020-06-01');
INSERT INTO public.band VALUES (45, 'NEW ORDER', 'La banda fue formada por los antiguos integrantes de Joy Division al desintegrarse esta tras el suicidio de su cantante, Ian Curtis. Desde entonces, se ha convertido en una de las bandas más aclamadas por la crítica y una de las más influyentes de la década de los 1980. Durante sus primeros años estuvieron fuertemente influenciados por el legado musical de Joy Division.', 'https://www.instagram.com/neworderofficial', 'https://www.facebook.com/NewOrderOfficial', 'https://www.youtube.com/user/neworder', '2020-06-01');
INSERT INTO public.band VALUES (36, 'THE SUPREMES', 'The Supremes fue un grupo de música pop y soul estadounidense de los años sesenta y setenta, formado exclusivamente por chicas afroamericanas, que interpretó canciones de distintos géneros musicales, desde el doo wop a la psicodelia y la música disco. Se formó en 1961 en la ciudad de Detroit.', 'https://www.instagram.com/the__supremes', 'https://www.facebook.com/Supremes', 'https://www.youtube.com/channel/UC54WY0Ri2Y4FM6cDnOKBvaA', '2020-07-01');
INSERT INTO public.band VALUES (15, 'WAYNE SHORTER', 'Se trata de uno de los músicos de jazz más activos e influyentes, de forma permanente a lo largo de su carrera. Heredero de John Coltrane, su música se encuadra dentro del post-bop, habiendo realizado aportaciones fundamentales al desarrollo del hard bop, del jazz modal y de la fusión, añadiendo incluso en sus últimos discos un toque funk. La influencia de Shorter en muchos de los artistas que surgieron en los 80 ha sido considerable sobre la base de su trabajo de los años 1960 y 70.', 'https://www.instagram.com/wayne.shorter', 'https://www.facebook.com/wayneshortermusic', 'https://www.youtube.com/channel/UC3X4afoYfFCLWw1LTfeLCqA', '2020-06-01');
INSERT INTO public.band VALUES (47, 'ROSALIA', 'Rosalía Vila Tobella (San Esteban de Sasroviras, Barcelona; 25 de septiembre de 1993), conocida simplemente como Rosalía, es una cantante, actriz, compositora y productora española. Ha sido galardonada con dos Premios Grammy Latinos por «Malamente» y cinco por su segundo álbum El mal querer, que la convirtieron en la artista española con más galardones otorgados por la Academia Latina de Artes y Ciencias de la Grabación por un único trabajo, y dos MTV Video Music Awards.', 'https://www.instagram.com/rosalia.vt', 'https://www.facebook.com/rosalia.vt', 'https://www.youtube.com/channel/UCQt9awGIFZeldFsATZNeJag', '2020-06-01');
INSERT INTO public.band VALUES (3, 'EMINEM', 'Marshall Bruce Mathers III (St Joseph, Misuri; 17 de octubre de 1972), conocido por su nombre artístico Eminem,  y también por su álter ego Slim Shady, es un rapero, productor discográfico y actor estadounidense. Su nombre artístico proviene de la unión de las iniciales de su nombre: M&M («Em and Em»,  mientras que el apodo de su álter ego se hizo conocer por primera vez en 1997 con su primer EP titulado The Slim Shady EP. Es considerado por varios medios como ''El Rey Del Rap''', 'https://www.instagram.com/eminem', 'https://www.facebook.com/eminem', 'https://www.youtube.com/channel/UCfM3zsQsOnfWNUppiycmBuw', '2020-06-16');


--
-- TOC entry 3044 (class 0 OID 54194)
-- Dependencies: 215
-- Data for Name: band_category; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.band_category VALUES (1, 1, 9);
INSERT INTO public.band_category VALUES (2, 1, 9);
INSERT INTO public.band_category VALUES (3, 1, 9);
INSERT INTO public.band_category VALUES (4, 19, 9);
INSERT INTO public.band_category VALUES (5, 38, 9);
INSERT INTO public.band_category VALUES (6, 22, 9);
INSERT INTO public.band_category VALUES (7, 40, 10);
INSERT INTO public.band_category VALUES (8, 41, 10);
INSERT INTO public.band_category VALUES (9, 42, 10);
INSERT INTO public.band_category VALUES (10, 43, 10);
INSERT INTO public.band_category VALUES (11, 1, 9);
INSERT INTO public.band_category VALUES (12, 19, 9);
INSERT INTO public.band_category VALUES (13, 38, 9);
INSERT INTO public.band_category VALUES (14, 22, 9);
INSERT INTO public.band_category VALUES (15, 40, 10);
INSERT INTO public.band_category VALUES (16, 41, 10);
INSERT INTO public.band_category VALUES (17, 42, 10);
INSERT INTO public.band_category VALUES (18, 43, 10);
INSERT INTO public.band_category VALUES (19, 2, 5);
INSERT INTO public.band_category VALUES (20, 3, 5);
INSERT INTO public.band_category VALUES (21, 4, 5);
INSERT INTO public.band_category VALUES (22, 5, 5);
INSERT INTO public.band_category VALUES (23, 6, 6);
INSERT INTO public.band_category VALUES (24, 7, 6);
INSERT INTO public.band_category VALUES (25, 8, 6);
INSERT INTO public.band_category VALUES (26, 9, 6);
INSERT INTO public.band_category VALUES (27, 10, 7);
INSERT INTO public.band_category VALUES (28, 11, 7);
INSERT INTO public.band_category VALUES (29, 12, 7);
INSERT INTO public.band_category VALUES (30, 13, 7);
INSERT INTO public.band_category VALUES (31, 14, 8);
INSERT INTO public.band_category VALUES (32, 15, 8);
INSERT INTO public.band_category VALUES (33, 16, 8);
INSERT INTO public.band_category VALUES (34, 17, 8);
INSERT INTO public.band_category VALUES (35, 19, 11);
INSERT INTO public.band_category VALUES (36, 44, 11);
INSERT INTO public.band_category VALUES (37, 45, 11);
INSERT INTO public.band_category VALUES (38, 46, 11);
INSERT INTO public.band_category VALUES (39, 47, 12);
INSERT INTO public.band_category VALUES (40, 48, 12);
INSERT INTO public.band_category VALUES (41, 49, 12);
INSERT INTO public.band_category VALUES (42, 21, 1);
INSERT INTO public.band_category VALUES (43, 22, 1);
INSERT INTO public.band_category VALUES (44, 23, 1);
INSERT INTO public.band_category VALUES (45, 24, 1);
INSERT INTO public.band_category VALUES (46, 25, 2);
INSERT INTO public.band_category VALUES (47, 26, 2);
INSERT INTO public.band_category VALUES (48, 27, 2);
INSERT INTO public.band_category VALUES (49, 28, 2);
INSERT INTO public.band_category VALUES (50, 29, 3);
INSERT INTO public.band_category VALUES (51, 30, 3);
INSERT INTO public.band_category VALUES (52, 19, 3);
INSERT INTO public.band_category VALUES (53, 32, 3);
INSERT INTO public.band_category VALUES (54, 33, 4);
INSERT INTO public.band_category VALUES (55, 34, 4);
INSERT INTO public.band_category VALUES (56, 36, 4);
INSERT INTO public.band_category VALUES (57, 35, 4);


--
-- TOC entry 3032 (class 0 OID 54061)
-- Dependencies: 203
-- Data for Name: band_comment; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.band_comment VALUES (1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'TEST');
INSERT INTO public.band_comment VALUES (2, 1, 'Me gusta', 'Hola');
INSERT INTO public.band_comment VALUES (3, 1, 'Cómo molan!!!!', 'Pepito Grillo');
INSERT INTO public.band_comment VALUES (4, 2, 'I love him!!!!', 'FAntastic');
INSERT INTO public.band_comment VALUES (5, 1, 'Me gusta', 'Pepito Grillo');
INSERT INTO public.band_comment VALUES (6, 1, 'PUAJJJJ! Viejunos!!', 'Suricato');
INSERT INTO public.band_comment VALUES (7, 3, 'Slim shady''s back', 'Puleva');
INSERT INTO public.band_comment VALUES (8, 1, 'Uxi infantil', 'Christian');
INSERT INTO public.band_comment VALUES (9, 7, 'Me encanta<33', 'Claudia');
INSERT INTO public.band_comment VALUES (10, 1, 'Este grupo es muy viejo', 'Platiplus');
INSERT INTO public.band_comment VALUES (11, 41, 'La música de este grupo es un ruido muy molesto', 'Suricato');
INSERT INTO public.band_comment VALUES (12, 41, 'Mi grupo favorito!!', 'Pepinillo');
INSERT INTO public.band_comment VALUES (13, 41, 'No esperaba tan buena música', 'Lucia_87');
INSERT INTO public.band_comment VALUES (14, 41, 'Muy buen grupo!', 'Pepinillo');
INSERT INTO public.band_comment VALUES (15, 41, 'Son un asco', 'ALEIA');
INSERT INTO public.band_comment VALUES (16, 41, 'Me encantan', 'Alias_02');
INSERT INTO public.band_comment VALUES (17, 41, 'Non me gustan', 'Maruxa');


--
-- TOC entry 3040 (class 0 OID 54108)
-- Dependencies: 211
-- Data for Name: band_event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.band_event VALUES (1, 10, 1);
INSERT INTO public.band_event VALUES (2, 47, 5);
INSERT INTO public.band_event VALUES (3, 47, 6);
INSERT INTO public.band_event VALUES (4, 29, 7);
INSERT INTO public.band_event VALUES (5, 22, 7);


--
-- TOC entry 3036 (class 0 OID 54082)
-- Dependencies: 207
-- Data for Name: band_song; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.band_song VALUES (1, 1, 1);
INSERT INTO public.band_song VALUES (2, 1, 43);
INSERT INTO public.band_song VALUES (3, 1, 28);
INSERT INTO public.band_song VALUES (4, 1, 27);
INSERT INTO public.band_song VALUES (5, 2, 2);
INSERT INTO public.band_song VALUES (6, 2, 3);
INSERT INTO public.band_song VALUES (7, 3, 4);
INSERT INTO public.band_song VALUES (8, 3, 5);
INSERT INTO public.band_song VALUES (9, 3, 6);
INSERT INTO public.band_song VALUES (10, 4, 7);
INSERT INTO public.band_song VALUES (11, 4, 8);
INSERT INTO public.band_song VALUES (12, 5, 9);
INSERT INTO public.band_song VALUES (13, 5, 10);
INSERT INTO public.band_song VALUES (14, 5, 11);
INSERT INTO public.band_song VALUES (15, 6, 12);
INSERT INTO public.band_song VALUES (16, 6, 13);
INSERT INTO public.band_song VALUES (17, 19, 44);
INSERT INTO public.band_song VALUES (18, 19, 45);
INSERT INTO public.band_song VALUES (19, 19, 46);
INSERT INTO public.band_song VALUES (20, 19, 47);
INSERT INTO public.band_song VALUES (21, 7, 14);
INSERT INTO public.band_song VALUES (22, 7, 15);
INSERT INTO public.band_song VALUES (23, 7, 16);
INSERT INTO public.band_song VALUES (24, 8, 17);
INSERT INTO public.band_song VALUES (25, 8, 18);
INSERT INTO public.band_song VALUES (26, 9, 19);
INSERT INTO public.band_song VALUES (27, 9, 20);
INSERT INTO public.band_song VALUES (28, 9, 21);
INSERT INTO public.band_song VALUES (29, 10, 22);
INSERT INTO public.band_song VALUES (30, 10, 23);
INSERT INTO public.band_song VALUES (31, 11, 24);
INSERT INTO public.band_song VALUES (32, 11, 25);
INSERT INTO public.band_song VALUES (33, 11, 26);
INSERT INTO public.band_song VALUES (34, 38, 48);
INSERT INTO public.band_song VALUES (35, 38, 49);
INSERT INTO public.band_song VALUES (36, 12, 29);
INSERT INTO public.band_song VALUES (37, 12, 30);
INSERT INTO public.band_song VALUES (38, 13, 31);
INSERT INTO public.band_song VALUES (39, 13, 32);
INSERT INTO public.band_song VALUES (40, 14, 33);
INSERT INTO public.band_song VALUES (41, 14, 34);
INSERT INTO public.band_song VALUES (42, 14, 35);
INSERT INTO public.band_song VALUES (43, 22, 51);
INSERT INTO public.band_song VALUES (44, 22, 52);
INSERT INTO public.band_song VALUES (45, 40, 61);
INSERT INTO public.band_song VALUES (46, 40, 62);
INSERT INTO public.band_song VALUES (47, 40, 63);
INSERT INTO public.band_song VALUES (48, 41, 64);
INSERT INTO public.band_song VALUES (49, 41, 65);
INSERT INTO public.band_song VALUES (50, 41, 66);
INSERT INTO public.band_song VALUES (51, 15, 36);
INSERT INTO public.band_song VALUES (52, 15, 37);
INSERT INTO public.band_song VALUES (53, 15, 38);
INSERT INTO public.band_song VALUES (54, 16, 39);
INSERT INTO public.band_song VALUES (55, 16, 40);
INSERT INTO public.band_song VALUES (56, 17, 41);
INSERT INTO public.band_song VALUES (57, 17, 42);
INSERT INTO public.band_song VALUES (58, 42, 67);
INSERT INTO public.band_song VALUES (59, 42, 68);
INSERT INTO public.band_song VALUES (60, 42, 69);
INSERT INTO public.band_song VALUES (61, 43, 76);
INSERT INTO public.band_song VALUES (62, 43, 77);
INSERT INTO public.band_song VALUES (63, 43, 78);
INSERT INTO public.band_song VALUES (64, 43, 79);
INSERT INTO public.band_song VALUES (65, 44, 82);
INSERT INTO public.band_song VALUES (66, 44, 83);
INSERT INTO public.band_song VALUES (67, 44, 84);
INSERT INTO public.band_song VALUES (68, 45, 85);
INSERT INTO public.band_song VALUES (69, 45, 89);
INSERT INTO public.band_song VALUES (70, 45, 90);
INSERT INTO public.band_song VALUES (71, 46, 95);
INSERT INTO public.band_song VALUES (72, 46, 96);
INSERT INTO public.band_song VALUES (73, 46, 97);
INSERT INTO public.band_song VALUES (74, 47, 104);
INSERT INTO public.band_song VALUES (75, 47, 105);
INSERT INTO public.band_song VALUES (76, 47, 106);
INSERT INTO public.band_song VALUES (77, 48, 107);
INSERT INTO public.band_song VALUES (78, 48, 108);
INSERT INTO public.band_song VALUES (79, 48, 109);
INSERT INTO public.band_song VALUES (80, 48, 110);
INSERT INTO public.band_song VALUES (81, 49, 111);
INSERT INTO public.band_song VALUES (82, 49, 112);
INSERT INTO public.band_song VALUES (83, 49, 113);
INSERT INTO public.band_song VALUES (84, 35, 50);
INSERT INTO public.band_song VALUES (85, 35, 53);
INSERT INTO public.band_song VALUES (86, 35, 54);
INSERT INTO public.band_song VALUES (87, 36, 55);
INSERT INTO public.band_song VALUES (88, 35, 50);
INSERT INTO public.band_song VALUES (89, 35, 53);
INSERT INTO public.band_song VALUES (90, 35, 54);
INSERT INTO public.band_song VALUES (91, 36, 56);
INSERT INTO public.band_song VALUES (92, 36, 57);
INSERT INTO public.band_song VALUES (93, 34, 70);
INSERT INTO public.band_song VALUES (94, 34, 71);
INSERT INTO public.band_song VALUES (95, 34, 73);
INSERT INTO public.band_song VALUES (96, 33, 74);
INSERT INTO public.band_song VALUES (97, 33, 75);
INSERT INTO public.band_song VALUES (98, 33, 72);
INSERT INTO public.band_song VALUES (99, 29, 91);
INSERT INTO public.band_song VALUES (100, 29, 86);
INSERT INTO public.band_song VALUES (101, 29, 87);
INSERT INTO public.band_song VALUES (102, 30, 92);
INSERT INTO public.band_song VALUES (103, 30, 93);
INSERT INTO public.band_song VALUES (104, 30, 94);
INSERT INTO public.band_song VALUES (105, 19, 98);
INSERT INTO public.band_song VALUES (106, 19, 103);
INSERT INTO public.band_song VALUES (107, 19, 100);
INSERT INTO public.band_song VALUES (108, 32, 99);
INSERT INTO public.band_song VALUES (109, 32, 101);
INSERT INTO public.band_song VALUES (110, 32, 102);
INSERT INTO public.band_song VALUES (111, 24, 115);
INSERT INTO public.band_song VALUES (112, 24, 116);
INSERT INTO public.band_song VALUES (113, 24, 117);
INSERT INTO public.band_song VALUES (114, 23, 118);
INSERT INTO public.band_song VALUES (115, 23, 119);
INSERT INTO public.band_song VALUES (116, 23, 120);
INSERT INTO public.band_song VALUES (117, 22, 121);
INSERT INTO public.band_song VALUES (118, 22, 122);
INSERT INTO public.band_song VALUES (119, 22, 123);
INSERT INTO public.band_song VALUES (120, 21, 124);
INSERT INTO public.band_song VALUES (121, 21, 125);
INSERT INTO public.band_song VALUES (122, 21, 126);
INSERT INTO public.band_song VALUES (123, 25, 127);
INSERT INTO public.band_song VALUES (124, 25, 128);
INSERT INTO public.band_song VALUES (125, 25, 129);
INSERT INTO public.band_song VALUES (126, 26, 130);
INSERT INTO public.band_song VALUES (127, 26, 131);
INSERT INTO public.band_song VALUES (128, 26, 132);
INSERT INTO public.band_song VALUES (129, 27, 137);
INSERT INTO public.band_song VALUES (130, 27, 134);
INSERT INTO public.band_song VALUES (131, 27, 135);
INSERT INTO public.band_song VALUES (132, 28, 138);
INSERT INTO public.band_song VALUES (133, 28, 139);
INSERT INTO public.band_song VALUES (134, 28, 140);


--
-- TOC entry 3030 (class 0 OID 54048)
-- Dependencies: 201
-- Data for Name: band_visits; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.band_visits VALUES (3, 8, 2);
INSERT INTO public.band_visits VALUES (12, 1, 53);
INSERT INTO public.band_visits VALUES (8, 2, 64);
INSERT INTO public.band_visits VALUES (7, 10, 63);
INSERT INTO public.band_visits VALUES (4, 43, 19);
INSERT INTO public.band_visits VALUES (65, 41, 76);
INSERT INTO public.band_visits VALUES (67, 42, 63);
INSERT INTO public.band_visits VALUES (6, 23, 101);
INSERT INTO public.band_visits VALUES (9, 47, 8);
INSERT INTO public.band_visits VALUES (10, 11, 55);
INSERT INTO public.band_visits VALUES (1, 6, 10);
INSERT INTO public.band_visits VALUES (2, 7, 32);
INSERT INTO public.band_visits VALUES (5, 5, 39);


--
-- TOC entry 3026 (class 0 OID 54024)
-- Dependencies: 197
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.category VALUES (1, 'ROCK');
INSERT INTO public.category VALUES (2, 'CLASSIC');
INSERT INTO public.category VALUES (3, 'POP');
INSERT INTO public.category VALUES (4, 'SOUL');
INSERT INTO public.category VALUES (5, 'RAP');
INSERT INTO public.category VALUES (6, 'TRAP');
INSERT INTO public.category VALUES (7, 'HIP-HOP');
INSERT INTO public.category VALUES (8, 'JAZZ');
INSERT INTO public.category VALUES (9, 'DISCO');
INSERT INTO public.category VALUES (10, 'METAL');
INSERT INTO public.category VALUES (11, 'TECNO');
INSERT INTO public.category VALUES (12, 'LATINO');


--
-- TOC entry 3042 (class 0 OID 54126)
-- Dependencies: 213
-- Data for Name: configuration; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.configuration VALUES (1, 5, NULL, 'assets/images/bands/slider/BEEGEES_1.jpg', NULL, 4);
INSERT INTO public.configuration VALUES (2, NULL, NULL, 'assets/images/bands/slider/BEEGEES_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (3, NULL, NULL, 'assets/images/bands/slider/BEEGEES_3.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (4, NULL, NULL, 'assets/images/bands/slider/BEEGEES_4.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (5, NULL, NULL, 'assets/images/bands/slider/BEES4.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (6, NULL, NULL, 'assets/images/bands/slider/METALLICA_1.jpg', '', NULL);
INSERT INTO public.configuration VALUES (7, NULL, NULL, 'assets/images/bands/slider/METALLICA_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (8, NULL, NULL, 'assets/images/bands/slider/MICHELJACKSON_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (9, NULL, NULL, 'assets/images/bands/slider/MICHELJACKSON_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (10, NULL, NULL, 'assets/images/bands/slider/NEDERLANDSKAMERKOOR_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (11, NULL, NULL, 'assets/images/bands/slider/NEDERLANDSKAMERKOOR_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (12, NULL, NULL, 'assets/images/bands/slider/NEWORDER_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (13, NULL, NULL, 'assets/images/bands/slider/NEWORDER_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (14, NULL, NULL, 'assets/images/bands/slider/NWA_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (15, NULL, NULL, 'assets/images/bands/slider/NWA_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (16, NULL, NULL, 'assets/images/bands/slider/OTTISREDDING_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (17, NULL, NULL, 'assets/images/bands/slider/OTTISREDDING_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (18, NULL, NULL, 'assets/images/bands/slider/QUEEN_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (19, NULL, NULL, 'assets/images/bands/slider/QUEEN_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (20, NULL, NULL, 'assets/images/bands/slider/REM_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (21, NULL, NULL, 'assets/images/bands/slider/REM_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (22, NULL, NULL, 'assets/images/bands/slider/RICKYMARTIN_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (23, NULL, NULL, 'assets/images/bands/slider/RICKYMARTIN_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (24, NULL, NULL, 'assets/images/bands/slider/ROLLINGSTONES_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (25, NULL, NULL, 'assets/images/bands/slider/ROLLINGSTONES_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (26, NULL, NULL, 'assets/images/bands/slider/ROSALIA_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (27, NULL, NULL, 'assets/images/bands/slider/ROSALIA2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (28, NULL, NULL, 'assets/images/bands/slider/SCORPIONS_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (29, NULL, NULL, 'assets/images/bands/slider/SCORPIONS_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (30, NULL, NULL, 'assets/images/bands/slider/SFDK_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (31, NULL, NULL, 'assets/images/bands/slider/SFDK_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (32, NULL, NULL, 'assets/images/bands/slider/SONSOFKEMET_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (33, NULL, NULL, 'assets/images/bands/slider/SONSOFKEMET_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (34, NULL, NULL, 'assets/images/bands/slider/THEBADPLUS_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (35, NULL, NULL, 'assets/images/bands/slider/THEBADPLUS_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (36, NULL, NULL, 'assets/images/bands/slider/THEBEATLES_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (37, NULL, NULL, 'assets/images/bands/slider/THEBEATLES_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (38, NULL, NULL, 'assets/images/bands/slider/THESUPREMES_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (39, NULL, NULL, 'assets/images/bands/slider/THESUPREMES_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (40, NULL, NULL, 'assets/images/bands/slider/TWICE_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (41, NULL, NULL, 'assets/images/bands/slider/U2_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (42, NULL, NULL, 'assets/images/bands/slider/U2_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (43, NULL, NULL, 'assets/images/bands/slider/VIVIJAZZQUARTET_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (44, NULL, NULL, 'assets/images/bands/slider/VIVIJAZZQUARTET_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (45, NULL, NULL, 'assets/images/bands/slider/WAYNESHORTER_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (46, NULL, NULL, 'assets/images/bands/slider/WAYNESHORTER_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (47, NULL, NULL, 'assets/images/bands/slider/ZARCORT_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (48, NULL, NULL, 'assets/images/bands/slider/ZARCORT_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (49, NULL, NULL, 'assets/images/bands/slider/7NOTAS7COLORES_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (50, NULL, NULL, 'assets/images/bands/slider/7NOTAS7COLORES_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (51, NULL, NULL, 'assets/images/bands/slider/ABBA_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (52, NULL, NULL, 'assets/images/bands/slider/ABBA_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (53, NULL, NULL, 'assets/images/bands/slider/ACDC_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (54, NULL, NULL, 'assets/images/bands/slider/ACDC_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (55, NULL, NULL, 'assets/images/bands/slider/AMYWINEHOUSE_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (56, NULL, NULL, 'assets/images/bands/slider/AMYWINEHOUSE_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (57, NULL, NULL, 'assets/images/bands/slider/BECKYG_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (58, NULL, NULL, 'assets/images/bands/slider/BECKYG_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (59, NULL, NULL, 'assets/images/bands/slider/BTS_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (60, NULL, NULL, 'assets/images/bands/slider/BTS_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (61, NULL, NULL, 'assets/images/bands/slider/CAMERATABARILOCHE_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (62, NULL, NULL, 'assets/images/bands/slider/CAMERATABARILOCHE_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (63, NULL, NULL, 'assets/images/bands/slider/COMMODORES_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (64, NULL, NULL, 'assets/images/bands/slider/COMMODORES_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (65, NULL, NULL, 'assets/images/bands/slider/CTANGANA_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (66, NULL, NULL, 'assets/images/bands/slider/CTANGANA_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (67, NULL, NULL, 'assets/images/bands/slider/CUARTETOSVIACH_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (68, NULL, NULL, 'assets/images/bands/slider/DELLAFUENTE_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (69, NULL, NULL, 'assets/images/bands/slider/DELLAFUENTE_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (70, NULL, NULL, 'assets/images/bands/slider/DEPECHEMODE_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (71, NULL, NULL, 'assets/images/bands/slider/DEPECHEMODE_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (72, NULL, NULL, 'assets/images/bands/slider/EARTH,WIND&FIRE_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (73, NULL, NULL, 'assets/images/bands/slider/EARTH,WIND&FIRE_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (74, NULL, NULL, 'assets/images/bands/slider/ELULTIMODELAFILA_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (75, NULL, NULL, 'assets/images/bands/slider/ELULTIMODELAFILA_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (76, NULL, NULL, 'assets/images/bands/slider/EMINEM_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (77, NULL, NULL, 'assets/images/bands/slider/EMINEM_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (78, NULL, NULL, 'assets/images/bands/slider/ILDIVO_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (79, NULL, NULL, 'assets/images/bands/slider/ILDIVO_2jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (80, NULL, NULL, 'assets/images/bands/slider/KISS_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (81, NULL, NULL, 'assets/images/bands/slider/KISS_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (82, NULL, NULL, 'assets/images/bands/slider/LAZOWI_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (83, NULL, NULL, 'assets/images/bands/slider/LAZOWI_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (84, NULL, NULL, 'assets/images/bands/slider/LOSSANTOS_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (85, NULL, NULL, 'assets/images/bands/slider/LOSSANTOS_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (86, NULL, NULL, 'assets/images/bands/slider/MADONA_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (87, NULL, NULL, 'assets/images/bands/slider/MADONA_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (88, NULL, NULL, 'assets/images/bands/slider/MAGNATIZ_1.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (89, NULL, NULL, 'assets/images/bands/slider/MAGNATIZ_2.jpg', NULL, NULL);
INSERT INTO public.configuration VALUES (90, NULL, NULL, '', NULL, NULL);


--
-- TOC entry 3038 (class 0 OID 54100)
-- Dependencies: 209
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.event VALUES (5, 'ROSALIA', '2020-09-07', 'BARCELONA', 'PALAU SANT JORDI', 'https://blog.ticketmaster.es/post/rosalia-confirma-dos-conciertos-unicos-en-espana-25070/', '2020-06-02');
INSERT INTO public.event VALUES (1, 'BANG BANG CON THE LIVE', '2020-07-27', 'ONLINE', NULL, 'https://www.weverseshop.io', '2020-06-02');
INSERT INTO public.event VALUES (6, 'ROSALIA', '2020-07-27', 'MADRID', 'WIZIN K CENTER', 'https://blog.ticketmaster.es/post/rosalia-confirma-dos-conciertos-unicos-en-espana-25070/', '2020-06-02');
INSERT INTO public.event VALUES (7, 'MAD COOL 2020', '2020-07-15', 'MADRID', NULL, 'https://www.ticketmaster.es/event/mad-cool-festival-2020-miercoles-dia-8-entradas/21261', '2020-06-02');


--
-- TOC entry 3034 (class 0 OID 54074)
-- Dependencies: 205
-- Data for Name: song; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.song VALUES (9, 'Un Pobre Con Dinero', 'Un Pobre Con Dinero', 'mmjpqOhBVKE', false);
INSERT INTO public.song VALUES (15, 'Bien :(', 'Bien :(', 'pEHx-vbB698', false);
INSERT INTO public.song VALUES (31, 'Straight Outta Compton', 'Straight Outta Compton', 'TMZi25Pq3T8', false);
INSERT INTO public.song VALUES (32, 'Fuk Da Police', 'Fuk Da Police', '51t1OsPSdBc', false);
INSERT INTO public.song VALUES (33, 'Vivi Jazz Quartet', 'Carinhoso', 'mJpo9I_F1Rk', false);
INSERT INTO public.song VALUES (34, 'Vivi Jazz Quartet', 'Stars Fell On Alabama', 'sqd4H2ca5vs', false);
INSERT INTO public.song VALUES (35, 'Vivi Jazz Quartet', 'You Know I´m No Good', '7zVyLS9AaDQ', false);
INSERT INTO public.song VALUES (42, 'These Are The Vistas', 'Smells Like Teen Spirit', '1j2l0HsFyvw', false);
INSERT INTO public.song VALUES (67, 'Follow Your Heart', 'Follow Your Heart', 'tMui4IVW0BM', false);
INSERT INTO public.song VALUES (68, 'Blackout', 'Blackout', '12WVaqW8KTg', false);
INSERT INTO public.song VALUES (69, 'Love At First Sting', 'Rock You Like A Hurricane', 'UCxgbOBVSfM', false);
INSERT INTO public.song VALUES (71, 'I Am', 'Boogie Wonderland', 'god7WAPv8f0', false);
INSERT INTO public.song VALUES (72, 'Nightsift', 'Nightsift', 'FrkEDe6Ljqs', false);
INSERT INTO public.song VALUES (73, 'That´s the Way of the World', 'Happy Feeling', 'D5UXwMNuq1A', false);
INSERT INTO public.song VALUES (1, 'Night Fever', 'Night Fever', 'SkypZuY6ZvA', false);
INSERT INTO public.song VALUES (2, 'Rap Plays #4', 'Sin tí', '_N5YIGT_R58', false);
INSERT INTO public.song VALUES (27, 'THE ULTIMATE BEE GEES', 'Too Much Heaven', 'nREV8bQJ1MA', false);
INSERT INTO public.song VALUES (3, 'Rap Plays #3', 'El chico invisible', 'Ld0NDDYXj-c', false);
INSERT INTO public.song VALUES (4, 'Recovery', 'Love The Way You Lie ft. Rihanna', 'uelHwf8o7_U', false);
INSERT INTO public.song VALUES (5, 'Music To Be Murdered By', 'Godzilla ft. Juice WRLD', '3qFvCPmee8U', false);
INSERT INTO public.song VALUES (8, '77', 'SIETE', 'xVH99ImEUO8', false);
INSERT INTO public.song VALUES (7, 'Hecho, Es Simple (XX Aniversario)', 'BUAH!', 'N1_A7RnyL7I', false);
INSERT INTO public.song VALUES (10, 'Redención', 'Agua Pasá ft. Kaze', '-1XG0bj8HIM', false);
INSERT INTO public.song VALUES (12, 'The Fall', 'THE FALL', 'AoyJni49EeI', false);
INSERT INTO public.song VALUES (14, 'Nunca Estoy', 'Nunca Estoy', 'U6phuhL1YbY', false);
INSERT INTO public.song VALUES (16, 'Mala Mujer', 'Mala Mujer', 'nsm4ReJaED0', false);
INSERT INTO public.song VALUES (17, 'Nubes', 'Nubes', '9VIf9c87Pvw', false);
INSERT INTO public.song VALUES (18, 'Yalo Yale', 'Yalo Yale', '30o6TGllUF4', false);
INSERT INTO public.song VALUES (19, 'Élite', 'Full Time (Prod. Based Kash)', 'AcL8rosOMkA', false);
INSERT INTO public.song VALUES (20, 'Filet Mignon', 'Filet Mignon', 'qJLWxkuAzEk', false);
INSERT INTO public.song VALUES (21, 'Boss', 'Boss', 'OulC0QLvN7A', false);
INSERT INTO public.song VALUES (22, 'Black Swan', 'Black Swan', '0lapF4DQPKQ', false);
INSERT INTO public.song VALUES (23, 'Love Yourself: Her', 'DNA', 'MBdVXkSdhwU', false);
INSERT INTO public.song VALUES (24, 'Feel Special', 'Feel Special', '3ymwOvzhwHs', false);
INSERT INTO public.song VALUES (25, 'Fancy You', 'FANCY', 'kOHB85vDuow', false);
INSERT INTO public.song VALUES (26, 'MORE & MORE', 'MORE & MORE', 'mH0_XpSHkZo', false);
INSERT INTO public.song VALUES (28, 'One', 'Bodyguard', 'Fx5XwIKCs3o', false);
INSERT INTO public.song VALUES (43, 'E.S.P', 'You Win Again', 'xviuC-0FwQ0', false);
INSERT INTO public.song VALUES (29, 'A puerto', 'Ciudad Maravilla', '66HpjozVM1o', false);
INSERT INTO public.song VALUES (30, 'Rara avis', 'Bajo Las Sábanas', 'DmcI8YiSOsE', false);
INSERT INTO public.song VALUES (36, 'Adam''s Apple', 'Footprints', 'LgaIUqH0w6c', false);
INSERT INTO public.song VALUES (37, 'Speak No Evil', 'Speak No Evil', 'fvRkGglLe-U', false);
INSERT INTO public.song VALUES (38, 'Speak No Evil', 'Infant Eyes', 'CYg_3pQN-LU', false);
INSERT INTO public.song VALUES (41, 'Made Possible', 'Seven Minute Mind', 'iNI-2i6t7Zs', false);
INSERT INTO public.song VALUES (44, 'Like a Prayer', 'Like a Prayer', '79fzeNUqQbQ', false);
INSERT INTO public.song VALUES (45, 'Like a Virgin', 'Like a Virgin', 's__rX_WL100', false);
INSERT INTO public.song VALUES (46, 'La Isla Bonita', 'La Isla Bonita', 'zpzdgmqIHOQ', false);
INSERT INTO public.song VALUES (47, 'The Immaculate Collection', 'Material Girl', '6p-lDYPR2P8', false);
INSERT INTO public.song VALUES (48, 'Dancing Queen', 'Dancing Queen', 'xFrGuyw1V8s', false);
INSERT INTO public.song VALUES (50, 'Otis Blue:Otis Redding Sings Soul', 'I have been loving you for too long', 'FioAvlnOUUw', false);
INSERT INTO public.song VALUES (53, 'Pain in my Heart', 'These Arms of Mine', 'VA3SbPSILA8', false);
INSERT INTO public.song VALUES (54, 'Dock of the Bay', 'Sitting on the Dock of the Bay', 'rTVjnBo96Ug', false);
INSERT INTO public.song VALUES (55, 'The Supremes A Go-Go', 'You Can´t Hurry Love', 'fQ7uXX9K7sK', false);
INSERT INTO public.song VALUES (56, 'Where did our Love Go', 'Where did our Love Go', 'qTBmgAOO0NW', false);
INSERT INTO public.song VALUES (57, 'Where did our Love Go', 'Baby Love', 'ZAWSiWtUK2s', false);
INSERT INTO public.song VALUES (61, '...And Justice For All', 'One', 'WM8bTdBs-cw', false);
INSERT INTO public.song VALUES (62, 'Master of Puppets', 'Master of Puppets', 'hx27NL_iqEM', false);
INSERT INTO public.song VALUES (63, 'Ride the Lightning', 'Fight Fire With Fire', 'xeK1E1HaMdY', false);
INSERT INTO public.song VALUES (64, 'Hot in the Shade', 'Forever ', 'NKDOTXpab04', false);
INSERT INTO public.song VALUES (65, 'Dressed to Kill', 'Rock And Roll All Nite', 'EFMD7Usflbg', false);
INSERT INTO public.song VALUES (66, 'Kiss', 'Strutter ', '1DDus_S-Tr4', false);
INSERT INTO public.song VALUES (49, 'Voulez-Vous', 'Does Your Mother Know', 'WkL7Fkigfn8', false);
INSERT INTO public.song VALUES (51, 'Bohemian Rhapsody', 'Don t Stop Me Now', 'HgzGwKwLmgM', false);
INSERT INTO public.song VALUES (52, 'The Game', 'Crazy Little Thing Called Love', 'zO6D_BAuYCI', false);
INSERT INTO public.song VALUES (6, 'Kamikaze', 'Venom', '8CdcCD5V-d8', false);
INSERT INTO public.song VALUES (11, 'lo mejor de SFDK', 'Malviviendo ', 'OqvQZnNxPx8', false);
INSERT INTO public.song VALUES (13, 'KHALED X COOKIN SOUL', 'Camaron', 'yTfdTQUsRUw', false);
INSERT INTO public.song VALUES (39, 'Lest We Forguet What We Came Here to Do', 'In The Castle Of My Skin', 'wmN3vFIukk4', false);
INSERT INTO public.song VALUES (40, 'Your Queen Is A Reptile ', 'My Queen Is Harriet Tubman', 'S00QHjIhDfk', false);
INSERT INTO public.song VALUES (70, 'The Best of Earth, Wind & Fire: Vol I', 'September', 'Gs069dndIYk', false);
INSERT INTO public.song VALUES (74, 'Midnight Magic', 'Sail On', 'zg-ivWxy5KE', false);
INSERT INTO public.song VALUES (75, 'Commodores', 'Easy', '3DSVMDmzCcA', false);
INSERT INTO public.song VALUES (135, 'greatest Hits', 'Caruso', 'e2gnkxS96eQ', false);
INSERT INTO public.song VALUES (117, 'Automatic for the People', 'Everybody hurts', '5rOiW_xY-kc', false);
INSERT INTO public.song VALUES (118, 'Goats Head Soup', 'Angie', 'GlSbQNHHy50', false);
INSERT INTO public.song VALUES (119, 'Gimme Shelter', 'Gimme Shelter', 'RbmS3tQJ7Os', false);
INSERT INTO public.song VALUES (120, 'Out of Heads', 'Satisfaction', 'RbmS3tQJ7Os', false);
INSERT INTO public.song VALUES (121, 'A Night at the Opera', 'Bohemian Rapsody', 'fJ9rUzIMcZQ', false);
INSERT INTO public.song VALUES (122, 'A Night at the Opera', 'Love of My Life', 'sUJkCXE4sAA', false);
INSERT INTO public.song VALUES (123, 'The Works', 'I Want to Break Free', 'f4Mc-NYPHaQ', false);
INSERT INTO public.song VALUES (124, 'Help!', 'Yesterday', 'jo505ZyaCbA', false);
INSERT INTO public.song VALUES (125, 'Hey Jude', 'Hey Jude', 'uNv_Bu_L6C8', false);
INSERT INTO public.song VALUES (76, 'Highway to Hell', 'Highway to Hell', 'r3U3yPoYvHM', false);
INSERT INTO public.song VALUES (77, 'Back In Black', 'Back In Black', 'pAgnJDJN4VA', false);
INSERT INTO public.song VALUES (78, 'Back in Black', 'You Shook Me All Night Long', 'Lo2qQmj0_h4', false);
INSERT INTO public.song VALUES (79, 'Hight Voltage', 'T.N.T.', 'NhsK5WExrnE', false);
INSERT INTO public.song VALUES (82, 'Songs of Experience', 'Sunday Bloody Sunday', 'EM4vblG6BVQ', false);
INSERT INTO public.song VALUES (83, 'Songs of Experience', 'I Still Havent Found What Im Looking For', 'e3-5YC_oHjE', false);
INSERT INTO public.song VALUES (84, 'The Josua Tree', 'With Or Without You', 'ujNeHIo7oTE', false);
INSERT INTO public.song VALUES (86, 'Nuevo Pequeño Catálogo de Seres y Estares', 'Canta por Mí', 'OLV8joj-Sm8', false);
INSERT INTO public.song VALUES (87, 'Cuando la Pobreza Entra por la Puerta, el Amor Salta por la Ventana', 'Querida Milagros', 'UQFf9vm9LI', false);
INSERT INTO public.song VALUES (89, 'Bizarre Love Triangle', 'Bizarre Love Triangle', 'tkOr12AQpnU', false);
INSERT INTO public.song VALUES (90, 'True Faith', 'True Faith', 'mfI1S0PKJR8', false);
INSERT INTO public.song VALUES (133, 'Tutto Il Divo', 'Don`t Cry for Me Argentina', 'DxIHWHF95DI', false);
INSERT INTO public.song VALUES (91, 'Enemigos delo Ajeno', 'Insurrección', 'soVfDVC_L3s', false);
INSERT INTO public.song VALUES (92, 'Thriller', 'Billie Jean', 'zi_XLOBDo_Y', false);
INSERT INTO public.song VALUES (93, 'BAD', 'The Way You Meke Me Feel', 'HzZ_urpj4As', false);
INSERT INTO public.song VALUES (94, 'History: Past, Present and Future, Book I', 'You Are not Alone', 'pAyKJAtDNCw', false);
INSERT INTO public.song VALUES (95, 'Some Great Reward', 'People Are People', 'MzGnX-MbYE4', false);
INSERT INTO public.song VALUES (96, 'Some Great Reward', 'Master And Servant', 'IsvfofcIE1Q', false);
INSERT INTO public.song VALUES (97, 'Some Great Reward', 'Blasphemous Rumours', 'o3EAzf5fDpY', false);
INSERT INTO public.song VALUES (98, '4 Minutes', '4 Minutes', 'aAQZPBwz2CI', false);
INSERT INTO public.song VALUES (99, 'Back to Black', 'Me and Mr Jones', 'QjbsHo6bM-Q', false);
INSERT INTO public.song VALUES (100, 'Ray of Light', 'Frozen', 'XS088Opj9o0', false);
INSERT INTO public.song VALUES (101, 'Back to Black', 'Back to Black', 'TJAfLE39ZZ8', false);
INSERT INTO public.song VALUES (102, 'Back to Black', 'Love Is a Losing Game', 'nMO5Ko_77Hk', false);
INSERT INTO public.song VALUES (103, 'Like a Virgin', 'Into the Groove', '52iW3lcpK5M', false);
INSERT INTO public.song VALUES (104, 'Con Altura', 'Con Altura', 'p7bfOZek9t4', false);
INSERT INTO public.song VALUES (134, 'Timeless', 'All of Me', 'vL0Fpe0Ok80', false);
INSERT INTO public.song VALUES (137, NULL, 'Adagio Live', 'w77SFM7Fksc', false);
INSERT INTO public.song VALUES (138, NULL, 'Io Te Voria', 'PSqzsJDI-zk', false);
INSERT INTO public.song VALUES (139, NULL, 'Der Tod', '6KK0JxEQhj0', false);
INSERT INTO public.song VALUES (140, NULL, 'Psalm 148', 'l4yL90D39Zc', false);
INSERT INTO public.song VALUES (105, 'Yo x Ti, Tu x Mi', 'Yo x Ti, Tu x Mi', '2j3x0VYnehg', false);
INSERT INTO public.song VALUES (106, 'El Mal Querer', 'Malamente', 'Rht7rBHuXW8', false);
INSERT INTO public.song VALUES (107, 'Dollar', 'Dollar', 'ngJwy17OiAM', false);
INSERT INTO public.song VALUES (108, 'Mala Santa', 'Mayores', 'GMFewiplIbw', false);
INSERT INTO public.song VALUES (109, 'Mala Santa', 'Mala Santa', 'w2Ro8cgsmss', false);
INSERT INTO public.song VALUES (110, 'Mala Santa', 'Te Supere', 'zRrgyaxf4Xg', false);
INSERT INTO public.song VALUES (111, 'A Quien Quiera Escuchar', 'La Mordidita', 'lBztnahrOFw', false);
INSERT INTO public.song VALUES (112, 'Vente Pa Casa', 'Vente Pa Casa', 'iOe6dI2JhgU', false);
INSERT INTO public.song VALUES (113, 'Cantalo', 'Cantalo', 'aG_A5Pj-5fs', false);
INSERT INTO public.song VALUES (115, 'Out of Time', 'Losing My Religion', 'xwtdhWltSIg', false);
INSERT INTO public.song VALUES (116, 'Out of Time', 'Shiny Happy People', 'YYOKMUTTDdA', false);
INSERT INTO public.song VALUES (126, 'Yellow Submarine', 'Yellow Submarine', 'm2uTFF_3MaA', false);
INSERT INTO public.song VALUES (127, NULL, 'String Quartet No.10 in E-Flat Major, Op 51', 'mDrk4VINpJY', false);
INSERT INTO public.song VALUES (128, NULL, 'String Quartet No.4 in C minor, Op 18', 'jxdSdJgstqY', false);
INSERT INTO public.song VALUES (129, NULL, 'Bagatelles, Op 47', 'M5zui0mx6jM', false);
INSERT INTO public.song VALUES (130, NULL, 'Danza Ritual del Fuego', 'X6ciM6aKwMg', false);
INSERT INTO public.song VALUES (131, NULL, 'Romance en Colastine de Guastavino', 'vPqVzoKwxXE', false);
INSERT INTO public.song VALUES (132, NULL, '10 Cantinelas Argentinas', 'jDHI2TzpWw4', false);
INSERT INTO public.song VALUES (85, 'Blue Monday', 'Blue Monday', 'iOEJHNZpeck', false);


--
-- TOC entry 3047 (class 0 OID 69970)
-- Dependencies: 218
-- Data for Name: ti18n; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3048 (class 0 OID 69975)
-- Dependencies: 219
-- Data for Name: ti18n_value; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3045 (class 0 OID 69946)
-- Dependencies: 216
-- Data for Name: trequest_statistics; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3049 (class 0 OID 107578)
-- Dependencies: 220
-- Data for Name: tuser; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3046 (class 0 OID 69962)
-- Dependencies: 217
-- Data for Name: tuser_preference; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 198
-- Name: band_band_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.band_band_id_seq', 49, true);


--
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 214
-- Name: band_category_band_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.band_category_band_song_id_seq', 57, true);


--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 202
-- Name: band_comment_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.band_comment_comment_id_seq', 17, true);


--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 210
-- Name: band_event_band_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.band_event_band_event_id_seq', 5, true);


--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 206
-- Name: band_song_band_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.band_song_band_song_id_seq', 134, true);


--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 200
-- Name: band_visits_visits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.band_visits_visits_id_seq', 76, true);


--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 196
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.category_category_id_seq', 12, true);


--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 212
-- Name: configuration_configuration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.configuration_configuration_id_seq', 90, true);


--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 208
-- Name: event_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.event_event_id_seq', 8, true);


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 204
-- Name: song_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.song_song_id_seq', 143, true);


--
-- TOC entry 2887 (class 2606 OID 54199)
-- Name: band_category band_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_category
    ADD CONSTRAINT band_category_pkey PRIMARY KEY (band_category_id);


--
-- TOC entry 2873 (class 2606 OID 54066)
-- Name: band_comment band_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_comment
    ADD CONSTRAINT band_comment_pkey PRIMARY KEY (comment_id);


--
-- TOC entry 2883 (class 2606 OID 54113)
-- Name: band_event band_event_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_event
    ADD CONSTRAINT band_event_pkey PRIMARY KEY (band_event_id);


--
-- TOC entry 2867 (class 2606 OID 54155)
-- Name: band band_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT band_name UNIQUE (band_name);


--
-- TOC entry 2869 (class 2606 OID 54040)
-- Name: band band_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT band_pkey PRIMARY KEY (band_id);


--
-- TOC entry 2879 (class 2606 OID 54087)
-- Name: band_song band_song_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_song
    ADD CONSTRAINT band_song_pkey PRIMARY KEY (band_song_id);


--
-- TOC entry 2871 (class 2606 OID 54053)
-- Name: band_visits band_visits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_visits
    ADD CONSTRAINT band_visits_pkey PRIMARY KEY (visits_id);


--
-- TOC entry 2865 (class 2606 OID 54029)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- TOC entry 2885 (class 2606 OID 54134)
-- Name: configuration configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.configuration
    ADD CONSTRAINT configuration_pkey PRIMARY KEY (configuration_id);


--
-- TOC entry 2881 (class 2606 OID 54105)
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (event_id);


--
-- TOC entry 2875 (class 2606 OID 54159)
-- Name: song song_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_name UNIQUE (song_name);


--
-- TOC entry 2877 (class 2606 OID 54079)
-- Name: song song_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pkey PRIMARY KEY (song_id);


--
-- TOC entry 2893 (class 2606 OID 69974)
-- Name: ti18n ti18n_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n
    ADD CONSTRAINT ti18n_pkey PRIMARY KEY (id_i18n);


--
-- TOC entry 2895 (class 2606 OID 69982)
-- Name: ti18n_value ti18n_value_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n_value
    ADD CONSTRAINT ti18n_value_pkey PRIMARY KEY (id_i18n_value);


--
-- TOC entry 2889 (class 2606 OID 69953)
-- Name: trequest_statistics trequest_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trequest_statistics
    ADD CONSTRAINT trequest_statistics_pkey PRIMARY KEY (id_request_statistics);


--
-- TOC entry 2891 (class 2606 OID 69969)
-- Name: tuser_preference tuser_preference_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_preference
    ADD CONSTRAINT tuser_preference_pkey PRIMARY KEY (id_user_preference);


--
-- TOC entry 2902 (class 2606 OID 54200)
-- Name: band_category band_category_band_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_category
    ADD CONSTRAINT band_category_band_id_fkey FOREIGN KEY (band_id) REFERENCES public.band(band_id);


--
-- TOC entry 2903 (class 2606 OID 54205)
-- Name: band_category band_category_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_category
    ADD CONSTRAINT band_category_song_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- TOC entry 2897 (class 2606 OID 54067)
-- Name: band_comment band_comment_band_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_comment
    ADD CONSTRAINT band_comment_band_id_fkey FOREIGN KEY (band_id) REFERENCES public.band(band_id);


--
-- TOC entry 2900 (class 2606 OID 54114)
-- Name: band_event band_event_band_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_event
    ADD CONSTRAINT band_event_band_id_fkey FOREIGN KEY (band_id) REFERENCES public.band(band_id);


--
-- TOC entry 2901 (class 2606 OID 54119)
-- Name: band_event band_event_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_event
    ADD CONSTRAINT band_event_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.event(event_id);


--
-- TOC entry 2898 (class 2606 OID 54088)
-- Name: band_song band_song_band_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_song
    ADD CONSTRAINT band_song_band_id_fkey FOREIGN KEY (band_id) REFERENCES public.band(band_id);


--
-- TOC entry 2899 (class 2606 OID 54093)
-- Name: band_song band_song_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_song
    ADD CONSTRAINT band_song_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.song(song_id);


--
-- TOC entry 2896 (class 2606 OID 54054)
-- Name: band_visits band_visits_band_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.band_visits
    ADD CONSTRAINT band_visits_band_id_fkey FOREIGN KEY (band_id) REFERENCES public.band(band_id);


-- Completed on 2023-02-03 12:42:38

--
-- PostgreSQL database dump complete
--

