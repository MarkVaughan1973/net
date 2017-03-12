﻿delete from Film;
DBCC CHECKIDENT (Film, RESEED, 0)

insert into Film (title, released, stock, genre) values ('The Shawshank Redemption','1994-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Godfather','1972-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Godfather: Part II','1974-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Pulp Fiction','1994-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Good, the Bad and the Ugly','1966-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('12 Angry Men','1957-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Schindler''s List','1993-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Dark Knight','2008-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Lord of the Rings: The Return of the King','2003-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('One Flew Over the Cuckoo''s Nest','1975-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Star Wars: Episode V - The Empire Strikes Back','1980-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Fight Club','1999-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Seven Samurai','1954-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Inception','2010-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Lord of the Rings: The Fellowship of the Ring','2001-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Goodfellas','1990-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Star Wars: Episode IV - A New Hope','1977-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('City of God','2002-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Casablanca','1942-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Matrix','1999-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Once Upon a Time in the West','1968-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Rear Window','1954-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Silence of the Lambs','1991-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Raiders of the Lost Ark','1981-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Lord of the Rings: The Two Towers','2002-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Usual Suspects','1995-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Forrest Gump','1994-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Se7en','1995-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Psycho','1960-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('It''s a Wonderful Life','1946-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Leon','1994-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Sunset Boulevard','1950-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Memento','2000-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb','1964-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Apocalypse Now','1979-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('American History X','1998-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('North by Northwest','1959-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Terminator 2: Judgment Day','1991-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Avengers Assemble','2012-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Citizen Kane','1941-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Saving Private Ryan','1998-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Alien','1979-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('City Lights','1931-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Spirited Away','2001-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('American Beauty','1999-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Toy Story 3','2010-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Taxi Driver','1976-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('M','1931-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Shining','1980-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Vertigo','1958-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Paths of Glory','1957-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Pianist','2002-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Modern Times','1936-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Departed','2006-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Amelie','2001-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Double Indemnity','1944-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('WALL·E','2008-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Lives of Others','2006-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Aliens','1986-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('A Clockwork Orange','1971-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Life Is Beautiful','1997-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Back to the Future','1985-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('To Kill a Mockingbird','1962-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Lawrence of Arabia','1962-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Das Boot','1981-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Requiem for a Dream','2000-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Reservoir Dogs','1992-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Third Man','1949-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Eternal Sunshine of the Spotless Mind','2004-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Prestige','2006-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('A Separation','2011-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Green Mile','1999-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Cinema Paradiso','1988-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Great Dictator','1940-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Chinatown','1974-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Gladiator','2000-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Treasure of the Sierra Madre','1948-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('L.A. Confidential','1997-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Once Upon a Time in America','1984-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Rashomon','1950-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Monty Python and the Holy Grail','1975-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Intouchables','2011-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Full Metal Jacket','1987-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Singin'' in the Rain','1952-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Bicycle Thieves','1948-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Some Like It Hot','1959-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Amadeus','1984-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('All About Eve','1950-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Metropolis','1927-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Raging Bull','1980-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Braveheart','1995-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Oldboy','2003-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('2001: A Space Odyssey','1968-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Star Wars: Episode VI - Return of the Jedi','1983-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Bridge on the River Kwai','1957-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Apartment','1960-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Unforgiven','1992-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Pan''s Labyrinth','2006-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Princess Mononoke','1997-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Sting','1973-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Lion King','1994-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Downfall','2004-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Indiana Jones and the Last Crusade','1989-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Mr. Smith Goes to Washington','1939-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Inglourious Basterds','2009-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Grave of the Fireflies','1988-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Die Hard','1988-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Seventh Seal','1957-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Up','2009-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('On the Waterfront','1954-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Elephant Man','1980-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Yojimbo','1961-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Great Escape','1963-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Maltese Falcon','1941-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Batman Begins','2005-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Gran Torino','2008-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Rebecca','1940-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Witness for the Prosecution','1957-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Snatch.','2000-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('For a Few Dollars More','1965-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The General','1926-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Heat','1995-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Blade Runner','1982-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Fargo','1996-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Wild Strawberries','1957-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Ran','1985-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Toy Story','1995-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Sin City','2005-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Touch of Evil','1958-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Big Lebowski','1998-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Ikiru','1952-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Deer Hunter','1978-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Jaws','1975-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('No Country for Old Men','2007-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Hotel Rwanda','2004-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Cool Hand Luke','1967-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Scarface','1983-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('It Happened One Night','1934-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Wizard of Oz','1939-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Sixth Sense','1999-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Wages of Fear','1953-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Strangers on a Train','1951-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Kid','1921-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The King''s Speech','2010-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Kill Bill: Vol. 1','2003-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Black Swan','2010-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Annie Hall','1977-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Artist','2011-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Gold Rush','1925-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('High Noon','1952-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Platoon','1986-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Warrior','2011-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Trainspotting','1996-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Lock, Stock and Two Smoking Barrels','1998-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Butch Cassidy and the Sundance Kid','1969-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Grapes of Wrath','1940-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Into the Wild','2007-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Sunrise','1927-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Secret in Their Eyes','2009-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Thing','1982-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Donnie Darko','2001-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Notorious','1946-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Gone with the Wind','1939-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Casino','1995-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Million Dollar Baby','2004-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Les Diaboliques','1955-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('There Will Be Blood','2007-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Life of Brian','1979-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('My Neighbour Totoro','1988-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Finding Nemo','2003-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Ben-Hur','1959-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('How to Train Your Dragon','2010-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Amores Perros','2000-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Terminator','1984-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('V for Vendetta','2005-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Big Sleep','1946-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Groundhog Day','1993-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Good Will Hunting','1997-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Slumdog Millionaire','2008-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Best Years of Our Lives','1946-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Stand by Me','1986-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Dog Day Afternoon','1975-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Judgement at Nuremberg','1961-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Twelve Monkeys','1995-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Graduate','1967-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Harakiri','1962-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Network','1976-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Bourne Ultimatum','2007-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Night of the Hunter','1955-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Manchurian Candidate','1962-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The 400 Blows','1959-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Mary and Max','2009-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Gandhi','1982-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Dial M for Murder','1954-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Persona','1966-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Battle of Algiers','1966-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('District 9','2009-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Princess Bride','1987-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Killing','1956-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('8½','1963-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Who''s Afraid of Virginia Woolf?','1966-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('La Strada','1954-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Howl''s Moving Castle','2004-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Passion of Joan of Arc','1928-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Hustler','1961-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Sherlock Jr.','1924-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Ratatouille','2007-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Fanny and Alexander','1982-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Exorcist','1973-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Wrestler','2008-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Wild Bunch','1969-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Kind Hearts and Coronets','1949-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Rocky','1976-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Stalag 17','1953-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Barry Lyndon','1975-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Diving Bell and the Butterfly','2007-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Harry Potter and the Deathly Hallows: Part 2','2011-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Nights of Cabiria','1957-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('A Streetcar Named Desire','1951-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Star Trek','2009-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('A Beautiful Mind','2001-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('All Quiet on the Western Front','1930-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Tokyo Story','1953-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Truman Show','1998-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Ip Man','2008-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('High and Low','1963-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Rope','1948-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Infernal Affairs','2002-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('The Man Who Shot Liberty Valance','1962-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Roman Holiday','1953-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Come and See','1985-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Stalker','1979-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Rosemary''s Baby','1968-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Pirates of the Caribbean: The Curse of the Black Pearl','2003-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Mystic River','2003-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Let the Right One In','2008-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Nausicaä of the Valley of the Wind','1984-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Festen','1998-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Anatomy of a Murder','1959-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Monsters, Inc.','2001-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Nosferatu','1922-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Beauty and the Beast','1991-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Throne of Blood','1957-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Manhattan','1979-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('La Grande Illusion','1937-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Le Samouraï','1967-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('3 Idiots','2009-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Magnolia','1999-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Shutter Island','2010-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));
insert into Film (title, released, stock, genre) values ('Memories of Murder','2003-01-01',(select ceiling( rand() * 10)),(select floor( rand() * 13)));


select * from Film;