insert into genres
values (1, 'Rap'), (2, 'Rock'), (3, 'pop music'), (4, 'blues'), (5, 'Phonk');

insert into executor(name)
values ('eminem'), ('Король и Шут'),('Britney Spears'),('B. B. King'),('Gary Clark Jr.'),('50 cent'),('system of a down'), ('LXST CXNTURY');

insert into albums(name,yearofissue)
values ('The Eminem Show', 2002), ('Тень клоуна', 2008), ('Glory', 2016), ('Live', 2008), ('110', 2004), ('The Kanan Tape', 2015), ('Toxicity', 2001), ('Universe of the Past ', 2019);

insert into tracks(albums_id, name, duration) 
values (5, 'Tokyo', 209), (5, 'Star Way', 248), (2, 'Chop Suey', 329), (2, 'Aerials', 404), (1, 'Cndy Shop ', 410), (1, 'In Da Club', 411), (4, 'Come Together', 428), (4, ' This Land', 640), (4,'The Thrll is Gone', 642), (4, 'Sweet Little Angel', 553), (3, 'I m A Slave 4 U', 324), (3, 'Baby One More Time', 357), (2, 'Лесник', 323), (2, 'Прыгнул со скалы', 228), (1, 'Wothout Me', 458), (1, 'Not Afraid', 419);

insert into collections(id, name, yearofissue)
values (1, 'The Best', 2015), (2, 'New', 2023), (3, 'Top Chart 2010', 2010), (4, 'Top Chart 2011', 2011), (5, 'Top Chart 2012', 2012), (6, 'Top Chart 2020', 2020), (7, 'Top Chart 2022', 2022), (8, 'Top Chart 2018', 2018);