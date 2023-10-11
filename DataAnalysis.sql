--Athlete Participation by Country
SELECT [Country], COUNT([PersonName]) AS Athlete_Count
FROM [TokyoOlympicDB].[dbo].[athletes]
GROUP BY [Country]
ORDER BY Athlete_Count DESC;

--Top Coaches by Country
SELECT [Country], COUNT([Name]) AS Coach_Count
FROM [TokyoOlympicDB].[dbo].[coaches]
GROUP BY [Country]
ORDER BY Coach_Count DESC;

--Gender Distribution of Participants
SELECT [Gender], COUNT([Name]) AS Participant_Count
FROM [TokyoOlympicDB].[dbo].[EntriesGender]
GROUP BY [Gender];

--Countries with the Most Medals
SELECT [Country], COUNT([Medal]) AS Medal_Count
FROM [TokyoOlympicDB].[dbo].[medals]
WHERE [Medal] IS NOT NULL
GROUP BY [Country]
ORDER BY Medal_Count DESC;

--Most Participating Teams by Discipline:
SELECT [Discipline], COUNT([TeamName]) AS Team_Count
FROM [TokyoOlympicDB].[dbo].[teams]
GROUP BY [Discipline]
ORDER BY Team_Count DESC;