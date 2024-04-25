--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;



SET default_tablespace = '';

SET default_with_oids = false;


---
--- drop tables
---


DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS tv_shows;
DROP TABLE IF EXISTS movies2;
DROP TABLE IF EXISTS movie_genres;
DROP TABLE IF EXISTS genres;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    original_title TEXT NOT NULL,
    overview TEXT,
    poster_path TEXT,
    backdrop_path TEXT,
    original_language TEXT,
    release_date DATE,
    media_type TEXT,
    adult BOOLEAN,
    popularity FLOAT,
    vote_average FLOAT,
    vote_count INTEGER,
    genre_ids INTEGER[],
    video BOOLEAN,
    origin_country TEXT[]
);


--
-- Name: tv_shows; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tv_shows (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    original_name TEXT NOT NULL,
    overview TEXT,
    poster_path TEXT,
    backdrop_path TEXT,
    original_language TEXT,
    first_air_date DATE,
    media_type TEXT,
    adult BOOLEAN,
    popularity FLOAT,
    vote_average FLOAT,
    vote_count INTEGER,
    genre_ids INTEGER[],
    origin_country TEXT[]
);

CREATE TABLE movies2 (
    id SERIAL PRIMARY KEY,
    adult INTEGER,
    backdrop_path TEXT,
    original_language VARCHAR(2),
    original_title TEXT,
    overview TEXT,
    popularity NUMERIC,
    poster_path TEXT,
    release_date DATE,
    title TEXT,
    video INTEGER,
    vote_average NUMERIC,
    vote_count INTEGER
);

CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE movie_genres (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER,
    genre_id INTEGER
);

