
DROP TABLE IF EXISTS `geoobjects`;
DROP TABLE IF EXISTS `countries`;
DROP TABLE IF EXISTS `types`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `mail` varchar(64) NOT NULL,
  `password` binary(20) NOT NULL,
  `salt` char(5) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `countries` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(80) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `geoobjects` (
	`id` int NOT NULL AUTO_INCREMENT,
	`point` POINT NOT NULL,
	`typeId` int NOT NULL,
	`address` varchar(200) NULL,
	`city` varchar(80) NULL,
	`countryId` int NULL,
	`fid` varchar(200) NULL,
	`description` text NULL,
	PRIMARY KEY (`id`),
	KEY (`typeId`),
	KEY (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(80) NOT NULL,
	`originUrl` varchar(255) NULL,
	`icon` varbinary(20000) NULL,
	`description` text NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `geoobjects`
	ADD CONSTRAINT `fk_type` FOREIGN KEY (`typeId`) REFERENCES `types` (`id`),
	ADD CONSTRAINT `fk_country` FOREIGN KEY (`countryId`) REFERENCES `countries` (`id`);


-- countries
INSERT INTO countries (name)
VALUES 
	('Afghanistan'),
	('Ägypten'),
	('Aland'),
	('Albanien'),
	('Algerien'),
	('Amerikanisch-Samoa'),
	('Amerikanische Jungferninseln'),
	('Andorra'),
	('Angola'),
	('Anguilla'),
	('Antarktis'),
	('Antigua und Barbuda'),
	('Äquatorialguinea, Republik'),
	('Argentinien'),
	('Armenien'),
	('Aruba'),
	('Ascension'),
	('Aserbaidschan'),
	('Äthiopien'),
	('Australien'),
	('Bahamas'),
	('Bahrain'),
	('Bangladesch'),
	('Barbados'),
	('Belgien'),
	('Belize'),
	('Benin'),
	('Bermuda'),
	('Bhutan'),
	('Bolivien'),
	('Bosnien und Herzegowina'),
	('Botswana'),
	('Bouvetinsel'),
	('Brasilien'),
	('Britische Jungferninseln'),
	('Britisches Territorium im Indischen Ozean'),
	('Brunei'),
	('Bulgarien'),
	('Burkina Faso'),
	('Burundi'),
	('Chile'),
	('China, Volksrepublik'),
	('Cookinseln'),
	('Costa Rica'),
	('Cote dIvoire'),
	('Dänemark'),
	('Deutschland'),
	('Die Kronkolonie St. Helena und Nebengebiete'),
	('Diego Garcia'),
	('Dominica'),
	('Dominikanische Republik'),
	('Dschibuti'),
	('Ecuador'),
	('El Salvador'),
	('Eritrea'),
	('Estland'),
	('Europäische Union'),
	('Falklandinseln'),
	('Färöer'),
	('Fidschi'),
	('Finnland'),
	('Frankreich'),
	('Französisch-Guayana'),
	('Französisch-Polynesien'),
	('Französische Süd- und Antarktisgebiete'),
	('Gabun'),
	('Gambia'),
	('Georgien'),
	('Ghana, Republik'),
	('Gibraltar'),
	('Grenada'),
	('Griechenland'),
	('Grönland'),
	('Guadeloupe'),
	('Guam'),
	('Guatemala'),
	('Guernsey, Vogtei'),
	('Guinea, Republik'),
	('Guinea-Bissau, Republik'),
	('Guyana'),
	('Haiti'),
	('Heard und McDonaldinseln'),
	('Honduras'),
	('Hongkong'),
	('Indien'),
	('Indonesien'),
	('Insel Man'),
	('Irak'),
	('Iran'),
	('Irland, Republik'),
	('Island'),
	('Israel'),
	('Italien'),
	('Jamaika'),
	('Japan'),
	('Jemen'),
	('Jersey'),
	('Jordanien'),
	('Kaimaninseln'),
	('Kambodscha'),
	('Kamerun'),
	('Kanada'),
	('Kanarische Inseln'),
	('Kap Verde, Republik'),
	('Kasachstan'),
	('Katar'),
	('Kenia'),
	('Kirgisistan'),
	('Kiribati'),
	('Kokosinseln'),
	('Kolumbien'),
	('Komoren'),
	('Kongo, Demokratische Republik'),
	('Kongo, Republik'),
	('Korea, Demokratische Volkrepublik'),
	('Korea, Republik'),
	('Kroatien'),
	('Kuba'),
	('Kuwait'),
	('Laos'),
	('Lesotho'),
	('Lettland'),
	('Libanon'),
	('Liberia, Republik'),
	('Libyen'),
	('Liechtenstein, Fürstentum'),
	('Litauen'),
	('Luxemburg'),
	('Macao'),
	('Madagaskar, Republik'),
	('Malawi, Republik'),
	('Malaysia'),
	('Malediven'),
	('Mali, Republik'),
	('Malta'),
	('Marokko'),
	('Marshallinseln'),
	('Martinique'),
	('Mauretanien'),
	('Mauritius, Republik'),
	('Mayotte'),
	('Mazedonien'),
	('Mexiko'),
	('Mikronesien, Föderierte Staaten von'),
	('Moldawien'),
	('Monaco'),
	('Mongolei'),
	('Montserrat'),
	('Mosambik'),
	('Myanmar'),
	('Namibia, Republik'),
	('Nauru'),
	('Nepal'),
	('Neukaledonien'),
	('Neuseeland'),
	('Neutrale Zone'),
	('Nicaragua'),
	('Niederlande'),
	('Niederländische Antillen'),
	('Niger'),
	('Nigeria'),
	('Niue'),
	('Nördliche Marianen'),
	('Norfolkinsel'),
	('Norwegen'),
	('Oman'),
	('Österreich'),
	('Pakistan'),
	('Palästinensische Autonomiegebiete'),
	('Palau'),
	('Panama'),
	('Papua-Neuguinea'),
	('Paraguay'),
	('Peru'),
	('Philippinen'),
	('Pitcairninseln'),
	('Polen'),
	('Portugal'),
	('Puerto Rico'),
	('Réunion'),
	('Ruanda, Republik'),
	('Rumänien'),
	('Russische Föderation'),
	('Salomonen'),
	('Sambia, Republik'),
	('Samoa'),
	('San Marino'),
	('São Tomé und Príncipe'),
	('Saudi-Arabien, Königreich'),
	('Schweden'),
	('Schweiz'),
	('Senegal'),
	('Serbien und Montenegro'),
	('Seychellen, Republik der'),
	('Sierra Leone, Republik'),
	('Simbabwe, Republik'),
	('Singapur'),
	('Slowakei'),
	('Slowenien'),
	('Somalia, Demokratische Republik'),
	('Spanien'),
	('Sri Lanka'),
	('St. Kitts und Nevis'),
	('St. Lucia'),
	('St. Pierre und Miquelon'),
	('St. Vincent und die Grenadinen SELECT GB)'),
	('Südafrika, Republik'),
	('Sudan'),
	('Südgeorgien und die Südlichen Sandwichinseln'),
	('Suriname'),
	('Svalbard und Jan Mayen'),
	('Swasiland'),
	('Syrien'),
	('Tadschikistan'),
	('Taiwan'),
	('Tansania, Vereinigte Republik'),
	('Thailand'),
	('Demokratische Republik'),
	('Togo, Republik'),
	('Tokelau'),
	('Tonga'),
	('Trinidad und Tobago'),
	('Tristan da Cunha'),
	('Tschad, Republik'),
	('Tschechische Republik'),
	('Tunesien'),
	('Türkei'),
	('Turkmenistan'),
	('Turks- und Caicosinseln'),
	('Tuvalu'),
	('Uganda, Republik'),
	('Ukraine'),
	('Union der Sozialistischen Sowjetrepubliken'),
	('Uruguay'),
	('Usbekistan'),
	('Vanuatu'),
	('Vatikanstadt'),
	('Venezuela'),
	('Vereinigte Arabische Emirate'),
	('Vereinigte Staaten von Amerika'),
	('Vereinigtes Königreich von Großbritannien und Nordirland'),
	('Vietnam'),
	('Wallis und Futuna'),
	('Weihnachtsinsel'),
	('Weißrussland'),
	('Westsahara'),
	('Zentralafrikanische Republik'),
	('Zypern, Republik'),
	('Ungarn'),
	('Montenegro');
