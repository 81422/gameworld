-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 14 dec 2018 om 16:38
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gamecategory`
--

CREATE TABLE `gamecategory` (
  `categoryId` int(3) NOT NULL,
  `categoryTitle` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gamecategory`
--

INSERT INTO `gamecategory` (`categoryId`, `categoryTitle`) VALUES
(1, 'ps4'),
(2, 'xbox'),
(3, 'switch');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `gameId` int(3) NOT NULL,
  `gameTitle` varchar(100) NOT NULL,
  `gameDescription` text NOT NULL,
  `gamePrice` decimal(5,2) NOT NULL,
  `gameImage` text NOT NULL,
  `categoryId` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameId`, `gameTitle`, `gameDescription`, `gamePrice`, `gameImage`, `categoryId`) VALUES
(1, 'Detroit: Become Human', 'Detroit: Become Human is an adventure game developed by Quantic Dream and published by Sony Interactive Entertainment for PlayStation 4, released worldwide on 25 May 2018. The plot revolves around three androids: Kara (Valorie Curry), who escapes the owner she was serving to explore her newfound sentience and protect a young girl; Connor (Bryan Dechart), whose job is to hunt down sentient androids; and Markus (Jesse Williams), who devotes himself to releasing other androids from servitude. They may survive or perish depending on dialogue choices that shape the story.', '59.99', 'images/ps4/detroit.jpg', 1),
(2, 'Spider-Man', 'Marvel\'s Spider-Man is an action-adventure game developed by Insomniac Games and published by Sony Interactive Entertainment for the PlayStation 4, based on the Marvel Comics superhero Spider-Man. Released worldwide on September 7, 2018, it is the first licensed game developed by Insomniac', '59.99', 'images/ps4/spiderman.jpg', 1),
(3, 'Uncharted 4: A Thief\'s End', 'Uncharted 4: A Thief\'s End is an action-adventure game developed by Naughty Dog and published by Sony Computer Entertainment for PlayStation 4 in May 2016. Following Uncharted 3: Drake\'s Deception, it is the final Uncharted game to feature protagonist Nathan Drake.', '19.99', 'images/ps4/uncharted4.jfif', 1),
(4, 'Bloodborne', 'Bloodborne is an action role-playing game developed by FromSoftware and published by Sony Computer Entertainment for PlayStation 4. Announced at Sony\'s E3 2014 conference, the game was released worldwide in March 2015', '20.99', 'images/ps4/bloodborne.jpg', 1),
(5, 'God of War', 'God of War is an action-adventure video game developed by Santa Monica Studio and published by Sony Interactive Entertainment. Released on April 20, 2018, for the PlayStation 4 console, it is the eighth installment in the God of War series, the eighth chronologically, and the sequel to 2010\'s God of War III.', '59.99', 'images/ps4/gow.jpg', 1),
(6, 'Knack II', 'Knack (Nakku) is a platforming beat \'em up video game developed by SCE Japan Studio and published by Sony Computer Entertainment for the PlayStation 4 video game console. The game was released in November 2013 and in Japan in February 2014, where it was available as a bundle with the console.', '22.94', 'images/ps4/knack.jpg', 1),
(7, 'THE ORDER: 1886', 'The Order: 1886 is a third-person action-adventure video game developed by Ready at Dawn and SCE Santa Monica Studio and published by Sony Computer Entertainment. It was released for the PlayStation 4 on February 20, 2015.', '19.99', 'images/ps4/order1886.jpg', 1),
(8, 'KILLZONE SHADOW FALL', 'Killzone Shadow Fall is a first-person shooter video game developed by Guerrilla Games and published by Sony Computer Entertainment for PlayStation 4. It is the sixth game of the Killzone series and the fourth game of the series for home consoles.', '18.75', 'images/ps4/killzone.jpg', 1),
(9, 'Sunset Overdrive', 'Sunset Overdrive is an action-adventure third-person shooter video game developed by Insomniac Games and published by Microsoft Studios. It was announced at Electronic Entertainment Expo 2013, and released worldwide for Xbox One in October 2014 and for Microsoft Windows in November 2018', '5.00', 'images/xbox/sunset.jpg', 2),
(10, 'Forza Horizon 4', 'Forza Horizon 4 is an open world racing video game developed by Playground Games and published by Microsoft Studios. It was released on 2 October 2018 on Xbox One and Microsoft Windows after being announced at Xbox\'s E3 2018 conference. The game is set in a fictionalised representation of the United Kingdom.', '34.95', 'images/xbox/forza.jpg', 2),
(11, 'Halo 5: Guardians', 'Halo 5: Guardians is a first-person shooter video game developed by 343 Industries and published by Microsoft Studios for the Xbox One home video game console. The tenth installment and fifth main entry in the Halo series of video games, it was released worldwide on October 27, 2015.', '16.25', 'images/xbox/halo5.jpg', 2),
(12, 'Halo Wars 2', 'Halo Wars 2 geeft real-time strategie op dezelfde snelheid als een Halo Combat. Maak je klaar om de Spartans, Warthogs en andere klassieke Halo strijdmachten aan te voeren in een beestachtige strijd tegen een dreigende nieuwe vijand, tijdens het grootste Halo slagveld ooit.', '15.99', 'images/xbox/halowars.jpg', 2),
(13, 'Sea of Thieves', 'De vrijheid van het piratenleven staat voor je klaar in Sea of Thieves, een avonturengame in een gedeelde wereld vol onbekende gevaren en mysterieuze schatten. Word de piraat die je altijd al wilde zijn en beleef avonturen met vrienden in een wereld waarin elk zeil aan de horizon een andere groep spelers met eigen plannen is.', '19.99', 'images/xbox/seaofthieves.jpg', 2),
(14, 'State of Decay 2', 'Hoe ga jij overleven?\r\nEen klein stadje in Amerika, een jaar vanaf nu. De doden zijn opgestaan en de beschaving is ineengestort. Zelfs het leger kan de zombies niet afstoppen. De mensheid staat op het punt van uitsterven. Aan jou de taak om overlevenden te verzamelen om een gemeenschap op te bouwen, je eigen verhaal te schrijven en er alles aan te doen om te overleven.', '25.00', 'images/xbox/stateofdecay.jfif', 2),
(15, 'Forza Motorsport 7', 'De ultieme auto-ontdekkingreis\r\nMeer dan 700 wagens, inclusief de grootste collectie Ferrari\'s, Lamborghini\'s en Porsches ooit.\r\n\r\nDynamisch raceweer\r\nHarde regen, groeiende plassen en beperkt zicht maken dit de ultieme test voor jouw moed en skills achter het stuur.\r\n\r\nIedereen doet mee\r\nMet nieuwe competities, verbeterde modi voor toeschouwers, Mixer-integratie en vooraanstaande partners zoals Porsche, is Forza 7 de ultieme eSports-racegame voor zowel spelers en kijkers.', '33.00', 'images/xbox/forza7.jpg', 2),
(16, 'Gears of War 4', 'Een nieuwe sage begint voor één van de meest geprezen videogame franchises in de geschiedenis. Nadat ze nipt een aanval op hun dorp hebben overleefd, moeten JD Fenix en zijn vrienden Kait en Del hun dierbaren redden en de oorsprong van een monsterachtige, nieuwe vijand ontdekken.', '4.98', 'images/xbox/gearsofwar4.jpg', 2),
(17, 'The Legend of Zelda: Breath of the Wild', 'In het nieuwste deel in de The Legend of Zelda-reeks verken je een gigantische wereld van weergaloos formaat. Link komt in deze reusachtige omgeving nieuwe puzzels en vijanden tegen. De wereld kent geen afscheidingen, dus ontdek wat er achter de horizon ligt!', '54.95', 'images/switch/zelda.jpg', 3),
(18, 'Super Mario Odyssey', 'Super Mario Odyssey voor de Nintendo Switch is de eerste openwereldgame waarin Mario zich in alle vrijheid kan bewegen sinds Super Mario 64 voor de Nintendo 64 en Super Mario Sunshine voor de Nintendo GameCube.', '49.75', 'images/switch/mario.jpg', 3),
(19, 'Mario Kart 8 Deluxe', 'Mario Kart 8 Deluxe: Dankzij de Nintendo Switch kunnen fans de ultieme versie van Mario Kart 8 altijd en overal spelen, zelfs met maximaal acht vrienden in de lokale draadloze multiplayerstand. Al je favoriete circuits en personages uit de Wii U-versie zijn opnieuw van de partij, evenals alle DLC-circuits en -personages. Daarnaast kunnen spelers racen met een aantal nieuwe personages: Inkling-jongen en Inkling-meisje uit Splatoon, King Boo, Dry Bones en Bowser Jr.! Gevechten zijn opnieuw vormgegeven en omvatten Ballongevecht en Bob-omb-bende, met gloednieuwe circuits zoals Forelviaduct en Gevechtsstadion, en vertrouwde banen als Luigi’s Landgoed uit Mario Kart: Double Dash!! (Nintendo GameCube) en Gevechtsarena 1 uit Super Mario Kart (SNES). Spelers kunnen nu twee voorwerpen tegelijk bij zich hebben, waaronder nieuwe voorwerpen uit eerdere Mario Kart-games zoals Boo, het spook dat voorwerpen kan delen, en de veer waarmee je in gevechten een hoge sprong kunt maken. Spelers kunnen ervoor kiezen om de nieuwe stuurhulpfunctie in te schakelen, waarmee het voor kinderen en beginnende spelers gemakkelijker is om te racen en op het circuit te blijven, zelfs in 200 cc. Speel in de tv-stijl in maximaal 1080p. Mario Kart 8 Deluxe komt uit op 28 april.', '49.90', 'images/switch/mariokart.jpg', 3),
(20, 'Mario Tennis: Aces', 'Een gloednieuwe Mario Tennis-game met ongekende uitdagingen en spannende wedstrijden komt naar de Nintendo Switch: Mario Tennis Aces. Mario stapt het veld op in een stijlvolle tennisoutfit en neemt het deze keer op tegen een uiteenlopende reeks personages in echte uitdagende tenniswedstrijden. De nieuwe ontwikkelingen van de tennisgameplay zullen je vaardigheden op de proef stellen! Voorspel aan de hand van de positie en slagen van een tegenstander hoe jij op de beste manier de bal terugkaatst en punten scoort. De laatste keer dat je in een Mario Tennis-game nog een echt verhaal voorgeschoteld kreeg, was in Mario Tennis: Power Tour op de Game Boy Advance. Maar Mario Tennis Aces is weer helemaal de oude met een gloednieuw en spannend verhaal, tennisgameplay met een nieuw smaakje, een heleboel nieuwe missies, eindbaasgevechten en nog veel meer.', '48.75', 'images/switch/mariotennis.jpg', 3),
(21, 'Super Mario Party', 'De geliefde Mario Party bordspel serie komt naar de Nintendo Switch, met nieuwe minigames en speelstijlen die gebruikmaken van de Joy-Con-controllers. Super Mario Party bevat functies als personagegebonden dobbelblokken waarmee spelers een nog betere strategie kunnen bedenken. Tot wel vier spelers krijgen om en om de beurt om te gooien, en ze racen over het speelbord op zoek naar sterren. In de Keetkamer kunnen twee Nintendo Switch-systemen aan elkaar worden gekoppeld voor dubbele pret. De game komt uit op 5 oktober, net als de nieuwe, verstelbare Nintendo Switch-oplaadstandaard. Die is dus perfect voor multiplayerfeestjes in de tafelstijl.', '50.99', 'images/switch/marioparty.jpeg', 3),
(22, 'Splatoon 2', 'In dit vervolg op het succesvolle origineel nemen spelers het opnieuw tegen elkaar op in teams van vier. Splatoon 2 bevat nieuwe levels, kledingstijlen en wapens, zoals de Splat Dualies, die je met twee handen kunt bedienen. Spelers kunnen zowel op tv als onderweg hun krachten meten. Met de Nintendo Switch-Pro-controller (apart verkrijgbaar) of de Joy-Con kunnen\r\nspelers zorgvuldig mikken dankzij de bewegingsbesturing. In deze game kun je lokaal of online potjes met meerdere spelers spelen. De game ondersteunt ook voicechat door middel van de nieuwe Nintendo Switch-app voor smartphones en tablets (een gratis, gelimiteerde versie van de app is deze zomer verkrijgbaar). Net als in de originele game worden er na de release nieuwe levels, kleding en wapens toegevoegd. Splatoon 2 komt deze zomer uit.', '49.95', 'images/switch/splatoon.jpg', 3),
(23, 'Pokemon: Let\'s Go, Pikachu!', 'Pokémon: Let’s Go, Pikachu! stuurt Pokémon fans op een nieuw avontuur in een vertrouwde omgeving. De nieuwe game heeft veel spelfuncties waarover je in het populaire Pokémon GO ook beschikt. Dit maakt de game perfect voor spelers die hun eerste stappen in de wereld van de Pokémon-games zetten. Begin een epische tocht in de iconische Kanto-regio met de grappige en stoere Pikachu als partner. In de game maak je gebruik van de unieke mogelijkheden van Nintendo Switch. Zo kun je door met de Joy-Con™-controller te zwaaien Poké Balls gooien om Pokémon te vangen en is er de optie voor familie en vrienden om dankzij de nieuwe twee-speler-modus samen te vechten en op verkenning te gaan.', '49.90', 'images/switch/pokemon.jpg', 3),
(24, 'Pokemon: Let\'s Go, Eevee!', 'Pokémon: Let’s Go, Eevee! stuurt Pokémon fans op een nieuw avontuur in een vertrouwde omgeving. De nieuwe game heeft veel spelfuncties waarover je in het populaire Pokémon GO ook beschikt. Hiermee is de game perfect voor spelers die hun eerste stappen in de wereld van de Pokémon-games zetten. Begin een epische tocht in de iconische Kanto-regio met de schattige Eevee als partner. In de game maak je gebruik van de unieke mogelijkheden van Nintendo Switch. Zo kun je door met de Joy-Con™-controller te zwaaien Poké Balls gooien om Pokémon te vangen en is er de optie voor familie en vrienden om dankzij de nieuwe twee-speler-modus samen te vechten en op verkenning te gaan.', '49.90', 'images/switch/pokemon.jpg', 3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  MODIFY `categoryId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
