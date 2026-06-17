CREATE DATABASE spotify_clone;
USE spotify_clone;

-- Table :- 1 --
CREATE TABLE users (
	user_id int primary key auto_increment,
    user_name varchar(100) not null,
    email varchar(50) not null unique,
	phone varchar(20) not null,
    city varchar(100) not null
);

-- Audit table of users for appply trigger
CREATE TABLE User_Log (
    log_id int primary key auto_increment,
    user_id int,
    user_name varchar(50),
    action_performed varchar(50),
    action_time datetime
);

-- Make Trigger : After Insert
-- Whenever a new user is added, store it in the user_log.
delimiter //
CREATE TRIGGER trg_after_user_insert
after insert
on Users
for each row
begin
    insert into User_Log (
        user_id,
        user_name,
        action_performed,
        action_time
    )
    values (
        new.user_id,
        new.user_name,
        'New User Registered',
        now()
    );
end //
delimiter ;

INSERT INTO users (user_id, user_name, email, phone, city) VALUES
(1, 'Aarav Patel', 'aarav.patel1@gmail.com', '9876543201', 'Ahmedabad'),
(2, 'Diya Shah', 'diya.shah2@gmail.com', '9876543202', 'Surat'),
(3, 'Krish Joshi', 'krish.joshi3@gmail.com', '9876543203', 'Rajkot'),
(4, 'Anaya Mehta', 'anaya.mehta4@gmail.com', '9876543204', 'Vadodara'),
(5, 'Vivaan Desai', 'vivaan.desai5@gmail.com', '9876543205', 'Mumbai'),
(6, 'Riya Patel', 'riya.patel6@gmail.com', '9876543206', 'Pune'),
(7, 'Arjun Sharma', 'arjun.sharma7@gmail.com', '9876543207', 'Delhi'),
(8, 'Kavya Verma', 'kavya.verma8@gmail.com', '9876543208', 'Jaipur'),
(9, 'Rahul Singh', 'rahul.singh9@gmail.com', '9876543209', 'Lucknow'),
(10, 'Priya Nair', 'priya.nair10@gmail.com', '9876543210', 'Kochi'),
(11, 'Yash Patel', 'yash.patel11@gmail.com', '9876543211', 'Ahmedabad'),
(12, 'Sneha Shah', 'sneha.shah12@gmail.com', '9876543212', 'Surat'),
(13, 'Harsh Mehta', 'harsh.mehta13@gmail.com', '9876543213', 'Vadodara'),
(14, 'Pooja Joshi', 'pooja.joshi14@gmail.com', '9876543214', 'Rajkot'),
(15, 'Dhruv Patel', 'dhruv.patel15@gmail.com', '9876543215', 'Ahmedabad'),
(16, 'Nidhi Desai', 'nidhi.desai16@gmail.com', '9876543216', 'Mumbai'),
(17, 'Manav Shah', 'manav.shah17@gmail.com', '9876543217', 'Surat'),
(18, 'Aditi Sharma', 'aditi.sharma18@gmail.com', '9876543218', 'Delhi'),
(19, 'Karan Verma', 'karan.verma19@gmail.com', '9876543219', 'Jaipur'),
(20, 'Meera Nair', 'meera.nair20@gmail.com', '9876543220', 'Kochi'),
(21, 'Rohan Patel', 'rohan.patel21@gmail.com', '9876543221', 'Ahmedabad'),
(22, 'Ishita Shah', 'ishita.shah22@gmail.com', '9876543222', 'Surat'),
(23, 'Parth Joshi', 'parth.joshi23@gmail.com', '9876543223', 'Rajkot'),
(24, 'Jiya Mehta', 'jiya.mehta24@gmail.com', '9876543224', 'Vadodara'),
(25, 'Tushar Desai', 'tushar.desai25@gmail.com', '9876543225', 'Mumbai'),
(26, 'Khushi Patel', 'khushi.patel26@gmail.com', '9876543226', 'Pune'),
(27, 'Aryan Sharma', 'aryan.sharma27@gmail.com', '9876543227', 'Delhi'),
(28, 'Neha Verma', 'neha.verma28@gmail.com', '9876543228', 'Jaipur'),
(29, 'Mohit Singh', 'mohit.singh29@gmail.com', '9876543229', 'Lucknow'),
(30, 'Anjali Nair', 'anjali.nair30@gmail.com', '9876543230', 'Kochi'),
(31, 'Jay Patel', 'jay.patel31@gmail.com', '9876543231', 'Ahmedabad'),
(32, 'Hetal Shah', 'hetal.shah32@gmail.com', '9876543232', 'Surat'),
(33, 'Nirav Mehta', 'nirav.mehta33@gmail.com', '9876543233', 'Vadodara'),
(34, 'Komal Joshi', 'komal.joshi34@gmail.com', '9876543234', 'Rajkot'),
(35, 'Meet Patel', 'meet.patel35@gmail.com', '9876543235', 'Ahmedabad'),
(36, 'Bhumi Desai', 'bhumi.desai36@gmail.com', '9876543236', 'Mumbai'),
(37, 'Dev Shah', 'dev.shah37@gmail.com', '9876543237', 'Surat'),
(38, 'Palak Sharma', 'palak.sharma38@gmail.com', '9876543238', 'Delhi'),
(39, 'Yuvraj Verma', 'yuvraj.verma39@gmail.com', '9876543239', 'Jaipur'),
(40, 'Sanjana Nair', 'sanjana.nair40@gmail.com', '9876543240', 'Kochi'),
(41, 'Rutvik Patel', 'rutvik.patel41@gmail.com', '9876543241', 'Ahmedabad'),
(42, 'Krupa Shah', 'krupa.shah42@gmail.com', '9876543242', 'Surat'),
(43, 'Jayesh Mehta', 'jayesh.mehta43@gmail.com', '9876543243', 'Vadodara'),
(44, 'Mansi Joshi', 'mansi.joshi44@gmail.com', '9876543244', 'Rajkot'),
(45, 'Hiren Patel', 'hiren.patel45@gmail.com', '9876543245', 'Ahmedabad'),
(46, 'Riddhi Desai', 'riddhi.desai46@gmail.com', '9876543246', 'Mumbai'),
(47, 'Smit Shah', 'smit.shah47@gmail.com', '9876543247', 'Surat'),
(48, 'Tanvi Sharma', 'tanvi.sharma48@gmail.com', '9876543248', 'Delhi'),
(49, 'Vraj Verma', 'vraj.verma49@gmail.com', '9876543249', 'Jaipur'),
(50, 'Aniket Singh', 'aniket.singh50@gmail.com', '9876543250', 'Lucknow');

