--
-- PostgreSQL database dump
--

\restrict dRgQy4WFD0aWEVpj5fwaKeg36LDIZ1M26QsBXqwEnZ3P0Th5vsIufu2UmBhrjpq

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.4

-- Started on 2026-11-16 22:39:39

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
-- TOC entry 226 (class 1259 OID 16403)
-- Name: addmission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addmission (
    id integer CONSTRAINT receipt_id_not_null NOT NULL,
    employee_id integer CONSTRAINT receipt_employee_id_not_null NOT NULL,
    addmission_date date,
    reason character varying(100),
    placement_id integer CONSTRAINT receipt_placement_id_not_null NOT NULL,
    lasttransfer_id integer CONSTRAINT receipt_lasttransfer_id_not_null NOT NULL
);


ALTER TABLE public.addmission OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16390)
-- Name: animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animal (
    id integer NOT NULL,
    name character varying(100),
    type character varying(100),
    age integer,
    conditions character varying(100),
    addmission_id integer CONSTRAINT animal_receipt_id_not_null NOT NULL
);


ALTER TABLE public.animal OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16388)
-- Name: animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_id_seq OWNER TO postgres;

--
-- TOC entry 5122 (class 0 OID 0)
-- Dependencies: 219
-- Name: animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;


--
-- TOC entry 220 (class 1259 OID 16389)
-- Name: animal_receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_receipt_id_seq OWNER TO postgres;

--
-- TOC entry 5123 (class 0 OID 0)
-- Dependencies: 220
-- Name: animal_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_receipt_id_seq OWNED BY public.animal.addmission_id;


--
-- TOC entry 242 (class 1259 OID 16461)
-- Name: application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.application (
    id integer NOT NULL,
    status character varying(100),
    application_date date,
    employee_id integer NOT NULL,
    animal_id integer NOT NULL,
    candidate_id integer NOT NULL
);


ALTER TABLE public.application OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16459)
-- Name: application_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.application_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.application_animal_id_seq OWNER TO postgres;

--
-- TOC entry 5124 (class 0 OID 0)
-- Dependencies: 240
-- Name: application_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.application_animal_id_seq OWNED BY public.application.animal_id;


--
-- TOC entry 241 (class 1259 OID 16460)
-- Name: application_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.application_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.application_candidate_id_seq OWNER TO postgres;

--
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 241
-- Name: application_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.application_candidate_id_seq OWNED BY public.application.candidate_id;


--
-- TOC entry 239 (class 1259 OID 16458)
-- Name: application_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.application_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.application_employee_id_seq OWNER TO postgres;

--
-- TOC entry 5126 (class 0 OID 0)
-- Dependencies: 239
-- Name: application_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.application_employee_id_seq OWNED BY public.application.employee_id;


--
-- TOC entry 238 (class 1259 OID 16457)
-- Name: application_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.application_id_seq OWNER TO postgres;

--
-- TOC entry 5127 (class 0 OID 0)
-- Dependencies: 238
-- Name: application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.application_id_seq OWNED BY public.application.id;


--
-- TOC entry 244 (class 1259 OID 16475)
-- Name: candidate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate (
    id integer NOT NULL,
    first_name character varying(100),
    post character varying(100)
);


ALTER TABLE public.candidate OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16474)
-- Name: candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_id_seq OWNER TO postgres;

--
-- TOC entry 5128 (class 0 OID 0)
-- Dependencies: 243
-- Name: candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_id_seq OWNED BY public.candidate.id;


--
-- TOC entry 233 (class 1259 OID 16436)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    post character varying(100)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16435)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_id_seq OWNER TO postgres;

--
-- TOC entry 5129 (class 0 OID 0)
-- Dependencies: 232
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- TOC entry 231 (class 1259 OID 16428)
-- Name: enclosure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enclosure (
    id integer NOT NULL,
    destiny character varying(100),
    capacity integer
);


