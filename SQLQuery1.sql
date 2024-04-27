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