INSERT INTO users (user_id, user_name, email, phone, city) VALUES
(51, 'Nakul Patel', 'nakul.patel51@gmail.com', '9876543251', 'Ahmedabad'),
(52, 'Isha Shah', 'isha.shah52@gmail.com', '9876543252', 'Surat'),
(53, 'Devansh Joshi', 'devansh.joshi53@gmail.com', '9876543253', 'Rajkot'),
(54, 'Rutu Mehta', 'rutu.mehta54@gmail.com', '9876543254', 'Vadodara'),
(55, 'Mihir Desai', 'mihir.desai55@gmail.com', '9876543255', 'Mumbai'),
(56, 'Jhanvi Patel', 'jhanvi.patel56@gmail.com', '9876543256', 'Pune'),
(57, 'Aakash Sharma', 'aakash.sharma57@gmail.com', '9876543257', 'Delhi'),
(58, 'Naina Verma', 'naina.verma58@gmail.com', '9876543258', 'Jaipur'),
(59, 'Ritesh Singh', 'ritesh.singh59@gmail.com', '9876543259', 'Lucknow'),
(60, 'Keerthi Nair', 'keerthi.nair60@gmail.com', '9876543260', 'Kochi');
    
select * from users;

-- Apply  Trigger
select * from User_Log;


-- Table :- 2 --
CREATE TABLE Artists ( 
	artist_id int primary key auto_increment, 
    artist_name varchar(100) NOT NULL, 
    genre varchar(50) 
);
    
-- Make Trigger :- Before Update
-- Prevent Empty Artist Name
delimiter //
CREATE TRIGGER trg_artist_before_update
before update 
on Artists
for each row
begin
    if new.artist_name is null or new.artist_name = '' then
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Artist name cannot be empty';
    end if;