ALTER TABLE public.enclosure OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16427)
-- Name: enclosure_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enclosure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.enclosure_id_seq OWNER TO postgres;

--
-- TOC entry 5130 (class 0 OID 0)
-- Dependencies: 230
-- Name: enclosure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enclosure_id_seq OWNED BY public.enclosure.id;


--
-- TOC entry 229 (class 1259 OID 16418)
-- Name: placement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.placement (
    id integer NOT NULL,
    enclosure_id integer NOT NULL,
    placement_start date,
    placement_end date
);


ALTER TABLE public.placement OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16417)
-- Name: placement_enclosure_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.placement_enclosure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.placement_enclosure_id_seq OWNER TO postgres;

--
-- TOC entry 5131 (class 0 OID 0)
-- Dependencies: 228
-- Name: placement_enclosure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.placement_enclosure_id_seq OWNED BY public.placement.enclosure_id;


--
-- TOC entry 227 (class 1259 OID 16416)
-- Name: placement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.placement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.placement_id_seq OWNER TO postgres;

--
-- TOC entry 5132 (class 0 OID 0)
-- Dependencies: 227
-- Name: placement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.placement_id_seq OWNED BY public.placement.id;


--
-- TOC entry 223 (class 1259 OID 16400)
-- Name: receipt_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receipt_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipt_employee_id_seq OWNER TO postgres;

--
-- TOC entry 5133 (class 0 OID 0)
-- Dependencies: 223
-- Name: receipt_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receipt_employee_id_seq OWNED BY public.addmission.employee_id;


--
-- TOC entry 222 (class 1259 OID 16399)
-- Name: receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipt_id_seq OWNER TO postgres;

--
-- TOC entry 5134 (class 0 OID 0)
-- Dependencies: 222
-- Name: receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receipt_id_seq OWNED BY public.addmission.id;


--
-- TOC entry 225 (class 1259 OID 16402)
-- Name: receipt_lasttransfer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receipt_lasttransfer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipt_lasttransfer_id_seq OWNER TO postgres;

--
-- TOC entry 5135 (class 0 OID 0)
-- Dependencies: 225
-- Name: receipt_lasttransfer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receipt_lasttransfer_id_seq OWNED BY public.addmission.lasttransfer_id;


--
-- TOC entry 224 (class 1259 OID 16401)
-- Name: receipt_placement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receipt_placement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipt_placement_id_seq OWNER TO postgres;

--
-- TOC entry 5136 (class 0 OID 0)
-- Dependencies: 224
-- Name: receipt_placement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receipt_placement_id_seq OWNED BY public.addmission.placement_id;


--
-- TOC entry 237 (class 1259 OID 16446)
-- Name: transfer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transfer (
    id integer NOT NULL,
    addmission_id integer CONSTRAINT transfer_receipt_id_not_null NOT NULL,
    transfer_date date,
    application_id integer NOT NULL
);


ALTER TABLE public.transfer OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16445)
-- Name: transfer_application_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transfer_application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transfer_application_id_seq OWNER TO postgres;

--
-- TOC entry 5137 (class 0 OID 0)
-- Dependencies: 236
-- Name: transfer_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transfer_application_id_seq OWNED BY public.transfer.application_id;


--
-- TOC entry 234 (class 1259 OID 16443)
-- Name: transfer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transfer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transfer_id_seq OWNER TO postgres;

--
-- TOC entry 5138 (class 0 OID 0)
-- Dependencies: 234
-- Name: transfer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transfer_id_seq OWNED BY public.transfer.id;


--
-- TOC entry 235 (class 1259 OID 16444)
-- Name: transfer_receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transfer_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transfer_receipt_id_seq OWNER TO postgres;

--
-- TOC entry 5139 (class 0 OID 0)
-- Dependencies: 235
-- Name: transfer_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transfer_receipt_id_seq OWNED BY public.transfer.addmission_id;


--
-- TOC entry 4903 (class 2604 OID 16406)
-- Name: addmission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addmission ALTER COLUMN id SET DEFAULT nextval('public.receipt_id_seq'::regclass);