--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: -
--
-- Insert movies
INSERT INTO movies (
    title, original_title, overview, poster_path, backdrop_path,
    original_language, release_date, media_type, adult,
    popularity, vote_average, vote_count, genre_ids, video
)
VALUES 
    ('Rebel Moon - Part Two: The Scargiver', 'Rebel Moon - Part Two: The Scargiver', 'The rebels gear up for battle against the Motherworld as unbreakable bonds are forged, heroes emerge — and legends are made.', '/cxevDYdeFkiixRShbObdwAHBZry.jpg', '/tpiqEVTLRz2Mq7eLq5DT8jSrp71.jpg', 'en', '2024-04-19', 'movie', false, 209.302, 5.9, 25, '{878, 28, 18}', false),
    ('Dune: Part Two', 'Dune: Part Two', 'Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.', '/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg', '/xOMo8BRK7PfcJv9JCnx7s5hj0PX.jpg', 'en', '2024-02-27', 'movie', false, 2680.44, 8.293, 3027, '{878, 12}', false),
    ('Immaculate', 'Immaculate', 'An American nun embarks on a new journey when she joins a remote convent in the Italian countryside. However, her warm welcome quickly turns into a living nightmare when she discovers her new home harbours a sinister secret and unspeakable horrors.', '/fdZpvODTX5wwkD0ikZNaClE4AoW.jpg', '/5Eip60UDiPLASyKjmHPMruggTc4.jpg', 'en', '2024-03-20', 'movie', false, 183.595, 6.307, 135, '{27, 9648, 53}', false),
    ('Rebel Moon - Part One: A Child of Fire', 'Rebel Moon - Part One: A Child of Fire', 'When a peaceful colony on the edge of the galaxy finds itself threatened by the armies of the tyrannical Regent Balisarius, they dispatch Kora, a young woman with a mysterious past, to seek out warriors from neighboring planets to help them take a stand.', '/ui4DrH1cKk2vkHshcUcGt2lKxCm.jpg', '/sRLC052ieEzkQs9dEtPMfFxYkej.jpg', 'en', '2023-12-15', 'movie', false, 203.954, 6.4, 1654, '{878, 18, 28}', false),
    ('Ghostbusters: Frozen Empire', 'Ghostbusters: Frozen Empire', 'The Spengler family returns to where it all started – the iconic New York City firehouse – to team up with the original Ghostbusters, whove developed a top-secret research lab to take busting ghosts to the next level. But when the discovery of an ancient artifact unleashes an evil force, Ghostbusters new and old must join forces to protect their home and save the world from a second Ice Age.', '/6faYaQyiBPhqAizldJKq21mIVaE.jpg', '/5cCfqeUH2f5Gnu7Lh9xepY9TB6x.jpg', 'en', '2024-03-20', 'movie', false, 545.543, 6.482, 255, '{14, 12, 35}', false),
    ('Civil War', 'Civil War', 'In the near future, a group of war journalists attempt to survive while reporting the truth as the United States stands on the brink of civil war.', '/sh7Rg8Er3tFcN9BpKIPOMvALgZd.jpg', '/uv2twFGMk2qBdyJBJAVcrpRtSa9.jpg', 'en', '2024-04-10', 'movie', false, 549.596, 7.526, 137, '{28, 10752, 878}', false),
    ('Dune', 'Dune', 'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planets exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanitys greatest potential-only those who can conquer their fear will survive.', '/d5NXSklXo0qyIYkgV94XAgMIckC.jpg', '/lzWHmYdfeFiMIY4JaMmtR7GEli3.jpg', 'en', '2021-09-15', 'movie', false, 563.914, 7.789, 11304, '{878, 12}', false),
    ('Late Night with the Devil', 'Late Night with the Devil', 'A live broadcast of a late-night talk show in 1977 goes horribly wrong, unleashing evil into the nations living rooms.', '/u3YQJctMzFN2wAvnkmXy41bXhFv.jpg', '/4yrOyO3N55XazHQXXYoqiiPQd40.jpg', 'en', '2024-03-19', 'movie', false, 60.044, 7.6, 38, '{27}', false),
    ('Blood for Dust', 'Blood for Dust', 'Reckless Ricky makes serious money dealing illegal weapons throughout the tri-state area and loves to flaunt it. Traveling salesman Cliff, covers the same territory Ricky runs guns through. Desperate to find some financial relief for his struggling family, Cliff agrees to partner with Ricky, to commit cross-state drug and gun deliveries for a mid-level American cartel boss John. When a simple exchange turns into a bloodbath after Ricky kills everyone in a territory grab, the pair find themselves in a pressure cooker situation where unlikely drug dealer Cliff must fight as hard as he can to stay alive.', '/8IZ7ODPJB3d6Q6C3OdchYaEWixE.jpg', '/bkENfmxUY3UYsRLizJAhF5IQPvS.jpg', 'en', '2024-04-19', 'movie', false, 24.662, 8.0, 2, '{28, 80, 53}', false),
    ('Land of Bad', 'Land of Bad', 'When a Delta Force special ops mission goes terribly wrong, Air Force drone pilot Reaper has 48 hours to remedy what has devolved into a wild rescue operation. With no weapons and no communication other than the drone above, the ground mission suddenly becomes a full-scale battle when the team is discovered by the enemy.', '/h3jYanWMEJq6JJsCopy1h7cT2Hs.jpg', '/oBIQDKcqNxKckjugtmzpIIOgoc4.jpg', 'en', '2024-01-25', 'movie', false, 382.598, 7.193, 573, '{28, 53, 10752}', false),
    ('Transformers One', 'Transformers One', 'The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.', '/iHPIBzrjJHbXeY9y7VVbEVNt7LW.jpg', '/sxw090c89vTXQEaZHCTQ6IJKNyl.jpg', 'en', '2024-09-12', 'movie', false, 39.745, 0.0, 0, '{16, 878, 12, 28, 10751}', false),
    ('Godzilla x Kong: The New Empire', 'Godzilla x Kong: The New Empire', 'Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.', '/tMefBSflR6PGQLv7WvFPpKLZkyk.jpg', '/qrGtVFxaD8c7et0jUtaYhyTzzPg.jpg', 'en', '2024-03-27', 'movie', false, 1931.121, 6.7, 666, '{28, 878, 12, 14}', false);