end //
delimiter ;

INSERT INTO Artists (artist_id, artist_name, genre) VALUES
(1, 'Arijit Singh', 'Bollywood'),
(2, 'Shreya Ghoshal', 'Bollywood'),
(3, 'Jubin Nautiyal', 'Romantic'),
(4, 'Neha Kakkar', 'Pop'),
(5, 'Darshan Raval', 'Gujarati Pop'),
(6, 'Vishal Mishra', 'Bollywood'),
(7, 'Badshah', 'Rap'),
(8, 'A. R. Rahman', 'Soundtrack'),
(9, 'Sonu Nigam', 'Bollywood'),
(10, 'Sachet Tandon', 'Romantic'),
(11, 'Parampara Thakur', 'Romantic'),
(12, 'Atif Aslam', 'Bollywood'),
(13, 'KK', 'Bollywood'),
(14, 'Mohit Chauhan', 'Bollywood'),
(15, 'Sunidhi Chauhan', 'Pop'),
(16, 'B Praak', 'Punjabi'),
(17, 'Guru Randhawa', 'Punjabi'),
(18, 'Tony Kakkar', 'Pop'),
(19, 'Mika Singh', 'Pop'),
(20, 'Yo Yo Honey Singh', 'Rap'),
(21, 'Asees Kaur', 'Romantic'),
(22, 'Palak Muchhal', 'Bollywood'),
(23, 'Pritam', 'Soundtrack'),
(24, 'Ankit Tiwari', 'Romantic'),
(25, 'Armaan Malik', 'Bollywood'),
(26, 'Tulsi Kumar', 'Bollywood'),
(27, 'Kanika Kapoor', 'Pop'),
(28, 'Sukhwinder Singh', 'Bollywood'),
(29, 'Shaan', 'Bollywood'),
(30, 'Kailash Kher', 'Sufi'),
(31, 'Shankar Mahadevan', 'Bollywood'),
(32, 'Udit Narayan', 'Bollywood'),
(33, 'Alka Yagnik', 'Bollywood'),
(34, 'Kumar Sanu', 'Bollywood'),
(35, 'Abhijeet Bhattacharya', 'Bollywood'),
(36, 'Aditya Gadhvi', 'Gujarati Folk'),
(37, 'Kinjal Dave', 'Gujarati Folk'),
(38, 'Geeta Rabari', 'Gujarati Folk'),
(39, 'Jignesh Kaviraj', 'Gujarati Folk'),
(40, 'Kirtidan Gadhvi', 'Gujarati Folk'),
(41, 'Dev Negi', 'Bollywood'),
(42, 'Harshdeep Kaur', 'Sufi'),
(43, 'Monali Thakur', 'Bollywood'),
(44, 'Jonita Gandhi', 'Pop'),
(45, 'Anuv Jain', 'Indie'),
(46, 'Prateek Kuhad', 'Indie'),
(47, 'Ritviz', 'Electronic'),
(48, 'Divine', 'Rap'),
(49, 'MC Stan', 'Rap'),
(50, 'Seedhe Maut', 'Rap');

-- Apply Trigger
UPDATE Artists
SET artist_name = ''
WHERE artist_id = 1;

select * from Artists;

/
-- Table :- 3 --
CREATE TABLE Albums ( 
	album_id int primary key auto_increment, 
	artist_id int, 
    album_name varchar(100), 
    release_year year, 
    foreign key (artist_id) references Artists(artist_id) 
    );

-- Make Trigger :- Before Delete
-- Do Not Allow Deletion of Albums Released Before 2020
delimiter //
CREATE TRIGGER trg_album_protect_old
before delete
on Albums
for each row
begin
    if old.release_year < 2020 then
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Old albums cannot be deleted';
    end if;
end //
delimiter ;

