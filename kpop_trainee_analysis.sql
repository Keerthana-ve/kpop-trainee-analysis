--creating a database that contains tables related to kpop survival show--
CREATE DATABASE KpopTraineeAnalysisDB

USE KpopTraineeAnalysisDB

--creating tables with columns that are useful for analysis--

CREATE TABLE Trainees (
    trainee_id INT PRIMARY KEY,
    name NVARCHAR(50),
    age INT,
    gender NVARCHAR(10),
    company NVARCHAR(50),
    trainee_type NVARCHAR(30),
    votes INT,
    final_rank INT,
    selected NVARCHAR(5),
    top_skill NVARCHAR(20),
    star_quality NVARCHAR(20)
)

CREATE TABLE Performances (
    performance_id INT PRIMARY KEY,
    trainee_id INT,
    concept NVARCHAR(30),
    score INT,
    votes_during INT,
    FOREIGN KEY (trainee_id) REFERENCES Trainees(trainee_id)
)

--inserting values into the table to start with analysis--

INSERT INTO Trainees VALUES
(1, 'Jimin', 19, 'Male', 'BigHit', 'All-rounder', 150000, 3, 'Yes', 'Dance', 'High'),
(2, 'Hana', 20, 'Female', 'YG', 'Vocalist', 180000, 1, 'Yes', 'Vocal', 'Very High'),
(3, 'Minho', 21, 'Male', 'SM', 'Rapper', 120000, 7, 'Yes', 'Rap', 'High'),
(4, 'Sora', 18, 'Female', 'JYP', 'Visual', 90000, 12, 'No', 'Visual', 'Medium'),
(5, 'Yuna', 17, 'Female', 'Starship', 'Visual', 200000, 2, 'Yes', 'Visual', 'Very High'),
(6, 'Taeyong', 22, 'Male', 'SM', 'Dancer', 110000, 8, 'Yes', 'Dance', 'High'),
(7, 'Hyun', 19, 'Male', 'Cube', 'Rapper', 50000, 20, 'No', 'Rap', 'Low'),
(8, 'Soojin', 18, 'Female', 'Pledis', 'Dancer', 170000, 4, 'Yes', 'Dance', 'High'),
(9, 'Yuri', 19, 'Female', 'RBW', 'Vocalist', 160000, 5, 'Yes', 'Vocal', 'Very High'),
(10, 'Kai', 21, 'Male', 'SM', 'All-rounder', 140000, 6, 'Yes', 'Dance', 'High'),
(11, 'Mina', 20, 'Female', 'JYP', 'Vocalist', 85000, 15, 'No', 'Vocal', 'Medium'),
(12, 'Felix', 19, 'Male', 'JYP', 'Rapper', 95000, 13, 'No', 'Rap', 'Medium'),
(13, 'Jae', 22, 'Male', 'RBW', 'All-rounder', 125000, 9, 'Yes', 'Vocal', 'High'),
(14, 'Aisha', 18, 'Female', 'Fantagio', 'Visual', 80000, 18, 'No', 'Visual', 'Medium'),
(15, 'Daniel', 20, 'Male', 'BigHit', 'Dancer', 105000, 11, 'No', 'Dance', 'High'),
(16, 'Lina', 17, 'Female', 'DSP', 'Vocalist', 75000, 22, 'No', 'Vocal', 'Medium'),
(17, 'Mark', 21, 'Male', 'Cube', 'Rapper', 60000, 24, 'No', 'Rap', 'Low'),
(18, 'Seulgi', 20, 'Female', 'SM', 'All-rounder', 130000, 10, 'Yes', 'Dance', 'Very High'),
(19, 'Sanghoon', 22, 'Male', 'Pledis', 'Vocalist', 70000, 21, 'No', 'Vocal', 'Medium'),
(20, 'Yeri', 18, 'Female', 'SM', 'Visual', 155000, 14, 'No', 'Visual', 'High'),
(21, 'Sumin', 19, 'Female', 'BigHit', 'Vocalist', 118000, 16, 'No', 'Vocal', 'High'),
(22, 'Eunwoo', 23, 'Male', 'Fantagio', 'Visual', 172000, 17, 'No', 'Visual', 'Very High'),
(23, 'Gyuri', 18, 'Female', 'DSP', 'All-rounder', 134000, 19, 'No', 'Dance', 'High'),
(24, 'Lucas', 21, 'Male', 'SM', 'Dancer', 122000, 23, 'No', 'Dance', 'Medium'),
(25, 'Jisoo', 20, 'Female', 'YG', 'Visual', 165000, 25, 'No', 'Visual', 'Very High'),
(26, 'Rowoon', 23, 'Male', 'FNC', 'Vocalist', 112000, 26, 'No', 'Vocal', 'High'),
(27, 'Sana', 19, 'Female', 'JYP', 'Vocalist', 157000, 27, 'No', 'Vocal', 'High'),
(28, 'Hyunjin', 21, 'Male', 'JYP', 'Dancer', 149000, 28, 'No', 'Dance', 'High'),
(29, 'Miyeon', 20, 'Female', 'Cube', 'Vocalist', 167000, 29, 'No', 'Vocal', 'Very High'),
(30, 'Bangchan', 22, 'Male', 'JYP', 'All-rounder', 115000, 30, 'No', 'Dance', 'High'),
(31, 'Chaeyoung', 19, 'Female', 'JYP', 'Rapper', 132000, 31, 'No', 'Rap', 'High'),
(32, 'Jungkook', 21, 'Male', 'BigHit', 'All-rounder', 185000, 32, 'No', 'Dance', 'Very High'),
(33, 'Shuhua', 18, 'Female', 'Cube', 'Visual', 153000, 33, 'No', 'Visual', 'High'),
(34, 'Taemin', 23, 'Male', 'SM', 'Dancer', 190000, 34, 'No', 'Dance', 'Very High'),
(35, 'Ningning', 17, 'Female', 'SM', 'Vocalist', 138000, 35, 'No', 'Vocal', 'High'),
(36, 'Baekhyun', 24, 'Male', 'SM', 'Vocalist', 210000, 36, 'No', 'Vocal', 'Very High'),
(37, 'Yeji', 19, 'Female', 'JYP', 'All-rounder', 145000, 37, 'No', 'Dance', 'High'),
(38, 'Winter', 20, 'Female', 'SM', 'Vocalist', 175000, 38, 'No', 'Vocal', 'High'),
(39, 'Beomgyu', 20, 'Male', 'BigHit', 'All-rounder', 155000, 39, 'No', 'Dance', 'High'),
(40, 'Karina', 20, 'Female', 'SM', 'Visual', 188000, 40, 'No', 'Visual', 'Very High'),
(41, 'Renjun', 20, 'Male', 'SM', 'Vocalist', 142000, 41, 'No', 'Vocal', 'High'),
(42, 'Ryujin', 19, 'Female', 'JYP', 'Rapper', 160000, 42, 'No', 'Rap', 'High'),
(43, 'Seungmin', 21, 'Male', 'JYP', 'Vocalist', 135000, 43, 'No', 'Vocal', 'High'),
(44, 'Giselle', 20, 'Female', 'SM', 'Rapper', 158000, 44, 'No', 'Rap', 'High'),
(45, 'Haechan', 21, 'Male', 'SM', 'Vocalist', 178000, 45, 'No', 'Vocal', 'Very High'),
(46, 'Sunoo', 19, 'Male', 'BigHit', 'Vocalist', 148000, 46, 'No', 'Vocal', 'High'),
(47, 'Yunjin', 20, 'Female', 'Pledis', 'Vocalist', 165000, 47, 'No', 'Vocal', 'Very High'),
(48, 'Jay', 22, 'Male', 'BigHit', 'Rapper', 130000, 48, 'No', 'Rap', 'High'),
(49, 'Sakura', 23, 'Female', 'Source', 'Visual', 185000, 49, 'No', 'Visual', 'Very High'),
(50, 'Heeseung', 21, 'Male', 'BigHit', 'All-rounder', 195000, 50, 'No', 'Vocal', 'Very High');

