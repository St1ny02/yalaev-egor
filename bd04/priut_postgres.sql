--
-- PostgreSQL database dump
--

\restrict ZXvMRYQHmChvxpfANetSGUJmfhmWMXYe4tb6JE9s9Dq6eqNWA2NBwVOhDKc7DBO

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.4

-- Started on 2026-11-05 17:06:55

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 221 (class 1259 OID 16526)
-- Name: animal; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.animal (
    id integer NOT NULL,
    name character varying(100),
    type character varying(100),
    age integer,
    conditions character varying(100),
    receipt_id integer NOT NULL
);


ALTER TABLE public.animal OWNER TO "SaetovYalaev";

--
-- TOC entry 219 (class 1259 OID 16524)
-- Name: animal_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 219
-- Name: animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;


--
-- TOC entry 220 (class 1259 OID 16525)
-- Name: animal_receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.animal_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_receipt_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 220
-- Name: animal_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.animal_receipt_id_seq OWNED BY public.animal.receipt_id;


--
-- TOC entry 238 (class 1259 OID 16597)
-- Name: application; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.application (
    id integer NOT NULL,
    status character varying(100),
    application_date date,
    employee_id integer NOT NULL,
    animal_id integer NOT NULL,
    candidate_id integer NOT NULL
);


ALTER TABLE public.application OWNER TO "SaetovYalaev";

--
-- TOC entry 236 (class 1259 OID 16595)
-- Name: application_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.application_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.application_animal_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 236
-- Name: application_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.application_animal_id_seq OWNED BY public.application.animal_id;


--
-- TOC entry 237 (class 1259 OID 16596)
-- Name: application_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.application_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.application_candidate_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 237
-- Name: application_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.application_candidate_id_seq OWNED BY public.application.candidate_id;


--
-- TOC entry 235 (class 1259 OID 16594)
-- Name: application_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.application_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.application_employee_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 235
-- Name: application_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.application_employee_id_seq OWNED BY public.application.employee_id;


--
-- TOC entry 234 (class 1259 OID 16593)
-- Name: application_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.application_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 234
-- Name: application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.application_id_seq OWNED BY public.application.id;


--
-- TOC entry 244 (class 1259 OID 16640)
-- Name: candidate; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.candidate (
    id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    post character varying(100)
);


ALTER TABLE public.candidate OWNER TO "SaetovYalaev";

--
-- TOC entry 243 (class 1259 OID 16639)
-- Name: candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 243
-- Name: candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.candidate_id_seq OWNED BY public.candidate.id;


--
-- TOC entry 233 (class 1259 OID 16572)
-- Name: employee; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    post character varying(100)
);


ALTER TABLE public.employee OWNER TO "SaetovYalaev";

--
-- TOC entry 232 (class 1259 OID 16571)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 232
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- TOC entry 231 (class 1259 OID 16564)
-- Name: enclosure; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.enclosure (
    id integer NOT NULL,
    destiny character varying(100),
    capacity integer
);


ALTER TABLE public.enclosure OWNER TO "SaetovYalaev";

--
-- TOC entry 230 (class 1259 OID 16563)
-- Name: enclosure_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.enclosure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.enclosure_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 230
-- Name: enclosure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.enclosure_id_seq OWNED BY public.enclosure.id;


--
-- TOC entry 229 (class 1259 OID 16554)
-- Name: placement; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.placement (
    id integer NOT NULL,
    enclosure_id integer NOT NULL,
    placement_start date,
    placement_end date
);


ALTER TABLE public.placement OWNER TO "SaetovYalaev";

--
-- TOC entry 228 (class 1259 OID 16553)
-- Name: placement_enclosure_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.placement_enclosure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.placement_enclosure_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 228
-- Name: placement_enclosure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.placement_enclosure_id_seq OWNED BY public.placement.enclosure_id;


--
-- TOC entry 227 (class 1259 OID 16552)
-- Name: placement_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.placement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.placement_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 227
-- Name: placement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.placement_id_seq OWNED BY public.placement.id;


--
-- TOC entry 226 (class 1259 OID 16539)
-- Name: receipt; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.receipt (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    receipt_date date,
    reason character varying(100),
    placement_id integer NOT NULL,
    lasttransfer_id integer NOT NULL
);


ALTER TABLE public.receipt OWNER TO "SaetovYalaev";

--
-- TOC entry 223 (class 1259 OID 16536)
-- Name: receipt_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.receipt_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipt_employee_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 223
-- Name: receipt_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.receipt_employee_id_seq OWNED BY public.receipt.employee_id;


--
-- TOC entry 222 (class 1259 OID 16535)
-- Name: receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipt_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 222
-- Name: receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.receipt_id_seq OWNED BY public.receipt.id;


--
-- TOC entry 225 (class 1259 OID 16538)
-- Name: receipt_lasttransfer_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.receipt_lasttransfer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipt_lasttransfer_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 225
-- Name: receipt_lasttransfer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.receipt_lasttransfer_id_seq OWNED BY public.receipt.lasttransfer_id;