-- Insert TV shows
INSERT INTO tv_shows (
    name, original_name, overview, poster_path, backdrop_path,
    original_language, first_air_date, media_type, adult,
    popularity, vote_average, vote_count, genre_ids
)
VALUES 
    ('Fallout', 'Fallout', 'The story of haves and have-nots in a world in which there’s almost nothing left to have. 200 years after the apocalypse, the gentle denizens of luxury fallout shelters are forced to return to the irradiated hellscape their ancestors left behind — and are shocked to discover an incredibly complex, gleefully weird, and highly violent universe waiting for them.', '/AnsSKR9LuK0T9bAOcPVA3PUvyWj.jpg', '/4d0tMAk49gqbVwgvtQjCriBwyb8.jpg', 'en', '2024-04-10', 'tv', false, 2258.675, 8.518, 450, '{10759, 10765, 9648}'),
    ('Shōgun', 'Shōgun', 'In Japan in the year 1600, at the dawn of a century-defining civil war, Lord Yoshii Toranaga is fighting for his life as his enemies on the Council of Regents unite against him, when a mysterious European ship is found marooned in a nearby fishing village.', '/7O4iVfOMQmdCSxhOg1WnzG1AgYT.jpg', '/ySgY4jBvZ6qchrxKnBg4M8tZp8V.jpg', 'en', '2024-02-27', 'tv', false, 1197.712, 8.711, 456, '{18, 10768}'),
    ('The Grimm Variations', 'グリム組曲', 'Inspired by the classic Brothers Grimm stories, this anthology features six fairy tales with a dark twist, exposing the shadowy side of human desire.', '/vUe5MtWND6WPdIh3fF7Xdx8coBt.jpg', '/nVnPoHsR7fo8qlA9fYUsrj701p.jpg', 'ja', '2024-04-17', 'tv', false, 128.803, 7.667, 9, '{16, 10765}'),
    ('The Sympathizer', 'The Sympathizer', 'An espionage thriller and cross-culture satire about the struggles of a half-French, half-Vietnamese communist spy during the final days of the Vietnam War and his resulting exile in the United States.', '/zAxObqiOEooIuQtH338b8zOaFEu.jpg', '/rgUSTFnUJYy98WqL4JpPtvoqDko.jpg', 'en', '2024-04-14', 'tv', false, 390.995, 9.182, 11, '{18}')
;

