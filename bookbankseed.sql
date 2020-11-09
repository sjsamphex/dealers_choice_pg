drop table if exists books;

-- create table books (
-- id serial primary key,
-- rating integer default 0,
-- title varchar(255) default null,
-- content text default null,
-- author varchar(255) default null,
-- image varchar(255) default null
-- );

-- INSERT INTO books (id, rating, title, content, author, image) VALUES (1, 4, 'How to Speak Cat: A Guide to Decoding Cat Language',       'We know cats are beautiful, secretive, and independent ... but even the most loyal cat owners are often baffled by their own pets behavior. With veterinarian expert Dr. Gary Weitzman as guide, this fun book helps kids understand what cats are trying to communicate by their body language and behavior. So if youve ever wondered what Fluffy means when she is purring or moving her tail emphatically from left to right-this book is for you! It is full of insights, expert advice, and real-life cat scenarios, and showcases more than 30 poses, so you will soon learn what each meow and flick of the tail means!', 'Aline Alexander Newman', 'HowToSpeakCat.jpg');
-- INSERT INTO books (id, rating, title, content, author, image) VALUES (2, 4, 'How to Speak Cat: A Guide to Decoding Cat Language',       'We know cats are beautiful, secretive, and independent ... but even the most loyal cat owners are often baffled by their own pets behavior. With veterinarian expert Dr. Gary Weitzman as guide, this fun book helps kids understand what cats are trying to communicate by their body language and behavior. So if youve ever wondered what Fluffy means when she is purring or moving her tail emphatically from left to right-this book is for you! It is full of insights, expert advice, and real-life cat scenarios, and showcases more than 30 poses, so you will soon learn what each meow and flick of the tail means!', 'Aline Alexander Newman', 'HowToSpeakCat.jpg');
-- INSERT INTO books (id, rating, title, content, author, image) VALUES (3, 4, 'How to Speak Cat: A Guide to Decoding Cat Language',       'We know cats are beautiful, secretive, and independent ... but even the most loyal cat owners are often baffled by their own pets behavior. With veterinarian expert Dr. Gary Weitzman as guide, this fun book helps kids understand what cats are trying to communicate by their body language and behavior. So if youve ever wondered what Fluffy means when she is purring or moving her tail emphatically from left to right-this book is for you! It is full of insights, expert advice, and real-life cat scenarios, and showcases more than 30 poses, so you will soon learn what each meow and flick of the tail means!', 'Aline Alexander Newman', 'HowToSpeakCat.jpg');
-- INSERT INTO books (id, rating, title, content, author, image) VALUES (4, 4, 'How to Speak Cat: A Guide to Decoding Cat Language',       'We know cats are beautiful, secretive, and independent ... but even the most loyal cat owners are often baffled by their own pets behavior. With veterinarian expert Dr. Gary Weitzman as guide, this fun book helps kids understand what cats are trying to communicate by their body language and behavior. So if youve ever wondered what Fluffy means when she is purring or moving her tail emphatically from left to right-this book is for you! It is full of insights, expert advice, and real-life cat scenarios, and showcases more than 30 poses, so you will soon learn what each meow and flick of the tail means!', 'Aline Alexander Newman', 'HowToSpeakCat.jpg');
-- INSERT INTO books (id, rating, title, content, author, image) VALUES (5, 4, 'How to Speak Cat: A Guide to Decoding Cat Language',       'We know cats are beautiful, secretive, and independent ... but even the most loyal cat owners are often baffled by their own pets behavior. With veterinarian expert Dr. Gary Weitzman as guide, this fun book helps kids understand what cats are trying to communicate by their body language and behavior. So if youve ever wondered what Fluffy means when she is purring or moving her tail emphatically from left to right-this book is for you! It is full of insights, expert advice, and real-life cat scenarios, and showcases more than 30 poses, so you will soon learn what each meow and flick of the tail means!', 'Aline Alexander Newman', 'HowToSpeakCat.jpg');


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
-- Name: books; Type: TABLE; Schema: public; Owner: sjsamphex
--

CREATE TABLE public.books (
    id integer NOT NULL,
    rating integer DEFAULT 0,
    title character varying(255) DEFAULT NULL::character varying,
    content text,
    author character varying(255) DEFAULT NULL::character varying,
    image character varying(255) DEFAULT NULL::character varying
);