--
-- TOC entry 224 (class 1259 OID 16537)
-- Name: receipt_placement_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.receipt_placement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipt_placement_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 224
-- Name: receipt_placement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.receipt_placement_id_seq OWNED BY public.receipt.placement_id;


--
-- TOC entry 242 (class 1259 OID 16627)
-- Name: transfer; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.transfer (
    id integer NOT NULL,
    transfer_date date,
    receipt_id integer NOT NULL,
    application_id integer NOT NULL
);


ALTER TABLE public.transfer OWNER TO "SaetovYalaev";

--
-- TOC entry 241 (class 1259 OID 16626)
-- Name: transfer_application_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.transfer_application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transfer_application_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 241
-- Name: transfer_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.transfer_application_id_seq OWNED BY public.transfer.application_id;


--
-- TOC entry 239 (class 1259 OID 16624)
-- Name: transfer_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.transfer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transfer_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 239
-- Name: transfer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.transfer_id_seq OWNED BY public.transfer.id;


--
-- TOC entry 240 (class 1259 OID 16625)
-- Name: transfer_receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.transfer_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transfer_receipt_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 240
-- Name: transfer_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.transfer_receipt_id_seq OWNED BY public.transfer.receipt_id;


--
-- TOC entry 3334 (class 2604 OID 16529)
-- Name: animal id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);


--
-- TOC entry 3335 (class 2604 OID 16530)
-- Name: animal receipt_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.animal ALTER COLUMN receipt_id SET DEFAULT nextval('public.animal_receipt_id_seq'::regclass);


--
-- TOC entry 3344 (class 2604 OID 16600)
-- Name: application id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.application ALTER COLUMN id SET DEFAULT nextval('public.application_id_seq'::regclass);


--
-- TOC entry 3345 (class 2604 OID 16601)
-- Name: application employee_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.application ALTER COLUMN employee_id SET DEFAULT nextval('public.application_employee_id_seq'::regclass);


--
-- TOC entry 3346 (class 2604 OID 16602)
-- Name: application animal_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.application ALTER COLUMN animal_id SET DEFAULT nextval('public.application_animal_id_seq'::regclass);


--
-- TOC entry 3347 (class 2604 OID 16603)
-- Name: application candidate_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.application ALTER COLUMN candidate_id SET DEFAULT nextval('public.application_candidate_id_seq'::regclass);


--
-- TOC entry 3351 (class 2604 OID 16643)
-- Name: candidate id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.candidate ALTER COLUMN id SET DEFAULT nextval('public.candidate_id_seq'::regclass);


--
-- TOC entry 3343 (class 2604 OID 16575)
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- TOC entry 3342 (class 2604 OID 16567)
-- Name: enclosure id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.enclosure ALTER COLUMN id SET DEFAULT nextval('public.enclosure_id_seq'::regclass);


--
-- TOC entry 3340 (class 2604 OID 16557)
-- Name: placement id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.placement ALTER COLUMN id SET DEFAULT nextval('public.placement_id_seq'::regclass);


--
-- TOC entry 3341 (class 2604 OID 16558)
-- Name: placement enclosure_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.placement ALTER COLUMN enclosure_id SET DEFAULT nextval('public.placement_enclosure_id_seq'::regclass);


--
-- TOC entry 3336 (class 2604 OID 16542)
-- Name: receipt id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.receipt ALTER COLUMN id SET DEFAULT nextval('public.receipt_id_seq'::regclass);


--
-- TOC entry 3337 (class 2604 OID 16543)
-- Name: receipt employee_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.receipt ALTER COLUMN employee_id SET DEFAULT nextval('public.receipt_employee_id_seq'::regclass);


--
-- TOC entry 3338 (class 2604 OID 16544)
-- Name: receipt placement_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.receipt ALTER COLUMN placement_id SET DEFAULT nextval('public.receipt_placement_id_seq'::regclass);


--
-- TOC entry 3339 (class 2604 OID 16545)
-- Name: receipt lasttransfer_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.receipt ALTER COLUMN lasttransfer_id SET DEFAULT nextval('public.receipt_lasttransfer_id_seq'::regclass);


--
-- TOC entry 3348 (class 2604 OID 16630)
-- Name: transfer id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.transfer ALTER COLUMN id SET DEFAULT nextval('public.transfer_id_seq'::regclass);


--
-- TOC entry 3349 (class 2604 OID 16631)
-- Name: transfer receipt_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.transfer ALTER COLUMN receipt_id SET DEFAULT nextval('public.transfer_receipt_id_seq'::regclass);


--
-- TOC entry 3350 (class 2604 OID 16632)
-- Name: transfer application_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.transfer ALTER COLUMN application_id SET DEFAULT nextval('public.transfer_application_id_seq'::regclass);


