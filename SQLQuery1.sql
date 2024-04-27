CREATE DATABASE [db_final_marvel]
GO
USE [db_final_marvel]
GO

CREATE TABLE Characters(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Alias NVARCHAR(100),
    Gender NVARCHAR(10) NOT NULL CHECK (Gender IN ('Male', 'Female', 'Non-Binary')),
    Alignment NVARCHAR(20) NOT NULL CHECK (Alignment IN ('Hero', 'Villain', 'Anti-Hero', 'Neutral')),
    FirstAppearance DATE,
    Description NVARCHAR(MAX)
);

CREATE TABLE SuperPowers(
    PowerId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Description NVARCHAR(MAX)
);

CREATE TABLE CharacterPowers(
    CharacterId INT,
    PowerId INT,
    FOREIGN KEY (CharacterId) REFERENCES Characters(Id),
    FOREIGN KEY (PowerId) REFERENCES SuperPowers(PowerId),
    PRIMARY KEY (CharacterId, PowerId)
);

CREATE TABLE Teams(
    TeamId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Description NVARCHAR(MAX)
);

CREATE TABLE CharacterTeams(
    CharacterId INT,
    TeamId INT,
    FOREIGN KEY (CharacterId) REFERENCES Characters(Id),
    FOREIGN KEY (TeamId) REFERENCES Teams(TeamId),
    PRIMARY KEY (CharacterId, TeamId)
);

CREATE TABLE Movies(
    MovieId INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL UNIQUE,
    ReleaseDate DATE,
    Director NVARCHAR(100),
    Description NVARCHAR(MAX)
);

CREATE TABLE CharacterMovies(
    CharacterId INT,
    MovieId INT,
    FOREIGN KEY (CharacterId) REFERENCES Characters(Id),
    FOREIGN KEY (MovieId) REFERENCES Movies(MovieId),
    PRIMARY KEY (CharacterId, MovieId)
);

CREATE TABLE Actors(
    ActorId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Gender NVARCHAR(10) NOT NULL CHECK (Gender IN ('Male', 'Female', 'Non-Binary')),
    Nationality NVARCHAR(100),
    BirthDate DATE
);

CREATE TABLE CharacterActors(
    CharacterId INT,
    ActorId INT,
    FOREIGN KEY (CharacterId) REFERENCES Characters(Id),
    FOREIGN KEY (ActorId) REFERENCES Actors(ActorId),
    PRIMARY KEY (CharacterId, ActorId)
);

CREATE TABLE ComicBooks(
    ComicId INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL UNIQUE,
    IssueNumber INT,
    ReleaseDate DATE,
    Publisher NVARCHAR(100)
);

CREATE TABLE CharacterComics(
    CharacterId INT,
    ComicId INT,
    FOREIGN KEY (CharacterId) REFERENCES Characters(Id),
    FOREIGN KEY (ComicId) REFERENCES ComicBooks(ComicId),
    PRIMARY KEY (CharacterId, ComicId)
);

CREATE TABLE Universe(
    UniverseId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Description NVARCHAR(MAX)
);

CREATE TABLE CharacterUniverses(
    CharacterId INT,
    UniverseId INT,
    FOREIGN KEY (CharacterId) REFERENCES Characters(Id),
    FOREIGN KEY (UniverseId) REFERENCES Universe(UniverseId),
    PRIMARY KEY (CharacterId, UniverseId)
);

GO

-- Trigger for Characters Table
CREATE TRIGGER check_character_gender_alignment
ON Characters
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Gender NOT IN ('Male', 'Female', 'Non-Binary') OR Alignment NOT IN ('Hero', 'Villain', 'Anti-Hero', 'Neutral')) BEGIN
        RAISERROR('Invalid gender or alignment', 16, 1)
        ROLLBACK TRANSACTION
    END
END

GO

-- Trigger for SuperPowers Table
CREATE TRIGGER check_power_name
ON SuperPowers
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE LEN(Name) > 100) BEGIN
        RAISERROR('Power name exceeds maximum length', 16, 1)
        ROLLBACK TRANSACTION
    END
END

GO

-- Trigger for Teams Table
CREATE TRIGGER check_team_description
ON Teams
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE LEN(Description) > 1000) BEGIN
        RAISERROR('Team description exceeds maximum length', 16, 1)
        ROLLBACK TRANSACTION
    END
END

GO

-- Trigger for Movies Table
CREATE TRIGGER check_movie_director
ON Movies
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE LEN(Director) > 100) BEGIN
        RAISERROR('Director name exceeds maximum length', 16, 1)
        ROLLBACK TRANSACTION
    END
END

GO

-- Trigger for Actors Table
CREATE TRIGGER check_actor_birthdate
ON Actors
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE BirthDate >= GETDATE()) BEGIN
        RAISERROR('Birth date cannot be in the future', 16, 1)
        ROLLBACK TRANSACTION
    END
END

GO

-- Trigger for ComicBooks Table
CREATE TRIGGER check_comic_issue_number
ON ComicBooks
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE IssueNumber < 1) BEGIN
        RAISERROR('Issue number must be positive', 16, 1)
        ROLLBACK TRANSACTION
    END
END

GO

-- Trigger for Universe Table
CREATE TRIGGER check_universe_name
ON Universe
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE LEN(Name) > 100) BEGIN
        RAISERROR('Universe name exceeds maximum length', 16, 1)
        ROLLBACK TRANSACTION
    END
END

GO
