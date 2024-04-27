USE [db_final_marvel]

-- Select all characters
SELECT * FROM Characters

-- Select all superpowers
SELECT * FROM SuperPowers

-- Select all teams
SELECT * FROM Teams

-- Select all movies
SELECT * FROM Movies

-- Select all actors
SELECT * FROM Actors

-- Select all comic books
SELECT * FROM ComicBooks

-- Select all universes
SELECT * FROM Universe

-- Select characters along with their powers
SELECT c.*, p.Name AS PowerName, p.Description AS PowerDescription
FROM Characters c
INNER JOIN CharacterPowers cp ON c.Id = cp.CharacterId
INNER JOIN SuperPowers p ON cp.PowerId = p.PowerId

-- Select characters along with their teams
SELECT c.*, t.Name AS TeamName, t.Description AS TeamDescription
FROM Characters c
INNER JOIN CharacterTeams ct ON c.Id = ct.CharacterId
INNER JOIN Teams t ON ct.TeamId = t.TeamId

-- Select characters along with their movies
SELECT c.*, m.Title AS MovieTitle, m.ReleaseDate AS MovieReleaseDate
FROM Characters c
INNER JOIN CharacterMovies cm ON c.Id = cm.CharacterId
INNER JOIN Movies m ON cm.MovieId = m.MovieId

-- Select characters along with their actors
SELECT c.*, a.Name AS ActorName, a.Gender AS ActorGender, a.BirthDate AS ActorBirthDate
FROM Characters c
INNER JOIN CharacterActors ca ON c.Id = ca.CharacterId
INNER JOIN Actors a ON ca.ActorId = a.ActorId

-- Select characters along with their comic books
SELECT c.*, cb.Title AS ComicTitle, cb.IssueNumber AS ComicIssueNumber
FROM Characters c
INNER JOIN CharacterComics cc ON c.Id = cc.CharacterId
INNER JOIN ComicBooks cb ON cc.ComicId = cb.ComicId

-- Select characters along with their universes
SELECT c.*, u.Name AS UniverseName, u.Description AS UniverseDescription
FROM Characters c
INNER JOIN CharacterUniverses cu ON c.Id = cu.CharacterId
INNER JOIN Universe u ON cu.UniverseId = u.UniverseId

-- Select characters of a specific gender
SELECT * FROM Characters WHERE Gender = 'Male'

-- Select characters of a specific alignment
SELECT * FROM Characters WHERE Alignment = 'Hero'

-- Select movies released after a specific date
SELECT * FROM Movies WHERE ReleaseDate > '2020-01-01'

USE [db_final_marvel]

-- Select all characters
SELECT * FROM Characters

-- Select all superpowers
SELECT * FROM SuperPowers

-- Select all teams
SELECT * FROM Teams

-- Select all movies
SELECT * FROM Movies

-- Select all actors
SELECT * FROM Actors

-- Select all comic books
SELECT * FROM ComicBooks

-- Select all universes
SELECT * FROM Universe

-- Select characters along with their powers
SELECT c.*, p.Name AS PowerName, p.Description AS PowerDescription
FROM Characters c
INNER JOIN CharacterPowers cp ON c.Id = cp.CharacterId
INNER JOIN SuperPowers p ON cp.PowerId = p.PowerId

-- Select characters along with their teams
SELECT c.*, t.Name AS TeamName, t.Description AS TeamDescription
FROM Characters c
INNER JOIN CharacterTeams ct ON c.Id = ct.CharacterId
INNER JOIN Teams t ON ct.TeamId = t.TeamId

-- Select characters along with their movies
SELECT c.*, m.Title AS MovieTitle, m.ReleaseDate AS MovieReleaseDate
FROM Characters c
INNER JOIN CharacterMovies cm ON c.Id = cm.CharacterId
INNER JOIN Movies m ON cm.MovieId = m.MovieId

-- Select characters along with their actors
SELECT c.*, a.Name AS ActorName, a.Gender AS ActorGender, a.BirthDate AS ActorBirthDate
FROM Characters c
INNER JOIN CharacterActors ca ON c.Id = ca.CharacterId
INNER JOIN Actors a ON ca.ActorId = a.ActorId

-- Select characters along with their comic books
SELECT c.*, cb.Title AS ComicTitle, cb.IssueNumber AS ComicIssueNumber
FROM Characters c
INNER JOIN CharacterComics cc ON c.Id = cc.CharacterId
INNER JOIN ComicBooks cb ON cc.ComicId = cb.ComicId

-- Select characters along with their universes
SELECT c.*, u.Name AS UniverseName, u.Description AS UniverseDescription
FROM Characters c
INNER JOIN CharacterUniverses cu ON c.Id = cu.CharacterId
INNER JOIN Universe u ON cu.UniverseId = u.UniverseId

-- Select characters of a specific gender
SELECT * FROM Characters WHERE Gender = 'Male'