--just to check if the 50 trainess have been inserted succesfully--
SELECT COUNT(*) AS total_trainees FROM Trainees;

SELECT * FROM Trainees

INSERT INTO Performances VALUES
(1, 1, 'Powerful', 95, 60000),
(2, 1, 'Cute', 90, 40000),
(3, 2, 'Vocal Showcase', 98, 80000),
(4, 2, 'Elegant', 94, 75000),
(5, 3, 'Dark', 92, 50000),
(6, 3, 'Hip-hop', 88, 45000),
(7, 4, 'Girl Crush', 85, 30000),
(8, 4, 'Cute', 82, 25000),
(9, 5, 'Elegant', 97, 90000),
(10, 5, 'Vocal Showcase', 95, 87000),
(11, 6, 'Hip-hop', 88, 45000),
(12, 6, 'Powerful', 90, 48000),
(13, 7, 'Dark', 84, 20000),
(14, 7, 'Hip-hop', 82, 19000),
(15, 8, 'Girl Crush', 93, 67000),
(16, 8, 'Powerful', 91, 64000),
(17, 9, 'Vocal Showcase', 96, 85000),
(18, 9, 'Elegant', 94, 82000),
(19, 10, 'Powerful', 92, 55000),
(20, 10, 'Hip-hop', 90, 52000),
(21, 11, 'Vocal Showcase', 83, 30000),
(22, 11, 'Cute', 80, 28000),
(23, 12, 'Dark', 85, 34000),
(24, 12, 'Hip-hop', 82, 31000),
(25, 13, 'Vocal Showcase', 91, 62000),
(26, 13, 'Powerful', 89, 60000),
(27, 14, 'Girl Crush', 84, 29000),
(28, 14, 'Cute', 81, 27000),
(29, 15, 'Powerful', 86, 40000),
(30, 15, 'Hip-hop', 85, 38000),
(31, 16, 'Vocal Showcase', 82, 26000),
(32, 16, 'Cute', 79, 24000),
(33, 17, 'Dark', 83, 22000),
(34, 17, 'Hip-hop', 80, 21000),
(35, 18, 'Girl Crush', 95, 77000),
(36, 18, 'Powerful', 93, 74000),
(37, 19, 'Vocal Showcase', 81, 25000),
(38, 19, 'Elegant', 80, 23000),
(39, 20, 'Girl Crush', 87, 42000),
(40, 20, 'Cute', 84, 39000),
(41, 21, 'Vocal Showcase', 88, 42000),
(42, 21, 'Cute', 85, 40000),
(43, 22, 'Visual Stage', 91, 55000),
(44, 22, 'Elegant', 89, 52000),
(45, 23, 'Powerful', 87, 46000),
(46, 23, 'Girl Crush', 89, 48000),
(47, 24, 'Hip-hop', 86, 45000),
(48, 24, 'Powerful', 88, 47000),
(49, 25, 'Visual Stage', 93, 67000),
(50, 25, 'Elegant', 90, 64000),
(51, 26, 'Vocal Showcase', 84, 39000),
(52, 26, 'Cute', 82, 37000),
(53, 27, 'Vocal Showcase', 87, 50000),
(54, 27, 'Elegant', 88, 52000),
(55, 28, 'Hip-hop', 89, 53000),
(56, 28, 'Powerful', 90, 56000),
(57, 29, 'Vocal Showcase', 92, 69000),
(58, 29, 'Elegant', 91, 67000),
(59, 30, 'Powerful', 86, 44000),
(60, 30, 'Hip-hop', 85, 42000),
(61, 31, 'Dark', 88, 51000),
(62, 31, 'Hip-hop', 87, 49000),
(63, 32, 'Powerful', 94, 78000),
(64, 32, 'Hip-hop', 93, 76000),
(65, 33, 'Visual Stage', 90, 65000),
(66, 33, 'Elegant', 89, 63000),
(67, 34, 'Powerful', 95, 82000),
(68, 34, 'Hip-hop', 94, 80000),
(69, 35, 'Vocal Showcase', 90, 68000),
(70, 35, 'Elegant', 89, 66000),
(71, 36, 'Vocal Showcase', 96, 88000),
(72, 36, 'Elegant', 95, 86000),
(73, 37, 'Powerful', 89, 56000),
(74, 37, 'Girl Crush', 90, 58000),
(75, 38, 'Vocal Showcase', 92, 70000),
(76, 38, 'Elegant', 91, 68000),
(77, 39, 'Powerful', 88, 54000),
(78, 39, 'Hip-hop', 89, 56000),
(79, 40, 'Visual Stage', 93, 75000),
(80, 40, 'Elegant', 92, 73000),
(81, 41, 'Vocal Showcase', 89, 57000),
(82, 41, 'Elegant', 88, 55000),
(83, 42, 'Hip-hop', 90, 62000),
(84, 42, 'Girl Crush', 91, 64000),
(85, 43, 'Vocal Showcase', 87, 50000),
(86, 43, 'Cute', 86, 48000),
(87, 44, 'Hip-hop', 89, 60000),
(88, 44, 'Powerful', 90, 62000),
(89, 45, 'Vocal Showcase', 93, 74000),
(90, 45, 'Elegant', 92, 72000),
(91, 46, 'Vocal Showcase', 88, 57000),
(92, 46, 'Cute', 87, 55000),
(93, 47, 'Vocal Showcase', 91, 68000),
(94, 47, 'Elegant', 90, 66000),
(95, 48, 'Hip-hop', 88, 54000),
(96, 48, 'Powerful', 89, 56000),
(97, 49, 'Visual Stage', 94, 77000),
(98, 49, 'Elegant', 93, 75000),
(99, 50, 'Vocal Showcase', 95, 85000),
(100, 50, 'Powerful', 94, 83000),
(101, 1, 'Dark', 91, 58000),
(102, 2, 'Powerful', 97, 91000),
(103, 3, 'Vocal Showcase', 90, 63000),
(104, 5, 'Hip-hop', 93, 88000),
(105, 6, 'Elegant', 91, 72000),
(106, 8, 'Vocal Showcase', 94, 83000),
(107, 10, 'Elegant', 89, 66000),
(108, 12, 'Powerful', 86, 49000),
(109, 13, 'Hip-hop', 90, 70000),
(110, 18, 'Elegant', 95, 87000),
(111, 19, 'Hip-hop', 83, 45000),
(112, 22, 'Powerful', 92, 75000),
(113, 23, 'Vocal Showcase', 89, 61000),
(114, 25, 'Hip-hop', 91, 78000),
(115, 27, 'Powerful', 90, 73000),
(116, 29, 'Hip-hop', 93, 85000),
(117, 31, 'Vocal Showcase', 88, 67000),
(118, 33, 'Powerful', 92, 79000),
(119, 35, 'Hip-hop', 91, 81000),
(120, 37, 'Vocal Showcase', 90, 74000)