-- ALTER TABLE public.books OWNER TO sjsamphex;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: sjsamphex
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- ALTER TABLE public.books_id_seq OWNER TO sjsamphex;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sjsamphex
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: sjsamphex
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: sjsamphex
--

COPY public.books (id, rating, title, content, author, image) FROM stdin;
1	4	How to Speak Cat: A Guide to Decoding Cat Language	We know cats are beautiful, secretive, and independent ... but even the most loyal cat owners are often baffled by their own pets behavior. With veterinarian expert Dr. Gary Weitzman as guide, this fun book helps kids understand what cats are trying to communicate by their body language and behavior. So if youve ever wondered what Fluffy means when she is purring or moving her tail emphatically from left to right-this book is for you! It is full of insights, expert advice, and real-life cat scenarios, and showcases more than 30 poses, so you will soon learn what each meow and flick of the tail means!	Aline Alexander Newman	HowToSpeakCat.jpg
3	4	Total Cat Mojo: The Ultimate Guide to Life with Your Cat	Cat Mojo is the confidence that cats exhibit when they are at ease in their environment and in touch with their natural instincts—to hunt, catch, kill, eat, groom, and sleep. Problems such as litter box avoidance and aggression arise when cats lack this confidence. Jackson Galaxy's number one piece of advice to his clients is to help their cats harness their mojo. \\n This book is his most comprehensive guide yet to cat behavior and basic cat care, rooted in understanding cats better. From getting kittens off to the right start socially, to taking care of cats in their senior years, and everything in between, this book addresses the head-to-toe physical and emotional needs of cats—whether related to grooming, nutrition, play, or stress-free trips to the vet.	Jackson Galaxy	TotalCat.jpg
4	4	Cats on Catnip	A humorous collection of dozens of photos of funny and adorable cats as they play with, roll in, and chow down their favorite snack of choice -- catnip. Cats love catnip. Whether it's eating it, playing with it, or rolling around in it, catnip turns our domestic feline friends into hilarious balls of activity. Carefree and unconstrained, they are free to be silly, exceptionally playful, and downright gnarly. Professional pet photographer and self-confessed crazy cat man Andrew Marttila (the photographer behind Shop Cats of New York) captures a range of the cats' silly and expressive personalities as they react to their catnip trip. Delightful, elegant Fluffy transforms into a hell-bent renegade. Shy, reserved Mittens becomes a free-loving acrobat. In the blink of an eye, a cat's expression transforms from bored to inquisitive to playful to curious to bizarre . . . to utterly unhinged. A fun and delightful look at our furry companions, this gift book is perfect for every cat lover.	Andrew Marttila	Catnip.jpg
5	5	I Could Pee on This: And Other Poems by Cats	Animal lovers will laugh out loud at the quirkiness of their feline friends with these insightful and curious poems from the singular minds of funny cats. In this hilarious book of tongue-in-cheek poetry, the author of the internationally syndicated comic strip Sally Forth helps cats unlock their creative potential and explain their odd behavior to ignorant humans. With titles like "Who Is That on Your Lap?," "This Is My Chair," "Kneel Before Me," "Nudge," and "Some of My Best Friends Are Dogs," the poems collected in I Could Pee on This perfectly capture the inner workings of the cat psyche. With photos of the cat authors throughout, this whimsical volume reveals kitties at their wackiest, and most exasperating (but always lovable). Ideal for that "crazy cat lady" or "cat mom/dad" in your life this collection of poems makes for the perfect cat themed gift for anyone who\\'s obsessed with our feline friends.	Francesco Marciuliano	CatPee.jpg
2	3	The Cat Encyclopedia: The Definitive Visual Guide	The Cat Encyclopedia is a comprehensive cat compendium that has all the facts about cats and kittens. It’s packed with beautifully photographed profiles of different breeds from the Maine Coon to the Khao Manee and includes information on caring for your own cat. \\n This book also offers information on the science and history of house cats. Find out how cats were domesticated and developed into separate breeds, and see their prominence in art, literature, and superstition. A chapter on feline biology focuses on the anatomy of cats – including the nervous system, digestion, and muscles – and also features details on cat senses and coat patterns. \\n With comprehensive help on cat care – from preparing for your cat’s arrival and essential equipment to healthcare and training – The Cat Encyclopedia is the perfect guide for cat lovers.	DK	CatEncyc.jpg
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sjsamphex
--

SELECT pg_catalog.setval('public.books_id_seq', 1, false);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: sjsamphex
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);

