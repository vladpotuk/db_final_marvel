USE [db_final_marvel]

-- Delete data from character-related tables
DELETE FROM CharacterPowers;
DELETE FROM CharacterTeams;
DELETE FROM CharacterMovies;
DELETE FROM CharacterActors;
DELETE FROM CharacterComics;
DELETE FROM Characters;

-- Delete data from other tables
DELETE FROM SuperPowers;
DELETE FROM Teams;
DELETE FROM Movies;
DELETE FROM Actors;
DELETE FROM ComicBooks;
DELETE FROM Universe;