SELECT COUNT(*) AS total_performances FROM Performances 

-- To get average age of selected trainees
/*
Used ROUND to limit to one decimal place for presentation clarity.
CAST to DECIMAL(4,1) to avoid trailing zeros in SQL Server and keep clean display.
Filtered with WHERE selected = 'Yes' to focus on trainees who made the final group.
*/

SELECT CAST(ROUND(AVG(age * 1.0),1) AS DECIMAL(4,1)) AS avg_age_selected
FROM Trainees
WHERE selected='Yes'

-- To show distribution of top skills among selected trainees
/*
Used COUNT(*) to count trainees per top skill.
Grouped by top_skill to summarize overall skill breakdown.
Filtered with WHERE selected = 'Yes' to focus only on selected trainees.
Ordered descending to highlight most common skills first.
*/

SELECT name,top_skill, COUNT(*) AS count_selected
FROM Trainees
WHERE selected ='Yes'
GROUP BY name,top_skill
ORDER BY count_selected DESC

-- To analyze company representation in the final group
/*
Used COUNT(*) to count trainees per company.
Grouped by company to summarize agency contribution.
Filtered by WHERE selected = 'Yes' to include only final group members.
Ordered descending to show top contributing companies first.
*/

SELECT company, COUNT(*) AS num_selected
FROM Trainees
WHERE selected = 'Yes'
GROUP BY company
ORDER BY num_selected DESC