INSERT INTO Albums (album_id, artist_id, album_name, release_year) VALUES
(1,1,'Soulful Melodies',2024),
(2,2,'Dil Ke Raaste',2021),
(3,3,'Golden Voice',2023),
(4,4,'Love Notes',2024),
(5,5,'Dance Fever',2023),
(6,6,'Gujarati Beats',2024),
(7,7,'Ishq Forever',2023),
(8,8,'Rap Revolution',2024),
(9,9,'Melody India',2024),
(10,10,'Evergreen Hits',2021),
(11,11,'Romantic Vibes',2023),
(12,12,'Dream Symphony',2024),
(13,13,'Heart Strings',2020),
(14,14,'Memories',2017),
(15,15,'Mountain Echoes',2015),
(16,16,'Pop Sensation',2024),
(17,17,'Punjabi Power',2023),
(18,18,'Desi Groove',2024),
(19,19,'Pop Magic',2022),
(20,20,'Celebration Beats',2021),
(21,21,'Rap King',2024),
(22,22,'Dreamy Nights',2023),
(23,23,'Melodic Journey',2022),
(24,24,'Cinema Classics',2019),
(25,25,'Broken Hearts',2021),
(26,26,'Voice Of Love',2024),
(27,27,'Dil Se',2018),
(28,28,'Pop Queen',2023),
(29,29,'Patriotic Tunes',1999),
(30,30,'Musical Memories',2005),
(31,31,'Sufi Soul',2024),
(32,32,'Harmony',2023),
(33,33,'Timeless Songs',2008),
(34,34,'Golden Collection',2003),
(35,35,'90s Nostalgia',1999),
(36,36,'Retro Gold',2001),
(37,37,'Garba Nights',2024),
(38,38,'Gujarati Garima',2023),
(39,39,'Lok Dayro',2022),
(40,40,'Rangilo Gujarat',2024),
(41,41,'Folk Legends',2023),
(42,42,'Bollywood Beats',2024),
(43,43,'Sufi Nights',2023),
(44,44,'Sweet Melodies',2022),
(45,45,'Modern Pop',2024),
(46,46,'Indie Dreams',2023),
(47,47,'Midnight Thoughts',2024),
(48,48,'Electronic Waves',2023),
(49,49,'Street Stories',2024),
(50,50,'Urban Flow',2023);


-- Apply Trigger
-- o/p :- Delete Succesfully bcz it release before 2020 
DELETE FROM Albums
WHERE album_id = 5;

-- o/p :- Error Code: 1644. Old albums cannot be deleted
DELETE FROM Albums
WHERE album_id = 35;


-- Table :- 4 --
CREATE TABLE Songs ( 
	song_id int primary key auto_increment , 
    album_id int, 
    title varchar(100), 
    duration time, 
    foreign key (album_id) references Albums(album_id) 
);

-- Make Trigger :- Before Insert
-- Prevent songs shorter than 1 minute.
delimiter //
CREATE TRIGGER trg_song_duration_check
before insert
on Songs
for each row
begin
    if time_to_sec(new.duration) < 60 then
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Song duration must be at least 1 minute';
    end if;
end //
delimiter ;

INSERT INTO Songs (song_id, album_id, title, duration) VALUES
 (1, 1, 'Tera Intezaar', '00:04:15'),
 (2, 2, 'Dil Ki Awaaz', '00:03:52'),
 (3, 3, 'Raaste Pyaar Ke', '00:04:08'),
 (4, 4, 'Golden Memories', '00:05:01'),
 (5, 5, 'Ishq Wali Raat', '00:04:22'),
 (6, 6, 'Dance Floor', '00:03:45'),
 (7, 7, 'Garba Queen', '00:04:30'),
 (8, 8, 'Mohabbat Ka Safar', '00:04:12'),
 (9, 9, 'Rap Machine', '00:03:28'),
 (10, 10, 'Bharat Melody', '00:05:15'),
 (11, 11, 'Yaadon Ka Safar', '00:04:05'),
 (12, 12, 'Romantic Rain', '00:03:59'),
 (13, 13, 'Dream Symphony', '00:04:44'),
 (14, 14, 'Heart Beats', '00:04:20'),
 (15, 15, 'Old Memories', '00:03:55'),
 (16, 16, 'Mountain Wind', '00:04:37'),
 (17, 17, 'Pop Star', '00:03:41'),
 (18, 18, 'Punjabi Tadka', '00:02:45'),
 (19, 19, 'Desi Swag', '00:03:50'),
 -- Error Code: 1644. Song duration must be at least 1 minute	0.015 sec
