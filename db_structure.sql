--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: final_project; Type: SCHEMA; Schema: -; Owner: sushivan
--

CREATE SCHEMA final_project;


ALTER SCHEMA final_project OWNER TO sushivan;

SET search_path = final_project, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: CONCEPT; Type: TABLE; Schema: final_project; Owner: sushivan; Tablespace: 
--

CREATE TABLE "CONCEPT" (
    concept_id integer NOT NULL,
    concept_name text,
    description text,
    "from" time without time zone,
    "to" time without time zone
);


ALTER TABLE final_project."CONCEPT" OWNER TO sushivan;

--
-- Name: CONCEPT_concept_id_seq; Type: SEQUENCE; Schema: final_project; Owner: sushivan
--

CREATE SEQUENCE "CONCEPT_concept_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE final_project."CONCEPT_concept_id_seq" OWNER TO sushivan;

--
-- Name: CONCEPT_concept_id_seq; Type: SEQUENCE OWNED BY; Schema: final_project; Owner: sushivan
--

ALTER SEQUENCE "CONCEPT_concept_id_seq" OWNED BY "CONCEPT".concept_id;


--
-- Name: CUSTOMER; Type: TABLE; Schema: final_project; Owner: sushivan; Tablespace: 
--

CREATE TABLE "CUSTOMER" (
    customer_id integer NOT NULL,
    customer_name text,
    contact integer,
    email_id text,
    discount integer
);


ALTER TABLE final_project."CUSTOMER" OWNER TO sushivan;

--
-- Name: CUSTOMER_customer_id_seq; Type: SEQUENCE; Schema: final_project; Owner: sushivan
--

CREATE SEQUENCE "CUSTOMER_customer_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE final_project."CUSTOMER_customer_id_seq" OWNER TO sushivan;

--
-- Name: CUSTOMER_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: final_project; Owner: sushivan
--

ALTER SEQUENCE "CUSTOMER_customer_id_seq" OWNED BY "CUSTOMER".customer_id;


--
-- Name: EMPLOYEE; Type: TABLE; Schema: final_project; Owner: sushivan; Tablespace: 
--

CREATE TABLE "EMPLOYEE" (
    employee_id integer NOT NULL,
    employee_type text,
    employee_name text,
    contact_num text,
    address text,
    email_id text,
    payrate integer
);


ALTER TABLE final_project."EMPLOYEE" OWNER TO sushivan;

--
-- Name: EMPLOYEE_ASSIGNMENT; Type: TABLE; Schema: final_project; Owner: sushivan; Tablespace: 
--

CREATE TABLE "EMPLOYEE_ASSIGNMENT" (
    serial_num integer NOT NULL,
    employee_id integer NOT NULL,
    date date,
    "from" timestamp without time zone,
    "to" timestamp without time zone,
    concept_id integer NOT NULL
);


ALTER TABLE final_project."EMPLOYEE_ASSIGNMENT" OWNER TO sushivan;

--
-- Name: EMPLOYEE_ASSIGNMENT_serial_num_seq; Type: SEQUENCE; Schema: final_project; Owner: sushivan
--

CREATE SEQUENCE "EMPLOYEE_ASSIGNMENT_serial_num_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE final_project."EMPLOYEE_ASSIGNMENT_serial_num_seq" OWNER TO sushivan;

--
-- Name: EMPLOYEE_ASSIGNMENT_serial_num_seq; Type: SEQUENCE OWNED BY; Schema: final_project; Owner: sushivan
--

ALTER SEQUENCE "EMPLOYEE_ASSIGNMENT_serial_num_seq" OWNED BY "EMPLOYEE_ASSIGNMENT".serial_num;


--
-- Name: EMPLOYEE_employee_id_seq; Type: SEQUENCE; Schema: final_project; Owner: sushivan
--

CREATE SEQUENCE "EMPLOYEE_employee_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE final_project."EMPLOYEE_employee_id_seq" OWNER TO sushivan;

--
-- Name: EMPLOYEE_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: final_project; Owner: sushivan
--

ALTER SEQUENCE "EMPLOYEE_employee_id_seq" OWNED BY "EMPLOYEE".employee_id;


--
-- Name: ITEM; Type: TABLE; Schema: final_project; Owner: sushivan; Tablespace: 
--

CREATE TABLE "ITEM" (
    item_id integer NOT NULL,
    item_name text,
    concept_id integer,
    price numeric(4,2),
    desciption text
);


ALTER TABLE final_project."ITEM" OWNER TO sushivan;

--
-- Name: ITEM_item_id_seq; Type: SEQUENCE; Schema: final_project; Owner: sushivan
--

CREATE SEQUENCE "ITEM_item_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE final_project."ITEM_item_id_seq" OWNER TO sushivan;

--
-- Name: ITEM_item_id_seq; Type: SEQUENCE OWNED BY; Schema: final_project; Owner: sushivan
--

ALTER SEQUENCE "ITEM_item_id_seq" OWNED BY "ITEM".item_id;


--
-- Name: ORDER; Type: TABLE; Schema: final_project; Owner: sushivan; Tablespace: 
--

CREATE TABLE "ORDER" (
    order_id integer NOT NULL,
    customer_id integer,
    "time" date,
    total numeric(2,0)
);


ALTER TABLE final_project."ORDER" OWNER TO sushivan;

--
-- Name: ORDER_ITEMS; Type: TABLE; Schema: final_project; Owner: sushivan; Tablespace: 
--