-- To analyze gender distribution among selected trainees
/*
Used COUNT(*) to count trainees per gender.
Grouped by gender to show male vs female representation.
Filtered with WHERE selected = 'Yes' for final group only.
Ordered descending to highlight larger groups first.
*/

SELECT gender,COUNT(*) as gen_distribution
FROM Trainees
WHERE selected='Yes'
GROUP BY gender
ORDER BY gen_distribution DESC

-- To find trainees with the highest average performance scores
/*
Joined Performances and Trainees to link scores to each trainee.
Used ROUND(AVG(score), 1) to present clear, neat average scores.
Grouped by name to calculate individual averages.
Ordered descending to show top performers first.
*/

SELECT t.name,ROUND(AVG(score*1.0),1) as avg_performance_score
FROM Trainees t
JOIN Performances p
ON t.trainee_id=p.trainee_id 
GROUP BY t.name
ORDER BY avg_performance_score DESC

-- To find performance concepts with highest average fan votes
/*
Used ROUND(AVG(votes_during), 0) to show whole-number averages.
Grouped by concept to summarize votes by performance type.
Ordered descending to highlight most popular concepts first.
*/

SELECT concept,ROUND(AVG(votes_during*1.0),0) AS avg_vote
FROM Performances
GROUP BY concept
ORDER BY avg_vote DESC