-- (20, 20, 'Magic Night', '00:00:55'),
 (20, 20, 'Magic Night', '00:05:55'),
 (21, 21, 'Celebration Time', '00:03:48'),
 (22, 22, 'King Of Rap', '00:04:09'),
 (23, 23, 'Dreamy Eyes', '00:04:26'),
 (24, 24, 'Melodic Soul', '00:03:57'),
 (25, 25, 'Cinema Love', '00:04:13'),
 (26, 26, 'Broken Dreams', '00:04:35'),
 (27, 27, 'Voice Of Heart', '00:03:53'),
 (28, 28, 'Dil Se Mohabbat', '00:04:11'),
 (29, 29, 'Pop Sensation', '00:03:42'),
 (30, 30, 'Desh Ki Shaan', '00:05:03'),
 (31, 31, 'Musical Journey', '00:04:16'),
 (32, 32, 'Sufi Rang', '00:05:10'),
 (33, 33, 'Harmony Forever', '00:04:24'),
 (34, 34, 'Timeless Love', '00:03:58'),
 (35, 35, 'Golden Era', '00:04:28'),
 (36, 36, '90s Rewind', '00:04:33'),
 (37, 37, 'Retro Nights', '00:03:56'),
 (38, 38, 'Garba Beats', '00:04:45'),
 (39, 39, 'Gujarati Pride', '00:04:07'),
 (40, 40, 'Lok Sangeet', '00:05:00'),
 (41, 41, 'Rangilo Gujarat', '00:04:21'),
 (42, 42, 'Folk Legends', '00:04:39'),
 (43, 43, 'Bollywood Magic', '00:03:54'),
 (44, 44, 'Sufi Nights', '00:05:12'),
 (45, 45, 'Sweet Voice', '00:04:03'),
 (46, 46, 'Modern Love', '00:03:49'),
 (47, 47, 'Indie Dreams', '00:04:31'),
 (48, 48, 'Midnight Thoughts', '00:04:17'),
 (49, 49, 'Electronic Storm', '00:03:46'),
 (50, 50, 'Street Stories', '00:05:35');
 
select * from songs;

update songs
set duration =  '00:05:55'
where song_id = 20;


-- Table :- 5 --
CREATE TABLE Listening_History ( 
	history_id int primary key auto_increment,
    user_id int,
    song_id int,
    played_at datetime,
    foreign key (user_id) references Users(user_id),
    foreign key (song_id) references Songs(song_id) 
);

-- Audit table of Listening_History for appply trigger
CREATE TABLE Listening_History_Deleted_Log (
    log_id int primary key auto_increment,
    history_id int,
    user_id int,
    song_id int,
    played_at datetime,
    deleted_on datetime
);

-- Make Trigger : After Delete
delimiter //
CREATE TRIGGER trg_after_delete_listening_history
after delete
on Listening_History
for each row
begin
    insert into Listening_History_Deleted_Log
    (
        history_id,
        user_id,
        song_id,
        played_at,
        deleted_on
    )
    values
    (
        old.history_id,
        old.user_id,
        old.song_id,
        old.played_at,
        now()
    );
end //
delimiter ;

