USE [db_final_marvel]

-- Insert characters
INSERT INTO Characters (Name, Alias, Gender, Alignment, FirstAppearance, Description)
VALUES 
('Iron Man', 'Tony Stark', 'Male', 'Hero', '1963-03-01', 'Genius billionaire inventor who creates a powered suit of armor to save the world.'),
('Captain America', 'Steve Rogers', 'Male', 'Hero', '1941-03-01', 'Super soldier who fought in World War II and leads the Avengers.'),
('Thor', 'Thor Odinson', 'Male', 'Hero', '1962-08-01', 'Norse god of thunder and member of the Avengers.'),
('Black Widow', 'Natasha Romanoff', 'Female', 'Hero', '1964-04-01', 'Former Russian spy and skilled assassin, member of the Avengers.'),
('Hulk', 'Bruce Banner', 'Male', 'Hero', '1962-05-01', 'Scientist exposed to gamma radiation, transforms into a giant green monster when enraged.'),
('Spider-Man', 'Peter Parker', 'Male', 'Hero', '1962-08-01', 'High school student bitten by a radioactive spider, gains spider-like abilities and fights crime.'),
('Black Panther', 'T''Challa', 'Male', 'Hero', '1966-07-01', 'King of the African nation of Wakanda, possesses enhanced abilities and advanced technology.'),
('Doctor Strange', 'Stephen Strange', 'Male', 'Hero', '1963-07-01', 'Former surgeon who becomes a master of the mystic arts, protecting the Earth from supernatural threats.');

-- Insert superpowers
INSERT INTO SuperPowers (Name, Description)
VALUES 
('Super Strength', 'Ability to exert incredible physical strength beyond human limits.'),
('Flight', 'Ability to fly through the air, often by generating wings or propulsion.'),
('Energy Projection', 'Ability to generate and project various forms of energy.'),
('Teleportation', 'Ability to move instantaneously from one location to another.'),
('Telekinesis', 'Ability to move objects with the mind.'),
('Healing Factor', 'Ability to rapidly regenerate damaged or destroyed bodily tissues.'),
('Invisibility', 'Ability to render oneself unseen to the naked eye.'),
('Shapeshifting', 'Ability to change one''s physical form at will.');

-- Insert teams
INSERT INTO Teams (Name, Description)
VALUES 
('Avengers', 'Earth''s mightiest heroes, assembled to protect the world from threats.'),
('X-Men', 'Team of mutants dedicated to promoting peace between humans and mutants, and defending against mutant threats.'),
('Fantastic Four', 'Family of explorers with superpowers who journey into space and defend Earth from threats.');


-- Insert movies
INSERT INTO Movies (Title, ReleaseDate, Director, Description)
VALUES 
('Iron Man', '2008-04-30', 'Jon Favreau', 'Billionaire inventor Tony Stark builds a suit of armor to fight against terrorists.'),
('Captain America: The First Avenger', '2011-07-22', 'Joe Johnston', 'Steve Rogers becomes a super soldier and battles the evil organization Hydra during World War II.'),
('Thor', '2011-05-06', 'Kenneth Branagh', 'The Norse god Thor is banished to Earth and must learn humility and heroism.'),
('The Avengers', '2012-05-04', 'Joss Whedon', 'Earth''s mightiest heroes, the Avengers, come together to stop the villain Loki and his alien army.'),
('Black Widow', '2021-07-09', 'Cate Shortland', 'Natasha Romanoff confronts her past and battles a dangerous conspiracy.'),
('Spider-Man: Homecoming', '2017-07-07', 'Jon Watts', 'Teenager Peter Parker balances life as a high school student and a superhero.'),
('Black Panther', '2018-02-16', 'Ryan Coogler', 'T''Challa returns to his homeland of Wakanda to take his rightful place as king.'),
('Doctor Strange', '2016-11-04', 'Scott Derrickson', 'Former surgeon Stephen Strange becomes a powerful sorcerer and protector of the Earth.');

-- Insert actors
INSERT INTO Actors (Name, Gender, Nationality, BirthDate)
VALUES 
('Robert Downey Jr.', 'Male', 'American', '1965-04-04'),
('Chris Evans', 'Male', 'American', '1981-06-13'),
('Chris Hemsworth', 'Male', 'Australian', '1983-08-11'),
('Scarlett Johansson', 'Female', 'American', '1984-11-22'),
('Mark Ruffalo', 'Male', 'American', '1967-11-22'),
('Tom Holland', 'Male', 'British', '1996-06-01'),
('Chadwick Boseman', 'Male', 'American', '1976-11-29'),
('Benedict Cumberbatch', 'Male', 'British', '1976-07-19');

-- Insert comic books
INSERT INTO ComicBooks (Title, IssueNumber, ReleaseDate, Publisher)
VALUES 
('Iron Man #1', 1, '1968-05-01', 'Marvel Comics'),
('Captain America Comics #1', 1, '1941-03-01', 'Timely Publications'),
('Journey into Mystery #83', 83, '1962-08-01', 'Marvel Comics'),
('The Incredible Hulk #1', 1, '1962-05-01', 'Marvel Comics'),
('Amazing Fantasy #15', 15, '1962-08-01', 'Marvel Comics'),
('Black Panther #1', 1, '1977-01-01', 'Marvel Comics'),
('Doctor Strange #1', 1, '1968-06-01', 'Marvel Comics');

-- Insert universes
INSERT INTO Universe (Name, Description)
VALUES 
('Marvel Universe', 'A fictional universe where the stories of Marvel Comics take place.'),
('Marvel Cinematic Universe', 'A media franchise and shared universe centered on superhero films and television series produced by Marvel Studios.');

-- Insert character powers
INSERT INTO CharacterPowers (CharacterId, PowerId)
VALUES 
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 6), (2, 7),
(3, 1), (3, 2), (3, 4),
(4, 5), (4, 7),
(5, 1), (5, 5),
(6, 1), (6, 5),
(7, 1), (7, 2), (7, 4),
(8, 8);

-- Insert character teams
INSERT INTO CharacterTeams (CharacterId, TeamId)
VALUES 
(1, 1), (1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- Insert character movies
INSERT INTO CharacterMovies (CharacterId, MovieId)
VALUES 
(1, 1), (1, 4),
(2, 2), (2, 4),
(3, 3), (3, 4),
(4, 4),
(5, 4),
(6, 5),
(7, 6),
(8, 7);

-- Insert character actors
INSERT INTO CharacterActors (CharacterId, ActorId)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- Insert character comic books
INSERT INTO CharacterComics (CharacterId, ComicId)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 7);