-- TO identify Best Consept  according to fans of all concepts--
/*
Used TOP 1 to get only one best concept according to fans,
ROUND(AVG(votes_during), 0) to show whole-number averages.
Grouped by concept to summarize votes by performance type.
Ordered descending to highlight most popular concepts first.
*/

SELECT TOP 1 concept,ROUND(AVG(votes_during*1.0),0) AS avg_vote
FROM Performances
GROUP BY concept
ORDER BY avg_vote DESC

-- To identify "hidden gem" trainees with low votes but high scores
/*
Filtered with WHERE to select trainees with votes < 150,000 (lower popularity).
Grouped by name and votes to calculate individual average scores.
Used HAVING to include only trainees with average score >= 88.
Ordered descending to spotlight the strongest hidden performers first.
*/

SELECT t.name,t.votes,ROUND(AVG(p.score), 1) AS avg_score
FROM Trainees t
JOIN Performances p ON t.trainee_id=p.trainee_id
WHERE t.votes<150000
GROUP BY t.name,t.votes
HAVING AVG(p.score)>=88
ORDER BY avg_score DESC

-- To analyze relationship between star quality type and average performance score
/*
Joined Performances and Trainees to link scores with each trainee's star quality.
Grouped by star_quality to calculate average performance per type.
Used ROUND(AVG(score), 1) for clear one-decimal presentation.
Ordered descending to highlight which star qualities had the highest average scores.
*/

SELECT t.star_quality,ROUND(AVG(p.score),1) AS avg_score
FROM Trainees t
JOIN Performances p
ON t.trainee_id=p.trainee_id
GROUP BY t.star_quality
ORDER BY avg_score DESC