-- Select characters of a specific alignment
SELECT * FROM Characters WHERE Alignment = 'Hero'

-- Select movies released after a specific date
SELECT * FROM Movies WHERE ReleaseDate > '2020-01-01'

-- Procedure 1: Get all characters
CREATE PROCEDURE GetAllCharacters
AS
BEGIN
    SELECT * FROM Characters;
END;
GO

-- Procedure 2: Get characters by gender
CREATE PROCEDURE GetCharactersByGender
    @Gender NVARCHAR(50)
AS
BEGIN
    SELECT * FROM Characters WHERE Gender = @Gender;
END;
GO

-- Procedure 3: Get characters by alignment
CREATE PROCEDURE GetCharactersByAlignment
    @Alignment NVARCHAR(50)
AS
BEGIN
    SELECT * FROM Characters WHERE Alignment = @Alignment;
END;
GO

-- Procedure 4: Get movies released after a specific date
CREATE PROCEDURE GetMoviesReleasedAfterDate
    @ReleaseDate DATE
AS
BEGIN
    SELECT * FROM Movies WHERE ReleaseDate > @ReleaseDate;
END;
GO

-- Procedure 5: Get characters and their powers
CREATE PROCEDURE GetCharactersAndPowers
AS
BEGIN
    SELECT c.*, p.Name AS PowerName, p.Description AS PowerDescription
    FROM Characters c
    INNER JOIN CharacterPowers cp ON c.Id = cp.CharacterId
    INNER JOIN SuperPowers p ON cp.PowerId = p.PowerId;
END;
GO

-- Procedure 6: Get characters and their teams
CREATE PROCEDURE GetCharactersAndTeams
AS
BEGIN
    SELECT c.*, t.Name AS TeamName, t.Description AS TeamDescription
    FROM Characters c
    INNER JOIN CharacterTeams ct ON c.Id = ct.CharacterId
    INNER JOIN Teams t ON ct.TeamId = t.TeamId;
END;
GO

-- Procedure 7: Get characters and their movies
CREATE PROCEDURE GetCharactersAndMovies
AS
BEGIN
    SELECT c.*, m.Title AS MovieTitle, m.ReleaseDate AS MovieReleaseDate
    FROM Characters c
    INNER JOIN CharacterMovies cm ON c.Id = cm.CharacterId
    INNER JOIN Movies m ON cm.MovieId = m.MovieId;
END;
GO

-- Procedure 8: Get characters and their actors
CREATE PROCEDURE GetCharactersAndActors
AS
BEGIN
    SELECT c.*, a.Name AS ActorName, a.Gender AS ActorGender, a.BirthDate AS ActorBirthDate
    FROM Characters c
    INNER JOIN CharacterActors ca ON c.Id = ca.CharacterId
    INNER JOIN Actors a ON ca.ActorId = a.ActorId;
END;
GO

-- Procedure 9: Get characters and their comic books
CREATE PROCEDURE GetCharactersAndComicBooks
AS
BEGIN
    SELECT c.*, cb.Title AS ComicTitle, cb.IssueNumber AS ComicIssueNumber
    FROM Characters c
    INNER JOIN CharacterComics cc ON c.Id = cc.CharacterId
    INNER JOIN ComicBooks cb ON cc.ComicId = cb.ComicId;
END;
GO

-- Procedure 10: Get characters and their universes
CREATE PROCEDURE GetCharactersAndUniverses
AS
BEGIN
    SELECT c.*, u.Name AS UniverseName, u.Description AS UniverseDescription
    FROM Characters c
    INNER JOIN CharacterUniverses cu ON c.Id = cu.CharacterId
    INNER JOIN Universe u ON cu.UniverseId = u.UniverseId;
END;
GO

-- Procedure 11: Get characters by name
CREATE PROCEDURE GetCharacterByName
    @CharacterName NVARCHAR(100)
AS
BEGIN
    SELECT * FROM Characters WHERE Name = @CharacterName;
END;
GO

-- Procedure 12: Get superpowers by name
CREATE PROCEDURE GetSuperPowerByName
    @PowerName NVARCHAR(100)
AS
BEGIN
    SELECT * FROM SuperPowers WHERE Name = @PowerName;
END;
GO

-- Procedure 13: Get movies by title
CREATE PROCEDURE GetMovieByTitle
    @MovieTitle NVARCHAR(100)
AS
BEGIN
    SELECT * FROM Movies WHERE Title = @MovieTitle;
END;
GO

-- Procedure 14: Get actors by name
CREATE PROCEDURE GetActorByName
    @ActorName NVARCHAR(100)
AS
BEGIN
    SELECT * FROM Actors WHERE Name = @ActorName;
END;
GO

-- Procedure 15: Get comic books by title
CREATE PROCEDURE GetComicBookByTitle
    @ComicTitle NVARCHAR(100)
AS
BEGIN
    SELECT * FROM ComicBooks WHERE Title = @ComicTitle;
END;
GO