--
-- TOC entry 4904 (class 2604 OID 16407)
-- Name: addmission employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addmission ALTER COLUMN employee_id SET DEFAULT nextval('public.receipt_employee_id_seq'::regclass);


--
-- TOC entry 4905 (class 2604 OID 16408)
-- Name: addmission placement_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addmission ALTER COLUMN placement_id SET DEFAULT nextval('public.receipt_placement_id_seq'::regclass);


--
-- TOC entry 4906 (class 2604 OID 16409)
-- Name: addmission lasttransfer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addmission ALTER COLUMN lasttransfer_id SET DEFAULT nextval('public.receipt_lasttransfer_id_seq'::regclass);


--
-- TOC entry 4901 (class 2604 OID 16393)
-- Name: animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);


--
-- TOC entry 4902 (class 2604 OID 16394)
-- Name: animal addmission_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN addmission_id SET DEFAULT nextval('public.animal_receipt_id_seq'::regclass);


--
-- TOC entry 4914 (class 2604 OID 16464)
-- Name: application id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.application ALTER COLUMN id SET DEFAULT nextval('public.application_id_seq'::regclass);


--
-- TOC entry 4915 (class 2604 OID 16465)
-- Name: application employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.application ALTER COLUMN employee_id SET DEFAULT nextval('public.application_employee_id_seq'::regclass);


--
-- TOC entry 4916 (class 2604 OID 16466)
-- Name: application animal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.application ALTER COLUMN animal_id SET DEFAULT nextval('public.application_animal_id_seq'::regclass);


--
-- TOC entry 4917 (class 2604 OID 16467)
-- Name: application candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.application ALTER COLUMN candidate_id SET DEFAULT nextval('public.application_candidate_id_seq'::regclass);


--
-- TOC entry 4918 (class 2604 OID 16478)
-- Name: candidate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate ALTER COLUMN id SET DEFAULT nextval('public.candidate_id_seq'::regclass);


--
-- TOC entry 4910 (class 2604 OID 16439)
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- TOC entry 4909 (class 2604 OID 16431)
-- Name: enclosure id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enclosure ALTER COLUMN id SET DEFAULT nextval('public.enclosure_id_seq'::regclass);


--
-- TOC entry 4907 (class 2604 OID 16421)
-- Name: placement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placement ALTER COLUMN id SET DEFAULT nextval('public.placement_id_seq'::regclass);


--
-- TOC entry 4908 (class 2604 OID 16422)
-- Name: placement enclosure_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placement ALTER COLUMN enclosure_id SET DEFAULT nextval('public.placement_enclosure_id_seq'::regclass);


--
-- TOC entry 4911 (class 2604 OID 16449)
-- Name: transfer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer ALTER COLUMN id SET DEFAULT nextval('public.transfer_id_seq'::regclass);


--
-- TOC entry 4912 (class 2604 OID 16450)
-- Name: transfer addmission_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer ALTER COLUMN addmission_id SET DEFAULT nextval('public.transfer_receipt_id_seq'::regclass);


--
-- TOC entry 4913 (class 2604 OID 16451)
-- Name: transfer application_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer ALTER COLUMN application_id SET DEFAULT nextval('public.transfer_application_id_seq'::regclass);


--
-- TOC entry 5098 (class 0 OID 16403)
-- Dependencies: 226
-- Data for Name: addmission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addmission (id, employee_id, addmission_date, reason, placement_id, lasttransfer_id) FROM stdin;
2	1	2026-09-03	возврат	2	2
1	1	2026-09-01	найден	2	1
3	1	2026-09-11	найден	1	2
\.


--
-- TOC entry 5093 (class 0 OID 16390)
-- Dependencies: 221
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animal (id, name, type, age, conditions, addmission_id) FROM stdin;
1	Ярик	собака	67	храмота	1
2	Яникс	кот	5	требует спокойствия	2
3	Флекс	собака	69		3
\.