--
-- TOC entry 3517 (class 0 OID 16526)
-- Dependencies: 221
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.animal (id, name, type, age, conditions, receipt_id) FROM stdin;
1	Ярик	собака	67	Храмота	1
2	Яникс	кошка	5	требует спокойствия	2
3	Флекс	собака	69		3
\.


--
-- TOC entry 3534 (class 0 OID 16597)
-- Dependencies: 238
-- Data for Name: application; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.application (id, status, application_date, employee_id, animal_id, candidate_id) FROM stdin;
1	на рассмотрении	2026-09-10	1	1	1
2	отклонена	2026-09-12	2	2	2
\.


--
-- TOC entry 3540 (class 0 OID 16640)
-- Dependencies: 244
-- Data for Name: candidate; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.candidate (id, first_name, last_name, post) FROM stdin;
1	Игорь	Петров	учитель
2	Альберт	Безрукий	прродавец
\.


--
-- TOC entry 3529 (class 0 OID 16572)
-- Dependencies: 233
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.employee (id, first_name, last_name, post) FROM stdin;
1	Иванова	Анна	ветеринар
2	Ялаев	Богдан	администратор
\.


--
-- TOC entry 3527 (class 0 OID 16564)
-- Dependencies: 231
-- Data for Name: enclosure; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.enclosure (id, destiny, capacity) FROM stdin;
1	пресмыкающиеся	4
2	водоплавающие	2
\.


--
-- TOC entry 3525 (class 0 OID 16554)
-- Dependencies: 229
-- Data for Name: placement; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.placement (id, enclosure_id, placement_start, placement_end) FROM stdin;
1	1	2026-09-01	2026-09-08
2	2	2026-09-13	2026-09-15
\.


--
-- TOC entry 3522 (class 0 OID 16539)
-- Dependencies: 226
-- Data for Name: receipt; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.receipt (id, employee_id, receipt_date, reason, placement_id, lasttransfer_id) FROM stdin;
1	1	2026-09-01	найдено	1	1
2	2	2026-09-13	возврат	2	2
\.


--
-- TOC entry 3538 (class 0 OID 16627)
-- Dependencies: 242
-- Data for Name: transfer; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.transfer (id, transfer_date, receipt_id, application_id) FROM stdin;
1	2026-09-22	1	1
\.


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 219
-- Name: animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.animal_id_seq', 3, true);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 220
-- Name: animal_receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.animal_receipt_id_seq', 3, true);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 236
-- Name: application_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.application_animal_id_seq', 2, true);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 237
-- Name: application_candidate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.application_candidate_id_seq', 2, true);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 235
-- Name: application_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.application_employee_id_seq', 2, true);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 234
-- Name: application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.application_id_seq', 2, true);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 243
-- Name: candidate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.candidate_id_seq', 2, true);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 232
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.employee_id_seq', 2, true);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 230
-- Name: enclosure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.enclosure_id_seq', 2, true);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 228
-- Name: placement_enclosure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.placement_enclosure_id_seq', 2, true);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 227
-- Name: placement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.placement_id_seq', 2, true);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 223
-- Name: receipt_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.receipt_employee_id_seq', 2, true);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 222
-- Name: receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.receipt_id_seq', 2, true);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 225
-- Name: receipt_lasttransfer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.receipt_lasttransfer_id_seq', 2, true);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 224
-- Name: receipt_placement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.receipt_placement_id_seq', 2, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 241
-- Name: transfer_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.transfer_application_id_seq', 1, true);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 239
-- Name: transfer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.transfer_id_seq', 1, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 240
-- Name: transfer_receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.transfer_receipt_id_seq', 1, true);


--
-- TOC entry 3353 (class 2606 OID 16534)
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);


--
-- TOC entry 3363 (class 2606 OID 16609)
-- Name: application application_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT application_pkey PRIMARY KEY (id);


--
-- TOC entry 3367 (class 2606 OID 16646)
-- Name: candidate candidate_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.candidate
    ADD CONSTRAINT candidate_pkey PRIMARY KEY (id);


--
-- TOC entry 3361 (class 2606 OID 16578)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3359 (class 2606 OID 16570)
-- Name: enclosure enclosure_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.enclosure
    ADD CONSTRAINT enclosure_pkey PRIMARY KEY (id);


--
-- TOC entry 3357 (class 2606 OID 16562)
-- Name: placement placement_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.placement
    ADD CONSTRAINT placement_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 16551)
-- Name: receipt receipt_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.receipt
    ADD CONSTRAINT receipt_pkey PRIMARY KEY (id);


--
-- TOC entry 3365 (class 2606 OID 16637)
-- Name: transfer transfer_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_pkey PRIMARY KEY (id);


-- Completed on 2026-11-05 17:06:55

--
-- PostgreSQL database dump complete
--

\unrestrict ZXvMRYQHmChvxpfANetSGUJmfhmWMXYe4tb6JE9s9Dq6eqNWA2NBwVOhDKc7DBO