-- Step 3: Insert data into tables
INSERT INTO movies2 (id, adult, backdrop_path, original_language, original_title, overview, popularity, poster_path, release_date, title, video, vote_average, vote_count)
VALUES 
(1096197, 0, '/4woSOUD0equAYzvwhWBHIJDCM88.jpg', 'en', 'No Way Up', 'Characters from different backgrounds are thrown together when the plane they''re travelling on crashes into the Pacific Ocean. A nightmare fight for survival ensues with the air supply running out and dangers creeping in from all sides.', 2288.6, '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg', '2024-01-18', 'No Way Up', 0, 6.358, 402),
(823464, 0, '/qrGtVFxaD8c7et0jUtaYhyTzzPg.jpg', 'en', 'Godzilla x Kong: The New Empire', 'Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.', 1883.28, '/gmGK5Gw5CIGMPhOmTO0bNA9Q66c.jpg', '2024-03-27', 'Godzilla x Kong: The New Empire', 0, 6.653, 717),
(1011985, 0, '/1XDDXPXGiI8id7MrUxK36ke7gkX.jpg', 'en', 'Kung Fu Panda 4', 'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.', 1665.369, '/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg', '2024-03-02', 'Kung Fu Panda 4', 0, 7.155, 1235),
(693134, 0, '/8uVKfOJUhmybNsVh089EqLHUYEG.jpg', 'en', 'Dune: Part Two', 'Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.', 1618.076, '/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg', '2024-02-27', 'Dune: Part Two', 0, 8.274, 3279),
(934632, 0, '/FUnAVgaTs5xZWXcVzPJNxd9qGA.jpg', 'en', 'Rebel Moon - Part Two: The Scargiver', 'The rebels gear up for battle against the Motherworld as unbreakable bonds are forged, heroes emerge — and legends are made.', 1125.677, '/aqKtSJdsUYNhEYfV42AYpamhEle.jpg', '2024-04-19', 'Rebel Moon - Part Two: The Scargiver', 0, 6.2, 371),
(845111, 0, '/qnVm19Vu2Sc14LoEj82pmqAYr3p.jpg', 'fr', 'Les trois mousquetaires : Milady', 'D''Artagnan, on a quest to rescue the abducted Constance, runs into the mysterious Milady de Winter again. The tension between the Catholics and the Protestants finally escalates, as the king declares war — forcing the now four musketeers into battle. But as the war goes on, they are tested physically, mentally and emotionally.', 1071.691, '/rtosxP5sXuoRFPH4sVbMccLIPiV.jpg', '2023-12-13', 'The Three Musketeers: Milady', 0, 6.59, 312),
(1041613, 0, '/aKFnaHBGTstU0FeyYZAeYOX2gR3.jpg', 'en', 'Pacific Rim: The Black - The Movie', 'As the world descends into chaos after the Kaiju breach the continent of Australia, two siblings search for their parents as they fight to survive. Along the way, they encounter new Kaiju, Jaegers, and fellow survivors as they uncover a conspiracy that threatens humanity.', 1064.441, '/e1FTdHE40Vw4miUQ2G5S6NAXrwl.jpg', '2024-03-27', 'Pacific Rim: The Black - The Movie', 0, 7.095, 439),
(744765, 0, '/dVVSjewQHliPNJ9eOk2ArlLvMZz.jpg', 'en', 'Death on the Nile', 'While on vacation on the Nile, Hercule Poirot must investigate the murder of a young heiress.', 1009.74, '/4Up8H5X79ZrKSwKdCcQvJbNrzTa.jpg', '2023-09-29', 'Death on the Nile', 0, 7.4, 787),
(893030, 0, '/wGfPnG5f4Xc3o3HKDT57vnMQC8C.jpg', 'en', 'xXx 4', 'Sequel to the 2017 action film "xXx: Return of Xander Cage".', 1007.745, '/jZmwnhW7g74DHWBqfkVeKsoXKM.jpg', '2024-03-29', 'xXx 4', 0, 7.0, 11),
(755169, 0, '/nMZpvj6ovvngUavmKlOFvQq6Lb2.jpg', 'en', 'No Time to Die', 'James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', 1002.545, '/jwlBbT9gR26n9il4NSB17lvw3D3.jpg', '2021-09-30', 'No Time to Die', 0, 7.4, 4387),
(834728, 0, '/5OBijlYnlf3G6ZFtLTl2cuLYThb.jpg', 'en', 'The Kissing Booth 4', 'As high school comes to an end, Elle juggles a long-distance relationship with Noah, college applications, and a new friendship with a handsome classmate that could change everything.', 997.45, '/u5RhYMKL9cb5QZPR5ubFGgw2Akn.jpg', '2024-01-11', 'The Kissing Booth 4', 0, 8.1, 224),
(771889, 0, '/1GphgPRVJOl6nCwrKAC65P3JSW.jpg', 'en', 'Morbius', 'Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.', 996.795, '/w0i3SAa7lEaLY9fyd3zfmhxPZyT.jpg', '2022-01-20', 'Morbius', 0, 7.1, 3589),
(912929, 0, '/3X6Xa22iGRODUL9UR1Xm3qLB8M9.jpg', 'en', 'Late Night with the Devil', 'A CIA operative is dispatched to get the Pulitzer-winning journalist out of Lebanon and into Jordan, while unraveling a nefarious Iranian plot to arm Hezbollah with chemical weapons.', 995.991, '/2ivZQ8m89YVbL0A7M7RbMkcOwqb.jpg', '2024-03-08', 'Late Night with the Devil', 0, 8.3, 421),
(802504, 0, '/9OrS4EjBpz71H8KqXOmks8phsLV.jpg', 'en', 'The Outlaws Scarlett and Browne', 'Set in a fractured United Kingdom, following a deadly pandemic, two outlaws are forced to work together when they are being hunted by an otherworldly killer.', 994.532, '/biR24VLwIHfAd1IaWPFY7P1Hrtx.jpg', '2024-02-23', 'The Outlaws Scarlett and Browne', 0, 6.8, 52),
(1027255, 0, '/eyWB5Y2bGMZ07lkqSsLHd5ZOytg.jpg', 'en', 'Gambit', 'A woman discovers a lost gambling site run by ghosts, leading her to face off against a ruthless businessman trying to take over the ghost town.', 994.122, '/gaZlrfiFjzDdKpD7oaOjnMSqyCG.jpg', '2024-01-17', 'Gambit', 0, 8.0, 114),
(1047971, 0, '/8g4hnItQoWk7cjlELD7zGprcgp0.jpg', 'en', 'The Gray Man', 'Former CIA operative Court Gentry discovers that killers are targeting him and his team of assassins, leading to a deadly game of cat and mouse.', 988.743, '/7E0PKPCAcHWhXqYZV5zua9AjT1Z.jpg', '2023-07-28', 'The Gray Man', 0, 6.4, 16),
(732608, 0, '/cbWQ2fC23ItP4fQc3GKmUjRQyQq.jpg', 'en', 'Spider-Man: No Way Home', 'For the first time in the cinematic history of Spider-Man, our friendly neighborhood hero is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', 987.127, '/tYkMtYPNpUdH3DxwH2xYFgMia0l.jpg', '2021-12-15', 'Spider-Man: No Way Home', 0, 8.6, 12346),
(78965, 0, '/mSNc5eP6kPH4Iae4lvfHS6iFfvM.jpg', 'en', 'The King''s Man', 'As a collection of history''s worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them.', 983.77, '/pVbzvXbRrvlH6xaJUFUEvB1W5aE.jpg', '2021-12-22', 'The King''s Man', 0, 7.7, 2241),
(589761, 0, '/yWmMSy9QF2uO6nX17lHDRH0Bo7n.jpg', 'en', 'The Batman', 'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.', 981.735, '/3psbG5LRZwQWTssoRFGweubk0wU.jpg', '2022-03-01', 'The Batman', 0, 8.1, 7105),
(741047, 0, '/34nDCQZwaEvsy4CFO5hkGRFDCVU.jpg', 'en', 'Revival', 'The reclusive author Jane becomes the hostess with the mostess on a haunted ship harboring "deathless death" and a crew who still believe they can be saved.', 977.45, '/tJiS3Qe4tbEQ8KmZgD0yfTEQb9X.jpg', '2024-04-12', 'Revival', 0, 7.3, 4),
(784151, 0, '/KpgjcNkE3qlmJsMv11oE93Ez2i8.jpg', 'en', 'Ambulance', 'Two desperate brothers attempt to rob a bank in order to save their family.', 974.226, '/zFex2phKWZkqxIJiM4rR5wEPilO.jpg', '2022-12-31', 'Ambulance', 0, 6.6, 163),
(825371, 0, '/7fvdg211A2L0mHddvzyArRuRalp.jpg', 'en', 'Top Gun: Maverick', 'Set in the world of drone technology and fifth generation fighters, this sequel will explore the end of the era of dogfighting.', 973.035, '/asm79uITfnPv1tHUA9EeJWOhV3.jpg', '2022-05-25', 'Top Gun: Maverick', 0, 7.7, 342),
(496243, 0, '/bP7u19opmHXYeTCUwGjlhxLNSW9.jpg', 'en', 'Godzilla vs. Kong', 'In a time when monsters walk the Earth, humanity''s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.', 971.45, '/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg', '2021-03-24', 'Godzilla vs. Kong', 0, 8.0, 7821),
(602734, 0, '/70AV2Xx5FQYj20labp0EGdbjI6E.jpg', 'en', 'Cruella', 'In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella''s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.', 966.8, '/hjS9mH8KvRiGHgjk6VUZH7OT0Ng.jpg', '2021-05-26', 'Cruella', 0, 8.6, 6788),
(10016, 0, '/bKPtXn9n4M4s8vvZrbw40mYsefB.jpg', 'en', 'Venom: Let There Be Carnage', 'Eddie Brock is back as Venom, and he’s going to face his toughest challenge yet: serial killer Cletus Kasady, who has transformed into the psychotic Carnage.', 966.15, '/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg', '2021-09-30', 'Venom: Let There Be Carnage', 0, 7.6, 4404),
(10371, 0, '/jVXqN2KbL2zQhBpzuDpeHqwDOM0.jpg', 'en', 'The Northman', 'A Viking warrior seeks revenge after witnessing the murder of his father.', 966.05, '/g9GPl6yw1nDCwAEuAmAn8G8QyQj.jpg', '2022-04-08', 'The Northman', 0, 8.6, 30),
(680644, 0, '/39ZVYt9B4XyF8jMX2L6J2gJLRB4.jpg', 'en', 'New Gods: Nezha Reborn', '312 years after the Battle of the Burning Sands, a boy named Nezha, reincarnated from a demon, learns about his true origins and his demonic destiny.', 965.15, '/kzCvIM0dwUTyAsVTlMfc9hAbHX6.jpg', '2021-02-12', 'New Gods: Nezha Reborn', 0, 7.7, 168),
(568620, 0, '/5EufsDwXdY2CVttYOk2WtYhgKpa.jpg', 'en', 'Honest Thief', 'A bank robber tries to turn himself in because he''s falling in love and wants to live an honest life...but when he realizes the Feds are more corrupt than him, he must fight back to clear his name.', 964.2, '/zeD4PabP6099gpE0STWJrJrCBCs.jpg', '2020-09-03', 'Honest Thief', 0, 6.6, 806),
(495764, 0, '/6Wdl9N6dL0Hi0T1qJLWSz6gMLbd.jpg', 'en', 'Birds of Prey (and the Fantabulous Emancipation of One Harley Quinn)', 'After splitting with the Joker, Harley Quinn joins superheroes Black Canary, Huntress and Renee Montoya to save a young girl from an evil crime lord.', 963.75, '/h4VB6m0RwcicVEZvzftYZyKXs6K.jpg', '2020-02-05', 'Birds of Prey (and the Fantabulous Emancipation of One Harley Quinn)', 0, 7.2, 7042),
(560044, 0, '/xPpXYnCWfjkt3zzE0dpCNME1pXF.jpg', 'en', 'Wonder Woman 1984', 'A botched store robbery places Wonder Woman in a global battle against a powerful and mysterious ancient force that puts her powers in jeopardy.', 963.45, '/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg', '2020-12-16', 'Wonder Woman 1984', 0, 6.6, 4941),
(359724, 0, '/qdfARIhgpgZOBh3vfNhWS4hmSo3.jpg', 'en', 'Ford v Ferrari', 'American car designer Carroll Shelby and the British-born driver Ken Miles work together to battle corporate interference, the laws of physics, and their own personal demons to build a revolutionary race car for Ford Motor Company and take on the dominating race cars of Enzo Ferrari at the 24 Hours of Le Mans in France in 1966.', 963.025, '/6ApDtO7xaWAfPqfi2IARXIzj8QS.jpg', '2019-11-13', 'Ford v Ferrari', 0, 7.8, 4811),
(324857, 0, '/8ZX18L5m6rH5viSYpRnTSbb9eXh.jpg', 'en', 'Spider-Man: Into the Spider-Verse', 'Miles Morales is juggling his life between being a high school student and being a spider-man. When Wilson "Kingpin" Fisk uses a super collider, others from across the Spider-Verse are transported to this dimension.', 962.15, '/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg', '2018-12-07', 'Spider-Man: Into the Spider-Verse', 0, 8.4, 11339),
(550988, 0, '/h4VB6m0RwcicVEZvzftYZyKXs6K.jpg', 'en', 'The Matrix Resurrections', 'The continuation of The Matrix franchise.', 961.75, '/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg', '2021-12-16', 'The Matrix Resurrections', 0, 7.3, 2199),
(438631, 0, '/pThyQovXQrw2m0s9x82twj48Jq4.jpg', 'en', 'Dune', 'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet''s exclusive supply of the most precious resource in existence—a commodity capable of unlocking humanity''s greatest potential—only those who can conquer their fear will survive.', 960.65, '/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg', '2021-09-15', 'Dune', 0, 7.8, 5768),
(525660, 0, '/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg', 'en', 'The 355', 'When a top-secret weapon falls into mercenary hands, a wild card CIA agent joins forces with three international agents on a lethal mission to retrieve it, while staying a step ahead of a mysterious woman who''s tracking their every move.', 960.45, '/eZJQJc8dHtJ2crewO7G7rcLZFXr.jpg', '2022-01-07', 'The 355', 0, 6.6, 536),
(609067, 0, '/1hlqHlEz97ZRl8oJ4AzJgEPJVdC.jpg', 'en', 'Space Jam: A New Legacy', 'When LeBron and his young son Dom are trapped in a digital space by a rogue A.I., LeBron must get them home safe by leading Bugs, Lola Bunny and the whole gang of notoriously undisciplined Looney Tunes to victory over the A.I.''s digitized champions on the court: a powered-up roster of professional basketball stars as you''ve never seen them before.', 960.225, '/5bFK5d3mVTAvBCXi5NPWH0tYjKl.jpg', '2021-07-08', 'Space Jam: A New Legacy', 0, 7.4, 2710),
(566525, 0, '/z8TvnEVRenMSTemxYZwLGqFofgF.jpg', 'en', 'Shang-Chi and the Legend of the Ten Rings', 'Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.', 959.95, '/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg', '2021-09-01', 'Shang-Chi and the Legend of the Ten Rings', 0, 7.5, 5547),
(497698, 0, '/3RMbkXS4ocMmoJyAD3ZsWbm32Kx.jpg', 'en', 'Black Widow', 'Natasha Romanoff, also known as Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises.', 306.19, '/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg', '2021-07-07', 'Black Widow', 0, 7.4, 8092),
(85016, 0, '/uHmvk8FnoxpgujDU0RIXLkv2fNt.jpg', 'en', 'Don''t Breathe 2', 'The Blind Man has been hiding out for years in an isolated cabin and has taken in and raised a young girl orphaned from a devastating house fire. Their quiet existence is shattered when a group of kidnappers show up and take the girl, forcing the Blind Man to leave his safe haven to save her.', 245.652, '/b0WmHGc8LHTdGCVzxRb3IBMur57.jpg', '2021-08-12', 'Don''t Breathe 2', 0, 7.2, 836),
(630004, 0, '/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg', 'en', 'The Suicide Squad', 'When a collection of the world''s most dangerous villains are recruited by the government to execute a mission, they are sent on a suicide mission to defeat a mysterious and powerful entity.', 243.719, '/k4rQEM4CqUrlZ8n1vsrYFbTMki.jpg', '2021-07-28', 'The Suicide Squad', 0, 7.9, 6568),
(337404, 0, '/jlGmlFOcfo8n5tURmhC7YVd4Iyy.jpg', 'en', 'Cruella', 'In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella''s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.', 238.063, '/rTh4K5uw9HypmpGslcKd4QfHl93.jpg', '2021-05-26', 'Cruella', 0, 8.5, 4971),
(587807, 0, '/qi6Edc1OPcyENecGtz8TF0DUr9e.jpg', 'en', 'Wrath of Man', 'A cold and mysterious new security guard for a Los Angeles cash truck company surprises his co-workers when he unleashes precision skills during a heist. The crew is left wondering who he is and where he came from. Soon, the marksman''s ultimate motive becomes clear as he takes dramatic and irrevocable steps to settle a score.', 237.664, '/YxopfHpsCV1oF8CZaL4M3Eodqa.jpg', '2021-04-22', 'Wrath of Man', 0, 7.9, 1771),
(637649, 0, '/7WJjFviFBffEJvkAms4uWwbcVUk.jpg', 'en', 'Free Guy', 'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.', 233.826, '/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg', '2021-08-11', 'Free Guy', 0, 7.7, 4837),
(573680, 0, '/6zbKgwgaaCyyBXE4Sun4oWQfQmi.jpg', 'en', 'The Tomorrow War', 'The world is stunned when a group of time travelers arrive from the year 2051 to deliver an urgent message: Thirty years in the future, mankind is losing a global war against a deadly alien species. The only hope for survival is for soldiers and civilians from the present to be transported to the future and join the fight. Among those recruited is high school teacher and family man Dan Forester. Determined to save the world for his young daughter, Dan teams up with a brilliant scientist and his estranged father in a desperate quest to rewrite the fate of the planet.', 228.853, '/34nDCQZwaEvsy4CFO5hkGRFDCVU.jpg', '2021-06-19', 'The Tomorrow War', 0, 8.0, 3539),
(522478, 0, '/w6n1pu9thpCVHILejsuhKf3tNCV.jpg', 'en', 'No Time to Die', 'Bond has left active service and is enjoying a tranquil life in Jamaica. His peace is short-lived when his old friend Felix Leiter from the CIA turns up asking for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', 222.998, '/9udjrEpN1EkqEKpfpV54bgTcR5N.jpg', '2021-09-29', 'No Time to Die', 0, 7.3, 456),
(637649, 0, '/7WJjFviFBffEJvkAms4uWwbcVUk.jpg', 'en', 'Free Guy', 'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.', 222.848, '/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg', '2021-08-11', 'Free Guy', 0, 7.7, 4837),
(429617, 0, '/lkInRiMtLgl9u9xE0By5hqf66K8.jpg', 'en', 'Spider-Man: No Way Home', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', 222.124, '/5VJSIAhSn4qUsg5nOj4MhQhF5wQ.jpg', '2021-12-15', 'Spider-Man: No Way Home', 0, 8.7, 7597),
(550988, 0, '/hRMfgGFRAZIlvwVWy8DYJdLTpvN.jpg', 'en', 'Dune', 'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet''s exclusive supply of the most precious resource in existence—a commodity capable of unlocking humanity''s greatest potential—only those who can conquer their fear will survive.', 215.98, '/w6n1pu9thpCVHILejsuhKf3tNCV.jpg', '2021-09-15', 'Dune', 0, 8.3, 5459)
ON CONFLICT (id) DO NOTHING;

INSERT INTO genres (id, name) VALUES
(28, 'Action'),
(27, 'Horror'),
(53, 'Thriller'),
(878, 'Science Fiction'),
(12, 'Adventure'),
(14, 'Fantasy'),
(16, 'Animation'),
(10751, 'Family'),
(35, 'Comedy'),
(18, 'Drama'),
(10770, 'TV Movie'),
(80, 'Crime'),
(9648, 'Mystery'),
(10752, 'War');

INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1096197, 28),
(1096197, 27),
(1096197, 53),
(823464, 28),
(823464, 878),
(823464, 12),
(823464, 14),
(1011985, 16),
(1011985, 28),
(1011985, 10751),
(1011985, 35),
(1011985, 14),
(693134, 878),
(693134, 12),
(934632, 878),
(934632, 12),
(845111, 12),
(845111, 28),
(845111, 18),
(1041613, 878),
(1041613, 28),
(1041613, 18),
(1041613, 10770),
(359410, 12),
(359410, 28),
(720321, 27),
(720321, 9648),
(720321, 53),
(940551, 28),
(940551, 53),
(940551, 10751),
(940551, 35),
(940551, 12),
(601796, 878),
(601796, 28),
(601796, 14),
(601796, 12),
(784651, 28),
(784651, 53),
(784651, 10752),
(1239146, 10751),
(1239146, 35),
(1239146, 16),
(942047, 28),
(942047, 35),
(634492, 28),
(634492, 14),
(653346, 878),
(653346, 12),
(653346, 28),
(383634, 18),
(967847, 28),
(967847, 14),
(929590, 10752),
(929590, 28),
(929590, 18),
(969492, 28),
(969492, 53),
(969492, 10752),
(438631, 878),
(438631, 12),
(935271, 28),
(935271, 53),
(872585, 18),
(872585, 36),
(1127166, 10749),
(1127166, 18),
(1111873, 27),
(1111873, 53),
(1111873, 35),
(848326, 28),
(848326, 80),
(848326, 53),
(385687, 28),
(385687, 80),
(385687, 53),
(787699, 35),
(787699, 10751),
(787699, 14),
(763215, 14),
(763215, 28),
(763215, 12),
(284053, 28),
(284053, 12),
(284053, 878),
(1181548, 28),
(1181548, 9648),
(1181548, 53),
(856289, 28),
(856289, 14),
(856289, 10752),
(838209, 9648),
(838209, 27),
(838209, 53),
(7451, 28),
(7451, 53),
(7451, 80),
(938614, 27),
(533535, 35),
(533535, 878),
(533535, 28),
(624091, 12),
(624091, 28),
(893334, 12),
(893334, 28),
(940721, 878),
(940721, 27),
(940721, 28),
(849509, 28),
(849509, 53),
(1022796, 16),
(1022796, 10751),
(1022796, 14),
(1022796, 12);
--
-- PostgreSQL database dump complete
--