--
-- TOC entry 5114 (class 0 OID 16461)
-- Dependencies: 242
-- Data for Name: application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.application (id, status, application_date, employee_id, animal_id, candidate_id) FROM stdin;
1	на рассмотрении	2026-09-05	1	10	1
2	отклонена	2026-09-15	2	12	2
\.


--
-- TOC entry 5116 (class 0 OID 16475)
-- Dependencies: 244
-- Data for Name: candidate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.candidate (id, first_name, post) FROM stdin;
1	Артем	директор завода по производству кириешек
2	Алена	повар
\.


--
-- TOC entry 5105 (class 0 OID 16436)
-- Dependencies: 233
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (id, first_name, last_name, post) FROM stdin;
1	Ангелина	Иванова	ветеринар
2	Борис	Ялаев	администратор
\.


--
-- TOC entry 5103 (class 0 OID 16428)
-- Dependencies: 231
-- Data for Name: enclosure; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enclosure (id, destiny, capacity) FROM stdin;
1	пресмыкающиеся	4
2	водоплавающие	2
\.


--
-- TOC entry 5101 (class 0 OID 16418)
-- Dependencies: 229
-- Data for Name: placement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.placement (id, enclosure_id, placement_start, placement_end) FROM stdin;
1	1	2026-09-01	2026-09-08
2	2	2026-09-05	2026-09-10
\.


--
-- TOC entry 5109 (class 0 OID 16446)
-- Dependencies: 237
-- Data for Name: transfer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transfer (id, addmission_id, transfer_date, application_id) FROM stdin;
1	1	2026-10-01	1
2	2	2026-09-27	2
\.


--
-- TOC entry 5140 (class 0 OID 0)
-- Dependencies: 219
-- Name: animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_id_seq', 12, true);


--
-- TOC entry 5141 (class 0 OID 0)
-- Dependencies: 220
-- Name: animal_receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_receipt_id_seq', 9, true);


--
-- TOC entry 5142 (class 0 OID 0)
-- Dependencies: 240
-- Name: application_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.application_animal_id_seq', 2, true);


--
-- TOC entry 5143 (class 0 OID 0)
-- Dependencies: 241
-- Name: application_candidate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.application_candidate_id_seq', 2, true);


--
-- TOC entry 5144 (class 0 OID 0)
-- Dependencies: 239
-- Name: application_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.application_employee_id_seq', 2, true);


--
-- TOC entry 5145 (class 0 OID 0)
-- Dependencies: 238
-- Name: application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.application_id_seq', 2, true);


--
-- TOC entry 5146 (class 0 OID 0)
-- Dependencies: 243
-- Name: candidate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.candidate_id_seq', 2, true);


--
-- TOC entry 5147 (class 0 OID 0)
-- Dependencies: 232
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 2, true);


--
-- TOC entry 5148 (class 0 OID 0)
-- Dependencies: 230
-- Name: enclosure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enclosure_id_seq', 2, true);


--
-- TOC entry 5149 (class 0 OID 0)
-- Dependencies: 228
-- Name: placement_enclosure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.placement_enclosure_id_seq', 2, true);


--
-- TOC entry 5150 (class 0 OID 0)
-- Dependencies: 227
-- Name: placement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.placement_id_seq', 2, true);


--
-- TOC entry 5151 (class 0 OID 0)
-- Dependencies: 223
-- Name: receipt_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receipt_employee_id_seq', 6, true);


--
-- TOC entry 5152 (class 0 OID 0)
-- Dependencies: 222
-- Name: receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receipt_id_seq', 6, true);


--
-- TOC entry 5153 (class 0 OID 0)
-- Dependencies: 225
-- Name: receipt_lasttransfer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receipt_lasttransfer_id_seq', 6, true);


--
-- TOC entry 5154 (class 0 OID 0)
-- Dependencies: 224
-- Name: receipt_placement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receipt_placement_id_seq', 6, true);