INSERT INTO Listening_History (history_id, user_id, song_id, played_at) VALUES
(1, 1, 1, '2026-01-01 08:15:00'),
(2, 2, 2, '2026-01-02 09:20:00'),
(3, 3, 3, '2026-01-03 10:25:00'),
(4, 4, 4, '2026-01-04 11:30:00'),
(5, 5, 5, '2026-01-05 12:35:00'),
(6, 6, 6, '2026-01-06 13:40:00'),
(7, 7, 7, '2026-01-07 14:45:00'),
(8, 8, 8, '2026-01-08 15:50:00'),
(9, 9, 9, '2026-01-09 16:55:00'),
(10, 10, 10, '2026-01-10 17:00:00'),
(11, 11, 11, '2026-01-11 18:05:00'),
(12, 12, 12, '2026-01-12 19:10:00'),
(13, 13, 13, '2026-01-13 20:15:00'),
(14, 14, 14, '2026-01-14 21:20:00'),
(15, 15, 15, '2026-01-15 22:25:00'),
(16, 16, 16, '2026-01-16 08:30:00'),
(17, 17, 17, '2026-01-17 09:35:00'),
(18, 18, 18, '2026-01-18 10:40:00'),
(19, 19, 19, '2026-01-19 11:45:00'),
(20, 20, 20, '2026-01-20 12:50:00'),
(21, 21, 21, '2026-01-21 13:55:00'),
(22, 22, 22, '2026-01-22 14:00:00'),
(23, 23, 23, '2026-01-23 15:05:00'),
(24, 24, 24, '2026-01-24 16:10:00'),
(25, 25, 25, '2026-01-25 17:15:00'),
(26, 26, 26, '2026-01-26 18:20:00'),
(27, 27, 27, '2026-01-27 19:25:00'),
(28, 28, 28, '2026-01-28 20:30:00'),
(29, 29, 29, '2026-01-29 21:35:00'),
(30, 30, 30, '2026-01-30 22:40:00'),
(31, 31, 31, '2026-02-01 08:45:00'),
(32, 32, 32, '2026-02-02 09:50:00'),
(33, 33, 33, '2026-02-03 10:55:00'),
(34, 34, 34, '2026-02-04 11:00:00'),
(35, 35, 35, '2026-02-05 12:05:00'),
(36, 36, 36, '2026-02-06 13:10:00'),
(37, 37, 37, '2026-02-07 14:15:00'),
(38, 38, 38, '2026-02-08 15:20:00'),
(39, 39, 39, '2026-02-09 16:25:00'),
(40, 40, 40, '2026-02-10 17:30:00'),
(41, 41, 41, '2026-02-11 18:35:00'),
(42, 42, 42, '2026-02-12 19:40:00'),
(43, 43, 43, '2026-02-13 20:45:00'),
(44, 44, 44, '2026-02-14 21:50:00'),
(45, 45, 45, '2026-02-15 22:55:00'),
(46, 46, 46, '2026-02-16 08:00:00'),
(47, 47, 47, '2026-02-17 09:05:00'),
(48, 48, 48, '2026-02-18 10:10:00'),
(49, 49, 49, '2026-02-19 11:15:00'),
(50, 50, 50, '2026-02-20 12:20:00'),
(51, 51, 1, '2026-02-21 13:25:00');

-- Apply Trigger
delete from Listening_History
where history_id = 51;

select * from Listening_History_Deleted_Log;
SELECT COUNT(*) FROM Listening_History;

-- -------------------------------------------------------------------------------------------------------- --

                                                   -- 1. PATTERNS --
                                                   
-- LIKE OPERTORS --
-- Find users whose city starts with 'K'
select *
from Users
where city LIKE 'K%';

-- BETWEEN OPERTORS --
-- Find albums released between 2015 and 2020
select *
from Albums
where release_year BETWEEN 2015 AND 2020;

-- IN OPERTORS --
-- Find users from Ahmedabad, Mumbai
select * 
from Users
where city IN ( 'Ahmedabad', 'Mumbai' );

-- AND OPERTORS --
-- Find songs listened by user 20 during January 2026
select *
from Listening_History
where user_id = 20
AND played_at BETWEEN '2026-01-01' AND '2026-02-28';
select * from Listening_History;

-- OR OPERTORS --
-- Find songs with duration greater than 5 minutes OR album_id less than 5
select * 
from songs
where duration > '00:05:00'
OR album_id < 5;

-- -------------------------------------------------------------------------------------------------------- --

                   -- 2.DISTINCT, ASCENDING/DESCING, ORDER BY, LIMIT, OFFSET --

-- Display distinct cities from the Users table in descending order, 
-- skip the first 2 records(3rd highest), and show the next 5 records.
select DISTINCT city
from users
ORDER BY city DESC
LIMIT 5 
OFFSET 2 ;

-- -------------------------------------------------------------------------------------------------------- --

                                       -- 3. AGGREGATION FUNCTION --
								
-- 1. MIN() :- Find the shortest song duration in the Songs table.
select MIN(duration) as shortest_song
from Songs;

-- 2. MAX() :- Find the latest song listening date and time from the Listening_History table.
select MAX(played_at) as latest_listening_time
from Listening_History;

-- 3. COUNT() :- Count the total number of users available.
select COUNT(*) as total_users
from Users;

-- 4. AVG() :- Find the average release year of all albums.
select AVG(release_year) as average_release_year
from Albums;

