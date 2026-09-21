{
    _id: ObjectId("4556712cd2b2397ce1b47661"),
    name: { first: "Thomas", last: "Anderson" },
    date_of_birth: new Date('Sep 2, 1964'),
    occupation: [ "The One"],
    steps_taken : NumberLong(4738947387743977493)
}

{
    Opérateur LIKE
    select * from books where name like "%Android%" or name like "%ios%";

    AND Opérateur
    select * from books where category = "Offensive Security" and name = "Bug bounty Bootcamp";

    Opérateur OR
    select * from books where name like "%Android%" or name like "%ios%";

    NOT Opérateur
    select * from books where not description like "%guide%";

    between Opérateur
    select * from books where id between 2 and 4;


    select * from books where name = "designing Secure Software";

    Pas égal à Opérateur
    select * from books where category != "Offensive Security";


    select * from books where published_date < "2020-01-01";

    select * from books where published_date > "2020-01-01";

    Fonction CONCAT()
    select concat(name, "is a type of ", category, " book.") as book_info from books;

    Fonction GROUP_CONCAT()
    select category, group_concat(name separator ", ") as books from books group by category;

    Fonction SUBSTRING()
    select substring(published_date, 1, 4) as published_year from books;

    Fonction LENGTH()
    SELECT LENGTH(name) AS name_length FROM books;

    Fonction COUNT()
    select count(*) as total_books from books;

    Fonction SUM()
    SELECT SUM(price) AS total_price FROM books;

    Fonction MAX()
    SELECT MAX(published_date) AS latest_book FROM books;

    Fonction MIN()
    SELECT MIN(published_date) AS earliest_book FROM books;
}