CREATE TABLE "ORDER_ITEMS" (
    order_id integer NOT NULL,
    item_id integer NOT NULL,
    quantity integer
);


ALTER TABLE final_project."ORDER_ITEMS" OWNER TO sushivan;

--
-- Name: ORDER_order_id_seq; Type: SEQUENCE; Schema: final_project; Owner: sushivan
--

CREATE SEQUENCE "ORDER_order_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE final_project."ORDER_order_id_seq" OWNER TO sushivan;

--
-- Name: ORDER_order_id_seq; Type: SEQUENCE OWNED BY; Schema: final_project; Owner: sushivan
--

ALTER SEQUENCE "ORDER_order_id_seq" OWNED BY "ORDER".order_id;


--
-- Name: concept_id; Type: DEFAULT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "CONCEPT" ALTER COLUMN concept_id SET DEFAULT nextval('"CONCEPT_concept_id_seq"'::regclass);


--
-- Name: customer_id; Type: DEFAULT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "CUSTOMER" ALTER COLUMN customer_id SET DEFAULT nextval('"CUSTOMER_customer_id_seq"'::regclass);


--
-- Name: employee_id; Type: DEFAULT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "EMPLOYEE" ALTER COLUMN employee_id SET DEFAULT nextval('"EMPLOYEE_employee_id_seq"'::regclass);


--
-- Name: serial_num; Type: DEFAULT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "EMPLOYEE_ASSIGNMENT" ALTER COLUMN serial_num SET DEFAULT nextval('"EMPLOYEE_ASSIGNMENT_serial_num_seq"'::regclass);


--
-- Name: item_id; Type: DEFAULT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "ITEM" ALTER COLUMN item_id SET DEFAULT nextval('"ITEM_item_id_seq"'::regclass);


--
-- Name: order_id; Type: DEFAULT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "ORDER" ALTER COLUMN order_id SET DEFAULT nextval('"ORDER_order_id_seq"'::regclass);


--
-- Name: CONCEPT_pkey; Type: CONSTRAINT; Schema: final_project; Owner: sushivan; Tablespace: 
--

ALTER TABLE ONLY "CONCEPT"
    ADD CONSTRAINT "CONCEPT_pkey" PRIMARY KEY (concept_id);


--
-- Name: CUSTOMER_pkey; Type: CONSTRAINT; Schema: final_project; Owner: sushivan; Tablespace: 
--

ALTER TABLE ONLY "CUSTOMER"
    ADD CONSTRAINT "CUSTOMER_pkey" PRIMARY KEY (customer_id);


--
-- Name: EMPLOYEE_ASSIGNMENT_pkey; Type: CONSTRAINT; Schema: final_project; Owner: sushivan; Tablespace: 
--

ALTER TABLE ONLY "EMPLOYEE_ASSIGNMENT"
    ADD CONSTRAINT "EMPLOYEE_ASSIGNMENT_pkey" PRIMARY KEY (serial_num);


--
-- Name: EMPLOYEE_pkey; Type: CONSTRAINT; Schema: final_project; Owner: sushivan; Tablespace: 
--

ALTER TABLE ONLY "EMPLOYEE"
    ADD CONSTRAINT "EMPLOYEE_pkey" PRIMARY KEY (employee_id);


--
-- Name: ITEM_pkey; Type: CONSTRAINT; Schema: final_project; Owner: sushivan; Tablespace: 
--

ALTER TABLE ONLY "ITEM"
    ADD CONSTRAINT "ITEM_pkey" PRIMARY KEY (item_id);


--
-- Name: ORDER_ITEMS_pkey; Type: CONSTRAINT; Schema: final_project; Owner: sushivan; Tablespace: 
--

ALTER TABLE ONLY "ORDER_ITEMS"
    ADD CONSTRAINT "ORDER_ITEMS_pkey" PRIMARY KEY (order_id, item_id);


--
-- Name: ORDER_pkey; Type: CONSTRAINT; Schema: final_project; Owner: sushivan; Tablespace: 
--

ALTER TABLE ONLY "ORDER"
    ADD CONSTRAINT "ORDER_pkey" PRIMARY KEY (order_id);


--
-- Name: concept_assignment_id_fk; Type: FK CONSTRAINT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "EMPLOYEE_ASSIGNMENT"
    ADD CONSTRAINT concept_assignment_id_fk FOREIGN KEY (concept_id) REFERENCES "CONCEPT"(concept_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: customer_id_fk; Type: FK CONSTRAINT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "ORDER"
    ADD CONSTRAINT customer_id_fk FOREIGN KEY (customer_id) REFERENCES "CUSTOMER"(customer_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: employee_assignment_id_fk; Type: FK CONSTRAINT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "EMPLOYEE_ASSIGNMENT"
    ADD CONSTRAINT employee_assignment_id_fk FOREIGN KEY (employee_id) REFERENCES "EMPLOYEE"(employee_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: item_concept_fk; Type: FK CONSTRAINT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "ITEM"
    ADD CONSTRAINT item_concept_fk FOREIGN KEY (concept_id) REFERENCES "CONCEPT"(concept_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: item_id_fk; Type: FK CONSTRAINT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "ORDER_ITEMS"
    ADD CONSTRAINT item_id_fk FOREIGN KEY (item_id) REFERENCES "ITEM"(item_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_id_fk; Type: FK CONSTRAINT; Schema: final_project; Owner: sushivan
--

ALTER TABLE ONLY "ORDER_ITEMS"
    ADD CONSTRAINT order_id_fk FOREIGN KEY (order_id) REFERENCES "ORDER"(order_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