-- 5. SUM() :- Find the sum of all artist IDs in the Artists table.
select SUM(artist_id) as total_artist_ids
from Artists;

-- ALL AGGREGATION FUN.
-- Display the minimum release year, maximum release year,total number of albums, 
-- average release year, and sum of artist IDs from the Albums table.
select
    MIN(release_year) as oldest_album,
    MAX(release_year) as latest_album,
    COUNT(*) as total_albums_do_not_ignore_null_values,
	COUNT(release_year) as total_albums_ignore_null_values,
    AVG(release_year) as average_year,
    SUM(artist_id) as total_artist_ids
from Albums;

-- -------------------------------------------------------------------------------------------------------- --

                                          -- 4. GROUP BY WITH HAVING --
                                          
-- 1. Display genres having more than 3 artists.
select genre,
	   COUNT(*) as total_artists
from Artists
group by genre
having COUNT(*) > 3 ;

-- 2. Display artists whose oldest album was released before 2010.
select artist_id,
	MIN(release_year) as oldest_album
from Albums
group by artist_id
having MIN(release_year) < 2010;

-- 3. Display albums whose average song duration is greater than 4 minutes.
select album_id,
	   AVG(time_to_sec(duration)) as avg_song_duration
from songs
group by album_id
having avg_song_duration > 240;

-- -------------------------------------------------------------------------------------------------------- --

                                                  -- 5. JOIN --

-- 1. Display each artist and the number of albums they have released.
select a.artist_name,
	   COUNT(al.album_id) as total_albums
from Artists a
join Albums al
on a.artist_id = al.artist_id
group by a.artist_name;

-- 2. Display all songs and their album names, sorted by song title.
select al.album_name,
	   s.title
from Albums al
right join songs s
on al.album_id = s.album_id
order by s.title asc;

-- 3. Display all artists and albums, including unmatched records.
select a.artist_name, 
	   al.album_name
from Artists a
left join Albums al
on a.artist_id = al.artist_id
union
select a.artist_name,
	   al.album_name
from Artists a
right join Albums al
on a.artist_id = al.artist_id;

-- 4. Display user names, song titles, and listening dates, sorted by the latest listening activity.
select u.user_name,
       s.title,
       lh.played_at
from Users u
join Listening_History lh
on u.user_id = lh.user_id
join Songs s
on lh.song_id = s.song_id
order by lh.played_at DESC;

-- -------------------------------------------------------------------------------------------------------- --

												-- 6. SUBQUERY --
                                                   
-- 1. Display songs whose duration is greater than the average song duration.
select *
from Songs
where duration >
(
    select avg(duration)
    from Songs
);

-- 2.Find the artist whose genre and artist_id match the first group returned after grouping artists by genre.
select *
from Artists
where (genre, artist_id) =
(
    select genre, MIN(artist_id)
    from Artists
    group by genre
    limit 1
);

-- 3. Display users whose names start with 'A' and who have listened to at least one song.
select *
from Users
where user_name LIKE 'A%'
AND user_id IN
(
    select user_id
    from Listening_History
);

-- -------------------------------------------------------------------------------------------------------- --

                                  -- 7. CTE (COMMAN TABLE EXPRESSION) -- 
								
-- 1. Display users who have listened to more than 2 songs.
WITH UserListenedSong as
(
select user_id,
	   COUNT(*) as total_listens
	from Listening_History
    group by user_id
)
select * 
from UserListenedSong
where total_listens >= 1 ;

-- 2. Generate the first 10 song IDs.
with recursive SongNumbers as
(
    select 1 as song_id
    union all 
    select song_id + 1
    from SongNumbers
    where song_id < 10
)
select *
from SongNumbers;

-- 3. Display songs whose duration is greater than the average song duration.
with AvgSongDuration as
(
    select AVG(TIME_TO_SEC(duration)) as avg_duration
    from Songs
)
select song_id,
       title,
       duration
from Songs
where time_to_sec(duration) >
(
    select avg_duration
    from AvgSongDuration
);

-- -------------------------------------------------------------------------------------------------------- --

										-- 8. WINDOW FUNCTION --
                                    -- ROW_NUMBER, RANK, DENS_RANK --

