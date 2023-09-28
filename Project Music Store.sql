use project_music_store;
show tables;
select * from album;
select * from artist;
select * from customer;
select * from employee;
select * from genre;
select * from invoice;
select * from invoice_line;
select * from media_type;
select * from playlist;
select * from playlist_track;
select * from track;


/*	QUESTION SET 1 - EASY */

/* Q1: Who is the senior most employee based on job title? */  /* General Manager- Andrew Adams */

SELECT title, first_name, last_name
from employee
order by levels desc
limit 1;


/* Q2: Which countries have the most Invoices? */  /* USA - 131 */

select count(*) as c, billing_country
from invoice
group by billing_country
ORDER BY c desc;


/* Q3: What are top 3 values of total invoice? */  /* 23.75, 19.8, 18.81 */

select distinct total
from invoice
order by total desc
limit 3;


/* Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals */                   /*  Prague - $273  */

select billing_city, sum(total) as InvoiceTotal
from invoice
group by billing_city
order by InvoiceTotal desc
limit 1;