--
-- TOC entry 5155 (class 0 OID 0)
-- Dependencies: 236
-- Name: transfer_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transfer_application_id_seq', 2, true);


--
-- TOC entry 5156 (class 0 OID 0)
-- Dependencies: 234
-- Name: transfer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transfer_id_seq', 2, true);


--
-- TOC entry 5157 (class 0 OID 0)
-- Dependencies: 235
-- Name: transfer_receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transfer_receipt_id_seq', 2, true);


--
-- TOC entry 4920 (class 2606 OID 16398)
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);


--
-- TOC entry 4932 (class 2606 OID 16473)
-- Name: application application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT application_pkey PRIMARY KEY (id);


--
-- TOC entry 4934 (class 2606 OID 16481)
-- Name: candidate candidate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate
    ADD CONSTRAINT candidate_pkey PRIMARY KEY (id);


--
-- TOC entry 4928 (class 2606 OID 16442)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 4926 (class 2606 OID 16434)
-- Name: enclosure enclosure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enclosure
    ADD CONSTRAINT enclosure_pkey PRIMARY KEY (id);


--
-- TOC entry 4924 (class 2606 OID 16426)
-- Name: placement placement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placement
    ADD CONSTRAINT placement_pkey PRIMARY KEY (id);


--
-- TOC entry 4922 (class 2606 OID 16415)
-- Name: addmission receipt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addmission
    ADD CONSTRAINT receipt_pkey PRIMARY KEY (id);


--
-- TOC entry 4930 (class 2606 OID 16456)
-- Name: transfer transfer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_pkey PRIMARY KEY (id);


--
-- TOC entry 4936 (class 2606 OID 16597)
-- Name: addmission fk_addmission_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addmission
    ADD CONSTRAINT fk_addmission_employee FOREIGN KEY (employee_id) REFERENCES public.employee(id);


--
-- TOC entry 4937 (class 2606 OID 16607)
-- Name: addmission fk_addmission_lasttransfer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addmission
    ADD CONSTRAINT fk_addmission_lasttransfer FOREIGN KEY (lasttransfer_id) REFERENCES public.transfer(id);


--
-- TOC entry 4938 (class 2606 OID 16602)
-- Name: addmission fk_addmission_placement; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addmission
    ADD CONSTRAINT fk_addmission_placement FOREIGN KEY (placement_id) REFERENCES public.placement(id);


--
-- TOC entry 4935 (class 2606 OID 16622)
-- Name: animal fk_animal_addmission; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fk_animal_addmission FOREIGN KEY (addmission_id) REFERENCES public.addmission(id);


--
-- TOC entry 4942 (class 2606 OID 16532)
-- Name: application fk_application_candidate; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT fk_application_candidate FOREIGN KEY (candidate_id) REFERENCES public.candidate(id);


--
-- TOC entry 4943 (class 2606 OID 16552)
-- Name: application fk_application_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT fk_application_employee FOREIGN KEY (employee_id) REFERENCES public.employee(id);


--
-- TOC entry 4939 (class 2606 OID 16627)
-- Name: placement fk_placement_enclosure; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placement
    ADD CONSTRAINT fk_placement_enclosure FOREIGN KEY (enclosure_id) REFERENCES public.enclosure(id);


--
-- TOC entry 4940 (class 2606 OID 16632)
-- Name: transfer fk_transfer_addmission; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT fk_transfer_addmission FOREIGN KEY (addmission_id) REFERENCES public.addmission(id);


--
-- TOC entry 4941 (class 2606 OID 16637)
-- Name: transfer fk_transfer_application; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT fk_transfer_application FOREIGN KEY (application_id) REFERENCES public.application(id);


-- Completed on 2026-11-16 22:39:39

--
-- PostgreSQL database dump complete
--

\unrestrict dRgQy4WFD0aWEVpj5fwaKeg36LDIZ1M26QsBXqwEnZ3P0Th5vsIufu2UmBhrjpq