-- 1. Show each user's listening history and display the latest song played first for every user.
select history_id, 
	   user_id,
       song_id, 
       played_at,
       ROW_NUMBER() OVER (
			PARTITION BY user_id
            ORDER BY played_at desc
		) as listen_rank
from Listening_History;

-- 2. ROW_NUMBER()
-- Assign a unique row number to each song based on song duration in descending order.
select song_id,
       title,
       duration,
       ROW_NUMBER() OVER (ORDER BY duration DESC) as row_num
from Songs;

-- 3.RANK()
-- Rank artists based on their artist_id in ascending order.
select artist_id,
       artist_name,
       RANK() OVER (ORDER BY artist_id) as artist_rank
from Artists;

-- 4. DENSE_RANK()
-- Rank albums by release year from newest to oldest without skipping ranks.
select album_id,
       album_name,
       release_year,
       DENSE_RANK() OVER (ORDER BY release_year DESC) as release_rank
from Albums;
    
-- -------------------------------------------------------------------------------------------------------- --

											-- 9. STRING FUNCTION --
									
-- Combine user_name and city into a single column named details using CONCAT().
-- Display user_name in uppercase using UPPER().
-- Display city in lowercase using LOWER().
-- Display the first 4 characters of user_name using SUBSTR().
-- Extract the username part of the email address (before @) using SUBSTRING_INDEX().
select
    CONCAT(user_name, ' - ', city) as details,
    UPPER(user_name) as upper_name,
    LOWER(city) as lower_city,
    SUBSTR(user_name,1,4) as short_name,
    SUBSTRING_INDEX(email,'@',1) as email_user
from Users;

-- -------------------------------------------------------------------------------------------------------- --

                                             -- 10. CASE_WhEN --
                                             
-- Display users and classify them based on their city.
select user_id,
       user_name,
       city,
       CASE
           WHEN city = 'Ahmedabad' then 'Gujarat User'
           WHEN city = 'Surat' then 'Gujarat User'
           else 'Other State User'
       end as user_category
from Users;

-- Display songs and classify them based on duration.
select song_id,
       title,
       duration,
       CASE
           WHEN duration >= '00:05:00' then 'Long Song'
           WHEN duration >= '00:04:00' then 'Medium Song'
           else 'Short Song'
       end as song_type
from Songs;

-- Display albums and classify them according to release year.
select album_id,
       album_name,
       release_year,
       CASE
           WHEN release_year >= 2020 then 'New Album'
           WHEN release_year >= 2010 then 'Modern Album'
           else 'Old Album'
       end as album_category
from Albums;


-- -------------------------------------------------------------------------------------------------------- --

										      -- 11. VIEW --
                                              
-- Create a view to display album names along with their artist names.
create view Album_Artist_View as
select a.album_id,
       a.album_name,
       ar.artist_name
from Albums a
join Artists ar
on a.artist_id = ar.artist_id;
select * from Album_Artist_View;

-- Create a view to display listening records of users with user_id greater than 20.
create view Active_Users_History as
select history_id,
       user_id,
       song_id,
       played_at
from Listening_History
where user_id > 20;
select * from Active_Users_History;



-- Create a view to display users who have listened to songs with song_id greater than 25.
create view Popular_Songs_History as
select history_id,
       user_id,
       song_id,
       played_at
from Listening_History
where song_id > 25;
select * from Popular_Songs_History;

-- -------------------------------------------------------------------------------------------------------- --

											 -- 12. STORE PROCEDURE --
                                             
-- Create a stored procedure to display all users from a specific city.
delimiter //
create procedure GetUsersByCity(IN p_city varchar(100))
begin 
    select *
    from Users
    where city = p_city;
end //
delimiter ;

call GetUsersByCity('Ahmedabad');

-- Create a stored procedure to display song details using song ID.
delimiter //
create procedure GetSongById(IN p_song_id int)
begin
    select *
    from Songs
    where song_id = p_song_id;
end //
delimiter ;

call GetSongById(10);

-- Create a stored procedure to count the total number of songs listened to by a user.
delimiter //
create procedure CountUserListens(IN p_user_id int)
begin
    select user_id,
           COUNT(*) as total_listens
    from Listening_History
    where user_id = p_user_id
    group by user_id;
end //
delimiter ;

call CountUserListens(20);