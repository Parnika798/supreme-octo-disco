create database NewProject;
use NewProject;
-- Creating tables
create table Constituency
( Constituency_ID int primary key,
  Constituency_Name char(50),
  State char(50)
);
describe Constituency;

create table Party
(
Party_ID int primary key,
Party_Name char(50)
);
describe Party;

create table Result
( Result_ID int primary key,
Result char(50),
Constituency_ID int,
foreign key (Constituency_ID) references Constituency(Constituency_ID)
);
describe Result;

create table Candidate
(
Candidate_ID int primary key,
Candidate_Name char(50),
Constituency_ID int,
foreign key (Constituency_ID) references Constituency(Constituency_ID),
Result_ID int,
foreign key (Result_ID) references Result(Result_ID),
Party_ID int,
foreign key (Party_ID) references Party(Party_ID)
);
describe Candidate;

create table Votes
(
Vote_ID int primary key,
EVMVotes int,
PostalVotes int,
TotalVotes int,
Votes_Percent decimal(4,2),
Candidate_ID int,
foreign key(Candidate_ID) references Candidate(Candidate_ID),
Result_ID int,
foreign key (Result_ID) references Result(Result_ID)
);
describe votes;

-- Inserting values into Constituency Table
describe Constituency;
insert into Constituency(Constituency_ID,Constituency_Name,State) values

(1,'Andaman & Nicobar Islands','Andaman & Nicobar Islands'),
(2,'Andhra Pradesh','Amalapuram (SC)'),
(3,'Andhra Pradesh','Anakapalle'),
(4,'Andhra Pradesh','Ananthapur'),
(5,'Andhra Pradesh','Araku (ST)'),
(6,'Andhra Pradesh','Bapatla (SC)'),
(7,'Andhra Pradesh','Chittoor(SC)'),
(8,'Andhra Pradesh','Eluru'),
(9,'Andhra Pradesh','Guntur'),
(10,'Andhra Pradesh','Hindupur'),
(11,'Andhra Pradesh','Kadapa'),
(12,'Andhra Pradesh','Kakinada'),
(13,'Andhra Pradesh','Kurnoolu'),
(14,'Andhra Pradesh','Machilipatnam'),
(15,'Andhra Pradesh','Nandyal'),
(16,'Andhra Pradesh','Narsapuram'),
(17,'Andhra Pradesh','Narsaraopet'),
(18,'Andhra Pradesh','Nellore'),
(19,'Andhra Pradesh','Ongole'),
(20,'Andhra Pradesh','Rajahmundry'),
(21,'Andhra Pradesh','Rajampet'),
(22,'Andhra Pradesh','Srikakulam'),
(23,'Andhra Pradesh','Thirupathi(SC)'),
(24,'Andhra Pradesh','Vijayawada'),
(25,'Andhra Pradesh','Visakhapatnam'),
(26,'Andhra Pradesh','Vizianagaram'),
(27,'Arunachal Pradesh','Arunachal East'),
(28,'Arunachal Pradesh','Arunachal West'),
(29,'Assam','Barpeta'),
(30,'Assam','Darrang-Udalguri'),
(31,'Assam','Dhubri'),
(32,'Assam','Dibrugarh'),
(33,'Assam','Diphu'),
(34,'Assam','Guwahati'),
(35,'Assam','Jorhat'),
(36,'Assam','Karimganj'),
(37,'Assam','Kaziranga'),
(38,'Assam','Kokrajhar'),
(39,'Assam','Lakhimpur'),
(40,'Assam','Nagaon'),
(41,'Assam','Silchar'),
(42,'Assam','Sonitpur'),
(43,'Bihar','Araria'),
(44,'Bihar','Arrah'),
(45,'Bihar','Aurangabad'),
(46,'Bihar','Banka'),
(47,'Bihar','Begusarai'),
(48,'Bihar','Bhagalpur'),
(49,'Bihar','Buxar'),
(50,'Bihar','Darbhanga'),
(51,'Bihar','Gaya'),
(52,'Bihar','Gopalganj'),
(53,'Bihar','Hajipur'),
(54,'Bihar','Jahanabad'),
(55,'Bihar','Jamui'),
(56,'Bihar','Jhanjharpur'),
(57,'Bihar','Karakat'),
(58,'Bihar','Katihar'),
(59,'Bihar','Khagaria'),
(60,'Bihar','Kishanganj'),
(61,'Bihar','Madhepura'),
(62,'Bihar','Madhubani'),
(63,'Bihar','Maharajganj'),
(64,'Bihar','Munger'),
(65,'Bihar','Muzaffarpur'),
(66,'Bihar','Nalanda'),
(67,'Bihar','Nawada'),
(68,'Bihar','Paschim Champaran'),
(69,'Bihar','Patliputra'),
(70,'Bihar','Patna Sahib'),
(71,'Bihar','Purnia'),
(72,'Bihar','Purvi Champaran'),
(73,'Bihar','Samastipur'),
(74,'Bihar','Saran'),
(75,'Bihar','Sasaram'),
(76,'Bihar','Sheohar'),
(77,'Bihar','Sitamarhi'),
(78,'Bihar','Siwan'),
(79,'Bihar','Supaul'),
(80,'Bihar','Ujiarpur'),
(81,'Bihar','Vaishali'),
(82,'Bihar','Valmiki Nagar'),
(83,'Chandigarh','Chandigarh'),
(84,'Chhattisgarh','BASTAR'),
(85,'Chhattisgarh','BILASPUR'),
(86,'Chhattisgarh','DURG'),
(87,'Chhattisgarh','JANJGIR-CHAMPA'),
(88,'Chhattisgarh','KANKER'),
(89,'Chhattisgarh','KORBA'),
(90,'Chhattisgarh','MAHASAMUND'),
(91,'Chhattisgarh','RAIGARH'),
(92,'Chhattisgarh','RAIPUR'),
(93,'Chhattisgarh','RAJNANDGAON'),
(94,'Chhattisgarh','SURGUJA'),
(95,'Dadra & Nagar Haveli and Daman & Diu','Dadar & Nagar Haveli'),
(96,'Dadra & Nagar Haveli and Daman & Diu','Daman & Diu'),
(97,'Goa','North Goa'),
(98,'Goa','South Goa'),
(99,'Gujarat','Ahmedabad East'),
(100,'Gujarat','Ahmedabad West'),
(101,'Gujarat','Amreli'),
(102,'Gujarat','Anand'),
(103,'Gujarat','Banaskantha'),
(104,'Gujarat','Bardoli'),
(105,'Gujarat','Bharuch'),
(106,'Gujarat','Bhavnagar'),
(107,'Gujarat','Chhota Udaipur'),
(108,'Gujarat','Dahod'),
(109,'Gujarat','Gandhinagar'),
(110,'Gujarat','Jamnagar'),
(111,'Gujarat','Junagadh'),
(112,'Gujarat','Kachchh'),
(113,'Gujarat','Kheda'),
(114,'Gujarat','Mahesana'),
(115,'Gujarat','Navsari'),
(116,'Gujarat','Panchmahal'),
(117,'Gujarat','Patan'),
(118,'Gujarat','Porbandar'),
(119,'Gujarat','Rajkot'),
(120,'Gujarat','Sabarkantha'),
(121,'Gujarat','Surat'),
(122,'Gujarat','Surendranagar'),
(123,'Gujarat','Vadodara'),
(124,'Gujarat','Valsad'),
(125,'Haryana','AMBALA'),
(126,'Haryana','BHIWANI-MAHENDRAGARH'),
(127,'Haryana','FARIDABAD'),
(128,'Haryana','GURGAON'),
(129,'Haryana','HISAR'),
(130,'Haryana','KARNAL'),
(131,'Haryana','KURUKSHETRA'),
(132,'Haryana','ROHTAK'),
(133,'Haryana','SIRSA'),
(134,'Haryana','SONIPAT'),
(135,'Himachal Pradesh','HAMIRPUR'),
(136,'Himachal Pradesh','KANGRA'),
(137,'Himachal Pradesh','MANDI'),
(138,'Himachal Pradesh','SHIMLA'),
(139,'Jammu and Kashmir','ANANTNAG-RAJOURI'),
(140,'Jammu and Kashmir','BARAMULLA'),
(141,'Jammu and Kashmir','JAMMU'),
(142,'Jammu and Kashmir','SRINAGAR'),
(143,'Jammu and Kashmir','UDHAMPUR'),
(144,'Jharkhand','Chatra'),
(145,'Jharkhand','Dhanbad'),
(146,'Jharkhand','Dumka'),
(147,'Jharkhand','Giridih'),
(148,'Jharkhand','Godda'),
(149,'Jharkhand','Hazaribagh'),
(150,'Jharkhand','Jamshedpur'),
(151,'Jharkhand','Khunti'),
(152,'Jharkhand','Kodarma'),
(153,'Jharkhand','Lohardaga'),
(154,'Jharkhand','Palamau'),
(155,'Jharkhand','Rajmahal'),
(156,'Jharkhand','Ranchi'),
(157,'Jharkhand','Singhbhum'),
(158,'Karnataka','Bagalkot'),
(159,'Karnataka','Bangalore central'),
(160,'Karnataka','Bangalore North'),
(161,'Karnataka','Bangalore Rural'),
(162,'Karnataka','Bangalore South'),
(163,'Karnataka','Belgaum'),
(164,'Karnataka','Bellary'),
(165,'Karnataka','Bidar'),
(166,'Karnataka','Bijapur'),
(167,'Karnataka','Chamarajanagar'),
(168,'Karnataka','Chikkballapur'),
(169,'Karnataka','Chikkodi'),
(170,'Karnataka','Chitradurga'),
(171,'Karnataka','Dakshina Kannada'),
(172,'Karnataka','Davanagere'),
(173,'Karnataka','Dharwad'),
(174,'Karnataka','Gulbarga'),
(175,'Karnataka','Hassan'),
(176,'Karnataka','Haveri'),
(177,'Karnataka','Kolar'),
(178,'Karnataka','Koppal'),
(179,'Karnataka','Mandya'),
(180,'Karnataka','Mysore'),
(181,'Karnataka','Raichur'),
(182,'Karnataka','Shimoga'),
(183,'Karnataka','Tumkur'),
(184,'Karnataka','Udupi Chikmagalur'),
(185,'Karnataka','Uttara Kannada'),
(186,'Kerala','Alappuzha'),
(187,'Kerala','Alathur'),
(188,'Kerala','Attingal'),
(189,'Kerala','Chalakudy'),
(190,'Kerala','Ernakulam'),
(191,'Kerala','Idukki'),
(192,'Kerala','Kannur'),
(193,'Kerala','Kasaragod'),
(194,'Kerala','Kollam'),
(195,'Kerala','Kottayam'),
(196,'Kerala','Kozhikode'),
(197,'Kerala','Malappuram'),
(198,'Kerala','Mavelikkara'),
(199,'Kerala','Palakkad'),
(200,'Kerala','Pathanamthitta'),
(201,'Kerala','Ponnani'),
(202,'Kerala','Thiruvananthapuram'),
(203,'Kerala','Thrissur'),
(204,'Kerala','Vadakara'),
(205,'Kerala','Wayanad'),
(206,'Ladakh','Ladakh'),
(207,'Lakshadweep','Lakshadweep'),
(208,'Madhya Pradesh','BALAGHAT'),
(209,'Madhya Pradesh','BETUL'),
(210,'Madhya Pradesh','BHIND'),
(211,'Madhya Pradesh','BHOPAL'),
(212,'Madhya Pradesh','CHHINDWARA'),
(213,'Madhya Pradesh','DAMOH'),
(214,'Madhya Pradesh','DEWAS'),
(215,'Madhya Pradesh','DHAR'),
(216,'Madhya Pradesh','GUNA'),
(217,'Madhya Pradesh','GWALIOR'),
(218,'Madhya Pradesh','HOSHANGABAD'),
(219,'Madhya Pradesh','INDORE'),
(220,'Madhya Pradesh','JABALPUR'),
(221,'Madhya Pradesh','KHAJURAHO'),
(222,'Madhya Pradesh','KHANDWA'),
(223,'Madhya Pradesh','KHARGONE'),
(224,'Madhya Pradesh','MANDLA'),
(225,'Madhya Pradesh','MANDSOUR'),
(226,'Madhya Pradesh','MORENA'),
(227,'Madhya Pradesh','RAJGARH'),
(228,'Madhya Pradesh','RATLAM'),
(229,'Madhya Pradesh','REWA'),
(230,'Madhya Pradesh','SAGAR'),
(231,'Madhya Pradesh','SATNA'),
(232,'Madhya Pradesh','SHAHDOL'),
(233,'Madhya Pradesh','SIDHI'),
(234,'Madhya Pradesh','TIKAMGARH'),
(235,'Madhya Pradesh','UJJAIN'),
(236,'Madhya Pradesh','VIDISHA'),
(237,'Maharashtra','Ahmednagar'),
(238,'Maharashtra','Akola'),
(239,'Maharashtra','Amravati'),
(240,'Maharashtra','Aurangabad'),
(241,'Maharashtra','Baramati'),
(242,'Maharashtra','Beed'),
(243,'Maharashtra','Bhandara Gondiya'),
(244,'Maharashtra','Bhiwandi'),
(245,'Maharashtra','Buldhana'),
(246,'Maharashtra','Chandrapur'),
(247,'Maharashtra','Dhule'),
(248,'Maharashtra','Dindori'),
(249,'Maharashtra','Gadchiroli - Chimur'),
(250,'Maharashtra','Hatkanangale'),
(251,'Maharashtra','Hingoli'),
(252,'Maharashtra','Jalgaon'),
(253,'Maharashtra','Jalna'),
(254,'Maharashtra','Kalyan'),
(255,'Maharashtra','Kolhapur'),
(256,'Maharashtra','Latur'),
(257,'Maharashtra','Madha'),
(258,'Maharashtra','Maval'),
(259,'Maharashtra','Mumbai North'),
(260,'Maharashtra','Mumbai North Central'),
(261,'Maharashtra','Mumbai North East'),
(262,'Maharashtra','Mumbai North West'),
(263,'Maharashtra','Mumbai South'),
(264,'Maharashtra','Mumbai South Central'),
(265,'Maharashtra','Nagpur'),
(266,'Maharashtra','Nanded'),
(267,'Maharashtra','Nandurbar'),
(268,'Maharashtra','Nashik'),
(269,'Maharashtra','Osmanabad'),
(270,'Maharashtra','Palghar'),
(271,'Maharashtra','Parbhani'),
(272,'Maharashtra','Pune'),
(273,'Maharashtra','Raigad'),
(274,'Maharashtra','Ramtek'),
(275,'Maharashtra','Ratnagiri- Sindhudurg'),
(276,'Maharashtra','Raver'),
(277,'Maharashtra','Sangli'),
(278,'Maharashtra','Satara'),
(279,'Maharashtra','Shirdi'),
(280,'Maharashtra','Shirur'),
(281,'Maharashtra','Solapur'),
(282,'Maharashtra','Thane'),
(283,'Maharashtra','Wardha'),
(284,'Maharashtra','Yavatmal- Washim'),
(285,'Manipur','Inner Manipur'),
(286,'Manipur','Outer Manipur'),
(287,'Meghalaya','Shillong'),
(288,'Meghalaya','Tura'),
(289,'Mizoram','MIZORAM'),
(290,'Nagaland','Nagaland'),
(291,'NCT OF Delhi','Chandni Chowk'),
(292,'NCT OF Delhi','East Delhi'),
(293,'NCT OF Delhi','New Delhi'),
(294,'NCT OF Delhi','North-East Delhi'),
(295,'NCT OF Delhi','North-West Delhi'),
(296,'NCT OF Delhi','South Delhi'),
(297,'NCT OF Delhi','West Delhi'),
(298,'Odisha','Aska'),
(299,'Odisha','Balasore'),
(300,'Odisha','Bargarh'),
(301,'Odisha','Berhampur'),
(302,'Odisha','Bhadrak'),
(303,'Odisha','Bhubaneswar'),
(304,'Odisha','Bolangir'),
(305,'Odisha','Cuttack'),
(306,'Odisha','Dhenkanal'),
(307,'Odisha','Jagatsinghpur'),
(308,'Odisha','Jajpur'),
(309,'Odisha','Kalahandi'),
(310,'Odisha','Kandhamal'),
(311,'Odisha','Kendrapara'),
(312,'Odisha','Keonjhar'),
(313,'Odisha','Koraput'),
(314,'Odisha','Mayurbhanj'),
(315,'Odisha','Nabarangpur'),
(316,'Odisha','Puri'),
(317,'Odisha','Sambalpur'),
(318,'Odisha','Sundargarh'),
(319,'Puducherry','PUDUCHERRY'),
(320,'Punjab','Amritsar'),
(321,'Punjab','Anandpur Sahib'),
(322,'Punjab','Bathinda'),
(323,'Punjab','Faridkot'),
(324,'Punjab','Fatehgarh Sahib'),
(325,'Punjab','Firozpur'),
(326,'Punjab','Gurdaspur'),
(327,'Punjab','Hoshiarpur'),
(328,'Punjab','Jalandhar'),
(329,'Punjab','Khadoor Sahib'),
(330,'Punjab','Ludhiana'),
(331,'Punjab','Patiala'),
(332,'Punjab','Sangrur'),
(333,'Rajasthan','AJMER'),
(334,'Rajasthan','ALWAR'),
(335,'Rajasthan','BANSWARA'),
(336,'Rajasthan','BARMER'),
(337,'Rajasthan','BHARATPUR'),
(338,'Rajasthan','BHILWARA'),
(339,'Rajasthan','BIKANER'),
(340,'Rajasthan','CHITTORGARH'),
(341,'Rajasthan','CHURU'),
(342,'Rajasthan','DAUSA'),
(343,'Rajasthan','GANGANAGAR'),
(344,'Rajasthan','JAIPUR'),
(345,'Rajasthan','JAIPUR RURAL'),
(346,'Rajasthan','JALORE'),
(347,'Rajasthan','JHALAWAR-BARAN'),
(348,'Rajasthan','JHUNJHUNU'),
(349,'Rajasthan','JODHPUR'),
(350,'Rajasthan','KARAULI-DHOLPUR'),
(351,'Rajasthan','KOTA'),
(352,'Rajasthan','NAGAUR'),
(353,'Rajasthan','PALI'),
(354,'Rajasthan','RAJSAMAND'),
(355,'Rajasthan','SIKAR'),
(356,'Rajasthan','TONK-SAWAI MADHOPUR'),
(357,'Rajasthan','UDAIPUR'),
(358,'Sikkim','Sikkim'),
(359,'Tamil Nadu','ARAKKONAM'),
(360,'Tamil Nadu','ARANI'),
(361,'Tamil Nadu','CHENNAI CENTRAL'),
(362,'Tamil Nadu','CHENNAI NORTH'),
(363,'Tamil Nadu','CHENNAI SOUTH'),
(364,'Tamil Nadu','CHIDAMBARAM'),
(365,'Tamil Nadu','COIMBATORE'),
(366,'Tamil Nadu','CUDDALORE'),
(367,'Tamil Nadu','DHARMAPURI'),
(368,'Tamil Nadu','DINDIGUL'),
(369,'Tamil Nadu','ERODE'),
(370,'Tamil Nadu','KALLAKURICHI'),
(371,'Tamil Nadu','KANCHEEPURAM'),
(372,'Tamil Nadu','KANNIYAKUMARI'),
(373,'Tamil Nadu','KARUR'),
(374,'Tamil Nadu','KRISHNAGIRI'),
(375,'Tamil Nadu','MADURAI'),
(376,'Tamil Nadu','MAYILADUTHURAI'),
(377,'Tamil Nadu','NAGAPATTINAM'),
(378,'Tamil Nadu','NAMAKKAL'),
(379,'Tamil Nadu','NILGIRIS'),
(380,'Tamil Nadu','PERAMBALUR'),
(381,'Tamil Nadu','POLLACHI'),
(382,'Tamil Nadu','RAMANATHAPURAM'),
(383,'Tamil Nadu','SALEM'),
(384,'Tamil Nadu','SIVAGANGA'),
(385,'Tamil Nadu','SRIPERUMBUDUR'),
(386,'Tamil Nadu','TENKASI'),
(387,'Tamil Nadu','THANJAVUR'),
(388,'Tamil Nadu','THENI'),
(389,'Tamil Nadu','THOOTHUKKUDI'),
(390,'Tamil Nadu','TIRUCHIRAPPALLI'),
(391,'Tamil Nadu','TIRUNELVELI'),
(392,'Tamil Nadu','TIRUPPUR'),
(393,'Tamil Nadu','TIRUVALLUR'),
(394,'Tamil Nadu','TIRUVANNAMALAI'),
(395,'Tamil Nadu','VELLORE'),
(396,'Tamil Nadu','VILUPPURAM'),
(397,'Tamil Nadu','VIRUDHUNAGAR'),
(398,'Telangana','Adilabad'),
(399,'Telangana','Bhongir'),
(400,'Telangana','Chevella'),
(401,'Telangana','Hyderabad'),
(402,'Telangana','Karimnagar'),
(403,'Telangana','Khammam'),
(404,'Telangana','Mahabubabad'),
(405,'Telangana','Mahbubnagar'),
(406,'Telangana','Malkajgiri'),
(407,'Telangana','Medak'),
(408,'Telangana','Nagarkurnool'),
(409,'Telangana','Nalgonda'),
(410,'Telangana','Nizamabad'),
(411,'Telangana','Peddapalle'),
(412,'Telangana','Secunderabad'),
(413,'Telangana','Warangal'),
(414,'Telangana','Zahirabad'),
(415,'Tripura','Tripura East'),
(416,'Tripura','Tripura West'),
(417,'Uttar Pradesh','Agra'),
(418,'Uttar Pradesh','Akbarpur'),
(419,'Uttar Pradesh','Aligarh'),
(420,'Uttar Pradesh','Allahabad'),
(421,'Uttar Pradesh','Ambedkar Nagar'),
(422,'Uttar Pradesh','Amethi'),
(423,'Uttar Pradesh','Amroha'),
(424,'Uttar Pradesh','Aonla'),
(425,'Uttar Pradesh','Azamgarh'),
(426,'Uttar Pradesh','Badaun'),
(427,'Uttar Pradesh','Baghpat'),
(428,'Uttar Pradesh','Baharaich'),
(429,'Uttar Pradesh','Ballia'),
(430,'Uttar Pradesh','Banda'),
(431,'Uttar Pradesh','Bansgaon'),
(432,'Uttar Pradesh','Barabanki'),
(433,'Uttar Pradesh','Bareilly'),
(434,'Uttar Pradesh','Basti'),
(435,'Uttar Pradesh','Bhadohi'),
(436,'Uttar Pradesh','Bijnor'),
(437,'Uttar Pradesh','Bulandshahr'),
(438,'Uttar Pradesh','Chandauli'),
(439,'Uttar Pradesh','Deoria'),
(440,'Uttar Pradesh','Dhaurahra'),
(441,'Uttar Pradesh','Domariyaganj'),
(442,'Uttar Pradesh','Etah'),
(443,'Uttar Pradesh','Etawah'),
(444,'Uttar Pradesh','Faizabad'),
(445,'Uttar Pradesh','Farrukhabad'),
(446,'Uttar Pradesh','Fatehpur'),
(447,'Uttar Pradesh','Fatehpur Sikri'),
(448,'Uttar Pradesh','Firozabad'),
(449,'Uttar Pradesh','Gautam Buddha Nagar'),
(450,'Uttar Pradesh','Ghaziabad'),
(451,'Uttar Pradesh','Ghazipur'),
(452,'Uttar Pradesh','Ghosi'),
(453,'Uttar Pradesh','Gonda'),
(454,'Uttar Pradesh','Gorakhpur'),
(455,'Uttar Pradesh','Hamirpur'),
(456,'Uttar Pradesh','Hardoi'),
(457,'Uttar Pradesh','Hathras'),
(458,'Uttar Pradesh','Jalaun'),
(459,'Uttar Pradesh','Jaunpur'),
(460,'Uttar Pradesh','Jhansi'),
(461,'Uttar Pradesh','Kairana'),
(462,'Uttar Pradesh','Kaiserganj'),
(463,'Uttar Pradesh','Kannauj'),
(464,'Uttar Pradesh','Kanpur'),
(465,'Uttar Pradesh','Kaushambi'),
(466,'Uttar Pradesh','Kheri'),
(467,'Uttar Pradesh','Kushi Nagar'),
(468,'Uttar Pradesh','Lalganj'),
(469,'Uttar Pradesh','Lucknow'),
(470,'Uttar Pradesh','Machhlishahr'),
(471,'Uttar Pradesh','Maharajganj'),
(472,'Uttar Pradesh','Mainpuri'),
(473,'Uttar Pradesh','Mathura'),
(474,'Uttar Pradesh','Meerut'),
(475,'Uttar Pradesh','Mirzapur'),
(476,'Uttar Pradesh','Misrikh'),
(477,'Uttar Pradesh','Mohanlalganj'),
(478,'Uttar Pradesh','Moradabad'),
(479,'Uttar Pradesh','Muzaffarnagar'),
(480,'Uttar Pradesh','Nagina'),
(481,'Uttar Pradesh','Phulpur'),
(482,'Uttar Pradesh','Pilibhit'),
(483,'Uttar Pradesh','Pratapgarh'),
(484,'Uttar Pradesh','Rae Bareli'),
(485,'Uttar Pradesh','Rampur'),
(486,'Uttar Pradesh','Robertsganj'),
(487,'Uttar Pradesh','Saharanpur'),
(488,'Uttar Pradesh','Salempur'),
(489,'Uttar Pradesh','Sambhal'),
(490,'Uttar Pradesh','Sant Kabir Nagar'),
(491,'Uttar Pradesh','Shahjahanpur'),
(492,'Uttar Pradesh','Shrawasti'),
(493,'Uttar Pradesh','Sitapur'),
(494,'Uttar Pradesh','Sultanpur'),
(495,'Uttar Pradesh','Unnao'),
(496,'Uttar Pradesh','Varanasi'),
(497,'Uttarakhand','Almora'),
(498,'Uttarakhand','Garhwal'),
(499,'Uttarakhand','Haridwar'),
(500,'Uttarakhand','Nainital-Udhamsingh Nagar'),
(501,'Uttarakhand','Tehri Garhwal'),
(502,'West Bengal','Alipurduars'),
(503,'West Bengal','Arambagh'),
(504,'West Bengal','Asansol'),
(505,'West Bengal','Baharampur'),
(506,'West Bengal','Balurghat'),
(507,'West Bengal','Bangaon'),
(508,'West Bengal','Bankura'),
(509,'West Bengal','Barasat'),
(510,'West Bengal','Bardhaman Purba'),
(511,'West Bengal','Bardhaman-Durgapur'),
(512,'West Bengal','Barrackpur'),
(513,'West Bengal','Basirhat'),
(514,'West Bengal','Birbhum'),
(515,'West Bengal','Bishnupur'),
(516,'West Bengal','Bolpur'),
(517,'West Bengal','Coochbehar'),
(518,'West Bengal','Darjeeling'),
(519,'West Bengal','Diamond harbour'),
(520,'West Bengal','Dum dum'),
(521,'West Bengal','Ghatal'),
(522,'West Bengal','Hooghly'),
(523,'West Bengal','Howrah'),
(524,'West Bengal','Jadavpur'),
(525,'West Bengal','Jalpaiguri'),
(526,'West Bengal','Jangipur'),
(527,'West Bengal','Jhargram'),
(528,'West Bengal','Joynagar'),
(529,'West Bengal','Kanthi'),
(530,'West Bengal','Kolkata Dakshin'),
(531,'West Bengal','Kolkata Uttar'),
(532,'West Bengal','Krishnanagar'),
(533,'West Bengal','Maldaha Dakshin'),
(534,'West Bengal','Maldaha Uttar'),
(535,'West Bengal','Mathurapur'),
(536,'West Bengal','Medinipur'),
(537,'West Bengal','Murshidabad'),
(538,'West Bengal','Purulia'),
(539,'West Bengal','Raiganj'),
(540,'West Bengal','Ranaghat'),
(541,'West Bengal','Srerampur'),
(542,'West Bengal','Tamluk'),
(543,'West Bengal','Uluberia');
select* from Constituency;

-- Inserting into Party Table
describe Party;
insert into Party(Party_ID,Party_Name) values
(1,'Aadarsh Sangram Party'),
(2,'Aadi Bharat Party'),		
(3,'Aadim Samaj Party'),		
(4,'Aam Aadmi Parivartan Party'),	
(5,'Aam Aadmi Party'),		
(6,'Aam Janmat Party,'),		
(7,'Aam Janshakti Party'),		
(8,'Aam Janta Party (India)'),		
(9,'Aam Janta Party Rashtriya'),	
(10,'Aam Lok Party United'),		
(11,'Aanaithinthiya Jananayaka Pathukappu Kazhagam'),
(12,'Aap Sabki Apni Party'),		
(13,'Aapka Gantantra Party'),		
(14,'Aapki Apni Party (Peoples)'),	
(15,'Aapki Awaaz Party'),		
(16,'AARAKSHAN VIRODHI PARTY'),	
(17,'Aas Punjab Party'),		
(18,'Aawami Pichhada Party'),		
(19,'Aazad Samaj Party (Kanshi Ram)'),	
(20,'Abhay Samaj Party'),		
(21,'Abhinav Bharat Janseva Paksh'),	
(22,'Abhinav Rajasthan Party'),		
(23,'Abua Jharkhand Party'),		
(24,'Adarsh Jankalyan Dal'),		
(25,'Adarsh Janta Party,'),		
(26,'Adarsh Nyay Rakshak Party'),	
(27,'Adarsh Samaj Party'),		
(28,'Adarshwaadi Congress Party'),	
(29,'Adim Bhartiya Dal'),		
(30,'Ahimsa Socialist Party'),		
(31,'Ahinsa Samaj Party'),		
(32,'Aihra National Party'),		
(33,'Aim Political Party'),		
(34,'AJSU Party'),			
(35,'Akhand Bharat Janpriya Party'),	
(36,'Akhand Bharat Samrajya Party'),	
(37,'Akhand Bharat Swatantra Party'),	
(38,'Akhil Bharat Hindu Mahasabha'),	
(39,'Akhil Bharatiya Congress Dal (Ambedkar)'),
(40,'Akhil Bharatiya Hind Kranti Party'),	
(41,'Akhil Bharatiya Manavata Paksha'),	
(42,'Akhil Bharatiya Muslim League (Secular)'),
(43,'Akhil Bhartiya Aamjan Party'),	
(44,'Akhil Bhartiya Aarakshit Samaj Party'),
(45,'Akhil Bhartiya Apna Dal'),		
(46,'Akhil Bhartiya Hamara Samaj Party'),	
(47,'Akhil Bhartiya Kisan Majdoor Party'),	
(48,'Akhil Bhartiya Manavadhikar Vichar Manch Party'),
(49,'Akhil Bhartiya Parivar Party'),	
(50,'Akhil Bhartiya Sarvjan Hit Party'),	
(51,'Akhil Bhartiya Sudhar Party'),	
(52,'Akhil Hind Forward Bloc (Krantikari)'),
(53,'Akhila Vijaya Party'),		
(54,'Al-Hind Party'),			
(55,'All India Anna Dravida Munnetra Kazhagam'),
(56,'All India Arya Mahasabha'),	
(57,'All India Backward People Sunami Party'),
(58,'All India Forward Bloc'),		
(59,'All India Jaihind Party'),		
(60,'All India Jananayaka Makkal Kazhagam'),
(61,'All India Kisan Janatha party'),	
(62,'All India Mahila Empowerment Party'),
(63,'All India Majlis-E-Inquilab-E-Millat'),	
(64,'All India Majlis-E-Ittehadul Muslimeen'),
(65,'All India Mazdoor Party (Rangreta)'),	
(66,'All India National Raksha Sena'),	
(67,'All India People Development Party'),	
(68,'All India Secular Front'),		
(69,'All India Trinamool Congress'),	
(70,'All India Ulama Congress'),	
(71,'All India United Democratic Front'),	
(72,'All India Uzhavargal Uzhaippalargal Katchi'),
(73,'All India Youth Development Party'),	
(74,'All Peoples Party'),		
(75,'Alliance of Democratic Reforms Party'),
(76,'Aman Samaj Party'),		
(77,'Ambedkar National Congress'),	
(78,'Ambedkarist Republican Party'),	
(79,'Ambedkarite Party of India'),	
(80,'Amma Makkal Munnettra Kazagam'),	
(81,'Amra Bangalee'),		
(82,'Anaithu India Makkal Katchi'),	
(83,'Andaman Nicobar Democratic Congress'),
(84,'Andhra Pradesh Rashtra Samithi'),	
(85,'Andhra Rastra Praja Samithi'),	
(86,'Anjaan Aadmi Party'),		
(87,'Anna Makkal Katchi'),		
(88,'Anna MGR Dravida Makkal Kalgam'),	
(89,'Anna Puratchi'),
(90,'Anna YSR Congress Party'),	
(91,'Anti Corruption Dynamic Party'),	
(92,'Apna Dal (Kamerawadi)'),		
(93,'Apna Dal (Soneylal)'),		
(94,'Apna Desh Party'),		
(95,'Apna Haq Party'),		
(96,'Apna Kisan Party'),		
(97,'Apna Samaj Party'),		
(98,'Apni Ekta Party'),		
(99,'Apni Prajahit Party'),		
(100,'Aravor Munnetra Kazhagam'),	
(101,'Arunachal Democratic Party'),	
(102,'Asankhya Samaj Party'),		
(103,'Asom Gana Parishad'),		
(104,'Asom Jana Morcha'),		
(105,'Assam Jatiya Parishad'),		
(106,'Atulya Bharat Party'),		
(107,'Autonomous State Demand Committee'),
(108,'Awami Samta Party'),		
(109,'Azad Adhikar Sena'),		
(110,'Azad Janata Party'),		
(111,'Azad Party'),			
(112,'Azad Samaj Party'),		
(113,'Bahujan Awam Party'),		
(114,'Bahujan Bharat Party'),		
(115,'Bahujan Dravida Party'),		
(116,'Bahujan Kranti Party (Marxwad-Ambedkarwad)'),
(117,'Bahujan Maha Party'),		
(118,'Bahujan Mukti Party'),		
(119,'Bahujan National Party (Ambedkar)'),
(120,'Bahujan Republican  Socialist Party'),
(121,'Bahujan Samaj Party'),		
(122,'Bahujan Samaj Party  (Ambedkar)'),	
(123,'Bahujan Shoshit Samaj Sangharsh Samta Party'),
(124,'Bahujan Vikas Aaghadi'),		
(125,'Bahujana Left Party'),		
(126,'Bajjikanchal Vikas Party'),		
(127,'Baliraja Party'),		
(128,'Bangali Nabanirman Sena'),	
(129,'Bengaluru Nava Nirmana Party'),	
(130,'Bhagidari Party(P)'),		
(131,'Bharat Adivasi Party'),		
(132,'Bharat Jago Janta Party'),		
(133,'Bharat Jan Aadhar Party'),	
(134,'Bharat Jan Jagran Dal'),		
(135,'Bharat Jodo Party'),		
(136,'Bharat Ki Lok Jimmedar Party'),	
(137,'Bharat Lok Sewak Party'),		
(138,'Bharat Mahaparivar Party'),	
(139,'Bharat Nirman Party'),		
(140,'Bharat Peoples Sena'),		
(141,'Bharat Rakshak Party (Democratic)'),
(142,'Bharat Rashtra Samithi'),		
(143,'Bharath Dharma Jana Sena'),	
(144,'Bharatha Chaitanya Yuvajana Party'),
(145,'Bharatheeya Jawan Kisan Party'),	
(146,'Bharathiya YuvaKula Dalam'),	
(147,'Bharatiya Aam Awam Party'),	
(148,'Bharatiya Asha Party'),		
(149,'Bharatiya Bahujan Congress'),	
(150,'Bharatiya Bahujan Samta Party'),	
(151,'Bharatiya Bikash Parishad'),	
(152,'Bharatiya Ekta Dal'),		
(153,'Bharatiya Gana Parishad'),	
(154,'Bharatiya Inqalab Party'),		
(155,'Bharatiya Jan Jagriti Party'),	
(156,'Bharatiya Jan Kranti Dal (Democratic)'),
(157,'Bharatiya Jan Morcha Party'),	
(158,'Bharatiya Janata Party'),		
(159,'Bharatiya Kisan Parivartan Party'),	
(160,'Bharatiya Liberal Party'),		
(161,'Bharatiya Lokshakti Party'),	
(162,'Bharatiya Lokvikas Party'),	
(163,'Bharatiya Majdoor Janta Party'),	
(164,'Bharatiya Momin Front'),		
(165,'Bharatiya Mulnivasi Aazad Party'),	
(166,'Bharatiya Nagrik Party'),		
(167,'Bharatiya National Janata Dal'),	
(168,'Bharatiya Nyay-Adhikar Raksha Party'),
(169,'Bharatiya Praja Aikyata Party'),	
(170,'Bharatiya Praja Surajya Paksha'),	
(171,'Bharatiya Prajagala Kalyana Paksha'),
(172,'Bharatiya Rashtriya Morcha'),	
(173,'Bharatiya Sampuran Krantikari Party'),
(174,'Bharatiya Yuva Jan Ekta Party'),	
(175,'Bharatrashtra Democratic Party'),	
(176,'Bhartiya Asmita Party'),		
(177,'Bhartiya Awam Party (Rastriya)'),	
(178,'Bhartiya Azad Sena'),		
(179,'Bhartiya Dalit Party'),		
(180,'Bhartiya Gandhiwadi Party'),	
(181,'Bhartiya Garib Vikas Kalyan Party'),	
(182,'Bhartiya Jan Adhikar Party'),	
(183,'Bhartiya Jan Nayak Party'),	
(184,'Bhartiya Jan Parishad'),		
(185,'Bhartiya Jan Samman Party'),	
(186,'Bhartiya Jan Samrat Party'),	
(187,'Bhartiya Jan Vikas Aaghadi'),	
(188,'Bhartiya Janta Secular Party'),	
(189,'Bhartiya Jantantra Morcha'),	
(190,'Bhartiya Kranti Vir Party'),	
(191,'Bhartiya Krishak Dal'),		
(192,'Bhartiya Lok Chetna Party'),	
(193,'Bhartiya Lok Nayak Party'),	
(194,'Bhartiya Lokmat Rashtrwadi Party'),	
(195,'Bhartiya Lokvani Party'),		
(196,'Bhartiya Mahasangh Party'),	
(197,'Bhartiya Manavta Party'),		
(198,'Bhartiya Navjawan Sena (Paksha)'),	
(199,'Bhartiya Panchsheel Party'),	
(200,'Bhartiya Panchyat Party'),	
(201,'Bhartiya Party'),		
(202,'Bhartiya Rashtriya Dal'),		
(203,'Bhartiya Rashtriya Ekta Dal'),	
(204,'Bhartiya Rashtriya Jansatta'),	
(205,'Bhartiya Sabka Dal'),		
(206,'Bhartiya Samajik Party'),		
(207,'Bhartiya Sarthak Party'),		
(208,'Bhartiya Sarvdharm Party'),	
(209,'Bhartiya Shakti Chetna Party'),	
(210,'Bhartiya Uday Nirman Party'),	
(211,'Bhartiya Veer Dal'),		
(212,'BhartiyaBahujanKranti Dal'),	
(213,'Bheem Tribal Congress'),		
(214,'Bhim Sena'),			
(215,'Bhrashtachar Mukti Morcha'),	
(216,'Bhumiputra United Party'),	
(217,'Biju Janata Dal'),		
(218,'Blue India Party'),		
(219,'Bodoland Peoples Front'),	
(220,'Buland Bharat Party'),		
(221,'Challengers Party'),		
(222,'Chennai Youth Party'),		
(223,'Chhatrapati Shivaji Bhartiya Garib Party'),
(224,'Chhattisgarh Vikas Ganga Rashtriya Party'),
(225,'Citizen Action Party-Sikkim'),	
(226,'Communist Party of India'),	
(227,'Communist Party of India  (Marxist)'),
(228,'Communist Party of India'),
(229,'Corruption Abolition Party'),	
(230,'Country Citizen Party'),		
(231,'Dalit Kranti Dal'),		
(232,'Dalit Soshit Pichhara Varg  Adhikar Dal'),
(233,'Dalita Bahujana Party'),		
(234,'Delhi Janta Party'),		
(235,'Democratic Bharatiya Samaj Party'),	
(236,'Democratic Progressive Azad Party'),
(237,'Democratic Socialist Party of India'),	
(238,'Desh Janhit Party'),		
(239,'Desh Prem Party'),		
(240,'Desiya Makkal Sakthi Katchi'),	
(241,'Desiya Murpokku Dravida Kazhagam'),
(242,'Dhanwan Bharat Party'),		
(243,'Dharma Samaj Party'),		
(244,'Dharmarajya Paksha'),		
(245,'Dhesiya Makkal Kazhagam'),	
(246,'Dhoom Sena'),			
(247,'Digvijaya Bharatha Party'),	
(248,'Dr. Ambedkar People Party'),	
(249,'Dr. Bhimrao Ambedkar Dal'),	
(250,'Dravida Munnetra Kazhagam'),	
(251,'Ekam Sanatan Bharat Dal'),	
(252,'Eklavya Samaj Party'),		
(253,'Gana Suraksha Party'),		
(254,'Ganasangam Party of India'),	
(255,'Gareeb Aadmi Party'),		
(256,'Garib Democratic Party'),		
(257,'Garib Kalyan Party'),		
(258,'Global Republican Party'),	
(259,'Gondvana Gantantra Party'),	
(260,'Gondwana Dandkaranya Party'),	
(261,'Gorkha Rashtriya Congress'),	
(262,'Gujarat Loktantra Party'),		
(263,'Gujarat Sarva Samaj Party'),	
(264,'Gunj Satya Ni Janata Party'),	
(265,'Guruchand Sena Dal'),		
(266,'Hamar Raj Party'),		
(267,'Hamara Sahara Party'),		
(268,'Hamara Sahi Vikalp Party'),	
(269,'Haryana Jansena Party'),		
(270,'Himachal Janta Party'),		
(271,'Hindrashtra Sangh'),		
(272,'Hindu Samaj Party'),		
(273,'Hindustan Janta Party'),		
(274,'Hindustan Janta Party Secular'),	
(275,'Hindustan Peoples Party (Democratic)'),
(276,'Hindustan Samaj Party'),		
(277,'Hindustan Shakti Sena'),		
(278,'Hindustan Vikas Dal'),		
(279,'Hindustani Awam Morcha (Secular)'),
(280,'Hindvi Swarajyay Dal'),		
(281,'Humanity for Peace Party'),	
(282,'Independent'),			
(283,'India Greens Party'),		
(284,'India Manus Party'),		
(285,'India Praja Bandhu Party'),	
(286,'Indian Believers Party (IBP)'),	
(287,'Indian Labour Party (Ambedkar Phule)'),
(288,'Indian Movement Party'),	
(289,'Indian National Congress'),	
(290,'Indian National League'),		
(291,'Indian National Lok Dal'),		
(292,'Indian National Socialistic Action Forces'),
(293,'Indian National Yuva Jana Party'),	
(294,'Indian Peoples Adhikar Party'),	
(295,'Indian Peoples Green Party'),	
(296,'Indian Praja Congress'),		
(297,'Indian Union Muslim League'),	
(298,'Indian Unity Centre'),		
(299,'Insaniyat Party'),		
(300,'Jaathia Chethi Vruthula Ikya Vedika Party'),
(301,'Jagrook Janta Party'),		
(302,'Jai Bharat National Party'),	
(303,'Jai Hind Congress Party'),		
(304,'Jai Hind National Party'),		
(305,'Jai Hind Party'),		
(306,'Jai Hindustan Party'),		
(307,'Jai Maha Bharath Party'),		
(308,'Jai Prakash Janata Dal'),		
(309,'Jai Samta Party'),		
(310,'Jai Sewalal Bahujan Vikas Party'),	
(311,'Jai Swaraj Party'),		
(312,'Jaibhim Rao Bharat Party'),	
(313,'Jamat-E-Seratul Mustakim'),	
(314,'Jammu & Kashmir National Conference'),
(315,'Jammu & Kashmir National Panthers Party (Bhim)'),
(316,'Jammu & Kashmir People Conference'),
(317,'Jammu & Kashmir Peoples Democratic Party'),
(318,'Jammu and Kashmir Apni Party'),	
(319,'Jammu and Kashmir Nationalist Peoples Front'),
(320,'Jan Janwadi Party'),		
(321,'Jan Raajya Party'),		
(322,'Jan Sangh Party'),		
(323,'Jan Sewa Driver Party'),		
(324,'Jan Sewak Kranti Party'),		
(325,'Jan Shakti Dal'),		
(326,'Jan Shakti Ekta Party'),		
(327,'Jana Sahayaka Sakthi'),		
(328,'Jana Shankhaaraavam Party'),	
(329,'Janahitha Paksha'),		
(330,'Janasena Party'),		
(331,'Janata Congress'),		
(332,'Janata Dal  (Secular)'),		
(333,'Janata Dal  (United)'),		
(334,'Janhit Kisan Party'),		
(335,'Janhit Sankalp Party'),		
(336,'Janlok Vikas Party'),		
(337,'Jannayak Janta Party'),		
(338,'Janseva Gondwana Party'),	
(339,'Janshakti Janta Dal'),		
(340,'Janshakti Samta Party'),		
(341,'Janta Darbar Party'),		
(342,'Janta Kranti Party'),		
(343,'Janta Kranti Party (Rashtravadi)'),	
(344,'Janta Raj Vikas Party'),		
(345,'Janta Samajwadi Party (Vivek Raj)'),	
(346,'Janta Samta Party'),		
(347,'Janta Shashan Party'),		
(348,'Jantantra Awaj Party'),		
(349,'Jatiya Jana Sena Party'),		
(350,'Jay Vidarbha Party'),		
(351,'Jebamani Janata'),		
(352,'Jharkhand Mukti Morcha'),	
(353,'Jharkhand Mukti Morcha  (Ulgulan)'),
(354,'Jharkhand Party'),		
(355,'Jharkhand Peoples Party'),	
(356,'Jindabad Kranti Party'),		
(357,'Justice Party'),			
(358,'Kalinga Sena'),			
(359,'Kamatapur Peopleâ€™s Party (United)'),
(360,'Kamera Samaj Party'),		
(361,'Kamgaar Kisan Party'),		
(362,'Kannada  Paksha'),		
(363,'Kannada Chalavali Vatal Paksha'),	
(364,'Karnataka Jantha Paksha'),	
(365,'Karnataka Karmikara Paksha'),	
(366,'Karnataka Praja Party (RaithaParva)'),
(367,'Karnataka Rashtra Samithi'),	
(368,'Karpoori Janta Dal'),		
(369,'Karunaadu Party'),		
(370,'Karunada Sevakara Party'),	
(371,'Kerala Congress'),		
(372,'Kerala Congress  (M)'),		
(373,'Kisan Kranti Dal'),		
(374,'Kisan Mazdoor Sangharsh Party'),	
(375,'Kisan Vishwa Party'),		
(376,'Kosal Janata Dal'),		
(377,'Kranti Janshakti Party'),		
(378,'Kranti Kari Jai Hind Sena'),	
(379,'Krupaa Party'),			
(380,'Kunbi Bahujan Sawrajya Party'),	
(381,'Liberation Congress Party'),	
(382,'Log Party'),			
(383,'Lok Jan Sangharsh Party'),	
(384,'Lok Janshakti Party(Ram Vilas)'),	
(385,'Lok Samaj Party'),		
(386,'Lok Sena Party'),		
(387,'Lok Sewa Dal'),		
(388,'Lok Swarajya Party'),		
(389,'Lokhit Adhikar Party'),		
(390,'Lokpriya Rashtrawadi Party'),	
(391,'Lokrajya Janata Party'),		
(392,'Lokshahi Ekta Party'),		
(393,'Loktantra Congress Party'),	
(394,'Loktantrik Janshakti Party'),	
(395,'Loktantrik Janta Dal'),		
(396,'Loktantrik Lok Rajyam Party'),	
(397,'Loktantrik Samajik Nyay Party'),	
(398,'Loktantrik Samajwadi Party'),	
(399,'Maa Telangana Party'),		
(400,'Madhya Pradesh Jan Vikas Party'),	
(401,'Mahanwadi Party'),		
(402,'Maharashtra Vikas Aghadi'),	
(403,'Mahathma Makkal Munnetra Kazhakam'),
(404,'Majdoor Kisan Union Party'),	
(405,'Majloom Samaj Party'),		
(406,'Makkal Nala Kazhagam'),		
(407,'Makkal Nalvaazhvuk Katchi'),	
(408,'Malwa Congress'),		
(409,'Mana Telangana Rashtra Samaikya Party'),
(410,'Manas Lokshakti Dal'),		
(411,'Manav Kranti Party'),		
(412,'Manav Samadhan Party'),	
(413,'Manavtawadi Samaj Party'),	
(414,'Mang Samaj Party'),		
(415,'Manviya Bharat Party'),		
(416,'Marumalarchi Dravida Munnetra Kazhagam'),
(417,'Marxist Communist Party of India (United)'),
(418,'Marxist Leninist Party of India (Red Flag)'),
(419,'Megh Desham Party'),		
(420,'Mera Adhikaar Rashtriya Dal'),	
(421,'Mera Bharat Mahan Party'),	
(422,'Minorities Democratic Party'),	
(423,'Mission All India Independent Justice Party'),
(424,'Mission Naya Digant Party'),	
(425,'Mithilanchal Mukti Morcha'),	
(426,'Mizo National Front'),		
(427,'Mizoram Peoples Conference'),	
(428,'Moolniwasi Samaj Party'),	
(429,'Most Backward Classes Of India'),	
(430,'Moulik Adhikar Party'),		
(431,'Mulnibasi Party of India'),	
(432,'Naadaalum Makkal Katchi'),	
(433,'Naam Indiar Party'),		
(434,'Naam Tamilar Katchi'),		
(435,'Naari Nar Rakshak Party'),	
(436,'Naba Bharata Nirmana Seva Party'),	
(437,'Naga Peoples Front'),		
(438,'Naki Bharatiya Ekta Party'),	
(439,'Nam India Naam Indiyar Katchi'),	
(440,'National Apni Party'),		
(441,'National Awami United Party'),	
(442,'National Black Panther Party'),	
(443,'National Future Party'),		
(444,'National Jan Dal'),		
(445,'National Janmandal Party'),	
(446,'National Loktantrik Party'),	
(447,'National Maha Sabha Party'),	
(448,'National Nava Kranthi Party'),	
(449,'National Party'),		
(450,'National Peoples Party'),		
(451,'National Republic Party Of India'),	
(452,'National World Leader Party'),	
(453,'National Youth Party'),		
(454,'Nationalist Congress Party'),	
(455,'Nationalist Congress Party â€“ Sharadchandra Pawar'),
(456,'Nationalist Democratic Progressive Party'),
(457,'Nationalist Justice Party'),	
(458,'Navabharath Sena'),		
(459,'Navarang Congress Party'),	
(460,'Navataram Party'),		
(461,'Navodayam Party'),		
(462,'Navsarjan Bharat Party'),		
(463,'Navyug Pragatisheel Morcha'),	
(464,'Neethi Nijayithi Party'),		
(465,'Netaji Subhash Chander Bose Rashtriya Azad Party'),
(466,'New Generation Peopleâ€™s Party'),
(467,'New India Party'),		
(468,'New India United Party'),		
(469,'New Labour Party'),		
(470,'New Rashtriya Samaj Party'),	
(471,'None of the Above'),		
(472,'North Bengal Peopleâ€™s Party'),	
(473,'Nyaydharmsabha'),		
(474,'Odisha Janata Party'),		
(475,'Pachchasi Parivartan Samaj Party'),	
(476,'Parcham Party of India'),		
(477,'Parivartan Party of India'),	
(478,'Parivartan Samaj Party'),		
(479,'Party for Democratic Socialism'),	
(480,'Paschimanchal Vikas Party'),	
(481,'Pattali Makkal Katchi'),		
(482,'Peace Party'),			
(483,'Pehchan Peopleâ€™s Party'),	
(484,'People Protection Party'),		
(485,'Peopleâ€™s Union Party'),	
(486,'Peoples Party of India (Democratic)'),
(487,'Peoples Party of India(secular)'),	
(488,'Pichhara Samaj Party United'),	
(489,'Political Justice Party'),		
(490,'Prabal Bharat Party'),		
(491,'Prabuddha Republican Party'),	
(492,'Prabuddhwadi Bahujan Morcha'),	
(493,'Pragatisheel Magahi Samaj'),	
(494,'Pragatisheel Manav Samaj Party'),	
(495,'Pragatisheel Samaj Party'),	
(496,'Prahar Janshakti Party'),		
(497,'Praja Ektha Party'),		
(498,'Praja Prasthanam Party'),		
(499,'Praja Shanthi Party'),		
(500,'Praja Velugu Party'),		
(501,'Prajarajya Samithi'),		
(502,'Prajatantra Aadhar Party'),	
(503,'Prajavani  Party'),		
(504,'Prithviraj Janshakti Party'),	
(505,'Proutist Bloc, India'),		
(506,'Proutist Sarva Samaj'),		
(507,'Public Adhikar Socialist Indian Party'),
(508,'Public Political Party'),		
(509,'Punjab National Party'),		
(510,'Punnagai Desam Party'),		
(511,'Purvanchal Mahapanchayat'),	
(512,'Puthiya Makkal Tamil Desam Katchi'),
(513,'Pyramid Party of India'),		
(514,'Radical Party of India (Ambedkarist)'),
(515,'Raita Bharat Party'),		
(516,'Rajasthan Raj Party'),		
(517,'Rani Chennamma Party'),		
(518,'Rashtra Dharak Dal'),		
(519,'Rashtra Nirman Party'),		
(520,'Rashtra Samanya Praja Party'),	
(521,'Rashtra Samarpan Party'),	
(522,'Rashtra Sewa Dal'),		
(523,'Rashtra Uday Party'),		
(524,'Rashtravadi Bharat Party'),	
(525,'Rashtravadi Loktantrik Party (India)'),
(526,'Rashtrawadi Chetna Party'),	
(527,'Rashtrawadi Janlok Party (Satya)'),	
(528,'Rashtriy Bahujan Party'),		
(529,'Rashtriya Congress(J) Party'),	
(530,'Rashtriya Devbhumi Party'),	
(531,'Rashtriya Garib Dal'),		
(532,'Rashtriya Gondvana Party'),	
(533,'Rashtriya Hind Ekta Dal'),		
(534,'Rashtriya Jan Awaz Party'),	
(535,'Rashtriya Jan Jan Party'),		
(536,'Rashtriya Jan Kalyan Party Secular'),	
(537,'Rashtriya Jan Karmath Party'),	
(538,'Rashtriya Jan Utkarsh Party'),	
(539,'Rashtriya Janata Dal'),		
(540,'Rashtriya Janhit Sangharsh Party'),	
(541,'Rashtriya Jankranti Party'),	
(542,'Rashtriya Janmanch (Secular)'),	
(543,'Rashtriya Janmorcha'),		
(544,'Rashtriya Jansabha Party'),	
(545,'Rashtriya Jansambhavna Party'),	
(546,'Rashtriya Jansanchar Dal'),	
(547,'Rashtriya Jansangharsh Swaraj Party'),
(548,'Rashtriya Jansena Party'),	
(549,'Rashtriya Janshakti Party (Secular)'),
(550,'Rashtriya Janshakti Party(Eklavya)'),	
(551,'Rashtriya Janshakti Samaj Party'),	
(552,'Rashtriya Janta Party'),		
(553,'Rashtriya Jantantrik Bharat Vikas Party'),
(554,'Rashtriya Janutthan Party'),	
(555,'Rashtriya Jatigat Aarakshan Virodhi Party'),
(556,'Rashtriya Kisan Bahujan Party'),	
(557,'Rashtriya Lok Dal'),		
(558,'Rashtriya Lok Morcha'),		
(559,'Rashtriya Lokswaraj Party'),	
(560,'Rashtriya Loktantrik Party'),	
(561,'Rashtriya Mahaswaraj Bhumi Party'),
(562,'Rashtriya Manav Party'),		
(563,'Rashtriya Mangalam Party'),	
(564,'Rashtriya Maratha Party'),	
(565,'Rashtriya Mazdoor Ekta Party'),	
(566,'Rashtriya Narayanwadi Vikas Party'),
(567,'Rashtriya Power Party'),		
(568,'Rashtriya Praja Congress  (Secular)'),
(569,'Rashtriya Rashtrawadi Party'),	
(570,'Rashtriya Republican Party'),	
(571,'Rashtriya Samaj Dal (R)'),		
(572,'Rashtriya Samaj Paksha'),		
(573,'Rashtriya Samanta Dal'),		
(574,'Rashtriya Samta Vikas Party'),	
(575,'Rashtriya Sanatan Party'),	
(576,'Rashtriya Sanskriti Party'),	
(577,'Rashtriya Sant Sandesh Party'),	
(578,'Rashtriya Sawarn Dal'),		
(579,'Rashtriya Secular Majlis Party'),	
(580,'Rashtriya Shoshit Samaj Party'),	
(581,'Rashtriya Suraksha Party'),	
(582,'Rashtriya Ulama Council'),	
(583,'Rashtriya Uttarakhand Party'),	
(584,'Rashtriya Vikalp Party'),		
(585,'Rashtriya Vikas Party'),		
(586,'Rastriya Atal Janta Party'),	
(587,'Rayalaseema Rashtra Samithi'),	
(588,'Republican Bahujan Sena'),	
(589,'Republican Party of India'),	
(590,'Republican Party of India  (Sivaraj)'),
(591,'Republican Party of India (A)'),	
(592,'Republican Party of India (Athawale)'),
(593,'Republican Party of India (Karnataka)'),
(594,'Republican Party of India (Social)'),	
(595,'Republican Party of India Bharatha'),
(596,'Republican Sena'),		
(597,'Revolutionary Goans Party'),	
(598,'Revolutionary Socialist Party'),	
(599,'Right to Recall Party'),		
(600,'Rishivadi Karm Sheel Young Parmarthi Party'),
(601,'Saath Sahakar Vikas Party'),	
(602,'Sabhi Jan Party'),		
(603,'Sabse Achchhi Party'),		
(604,'Sacho Sach Party'),		
(605,'Sainik Samaj Party'),		
(606,'Sajag Samaj Party'),		
(607,'Sakala Janula Party'),		
(608,'Samaj Bhalai Morcha'),		
(609,'Samaj Parivartan Party'),		
(610,'Samaj Shakti Party'),		
(611,'Samaj Vikas Kranti Party'),	
(612,'Samajhdar Party'),		
(613,'Samajik Sangharsh Party'),	
(614,'Samajwadi Jan Parishad'),	
(615,'Samajwadi Janata Party(Karnataka)'),
(616,'Samajwadi Lok Parishad'),	
(617,'Samajwadi Party'),		
(618,'Saman Adhikar Party'),		
(619,'Samaniya Makkal Nala Katchi'),	
(620,'Samata Party'),		
(621,'Samata Samadhan Party'),	
(622,'Samnak Janta Party'),		
(623,'Sampoorna Bharat Kranti Party'),	
(624,'Samrat Mihir Bhoj Samaj Party'),	
(625,'Samruddha Odisha'),		
(626,'Samst Samaj Party'),		
(627,'Samyak Party'),		
(628,'Sanatan Sanskriti Raksha Dal'),	
(629,'Sanjhi Virasat Party'),		
(630,'Sankhyanupati Bhagidari Party'),	
(631,'Sanman Rajkiya Paksha'),		
(632,'Sanyogwadi Party'),		
(633,'Sanyukt Bharat Paksh'),		
(634,'Sanyukt Kisan Vikas Party'),	
(635,'Sapaks Party'),			
(636,'Sardar Patel Siddhant Party'),	
(637,'Sardar Vallabhbhai Patel Party'),	
(638,'Sarv Adi Dal'),			
(639,'Sarv Samaj Party'),		
(640,'Sarva Janata Party'),		
(641,'Sarva Samaj Janata Party'),	
(642,'Sarvar Party'),			
(643,'Sarvjan Awaz Party'),		
(644,'Sarvjan Lok Shakti Party'),	
(645,'Sarvjan Samta Party'),		
(646,'Sarvlokhit Samaj Party'),		
(647,'Sathi Aur Aapka Faisala Party'),	
(648,'Satya Bahumat Party'),		
(649,'Satyawadi Rakshak Party'),	
(650,'Secular Democratic Congress'),	
(651,'Sehajdhari Sikh Party'),		
(652,'Shakti Sena (Bharat Desh)'),	
(653,'Shiromani Akali Dal'),		
(654,'Shiromani Akali Dal'),
(655,'Shiromani Lok Dal Party'),	
(656,'Shiv Sena'),			
(657,'Shiv Sena (Uddhav Balasaheb Thackrey)'),
(658,'Shoshit Samaj Dal'),		
(659,'Sikkim Democratic Front'),	
(660,'Sikkim Krantikari Morcha'),	
(661,'Sikkim Republican Party'),	
(662,'Smart Indians Party'),		
(663,'Social Democratic Party Of India'),	
(664,'Social Justice Party of India'),	
(665,'Socialist Party (India)'),		
(666,'Socialist Unity Centre Of India (COMMUNIST)'),
(667,'Spashtwadi Jan Aadhar Party'),	
(668,'Subhashwadi Bhartiya Samajwadi Party'),
(669,'Suheldev Bharatiya Samaj Party'),	
(670,'Sunahara Bharat Party'),		
(671,'Sunder Samaj Party'),		
(672,'Super Power India Party'),	
(673,'Supreme Zero Party of Bharat'),	
(674,'Swabhimani Paksha'),		
(675,'Swaraj Bhartiya Nyay Party'),	
(676,'Swaraj Kranti Party'),		
(677,'Swarajya Sena (Maharashtra)'),	
(678,'Swarajya Shakti Sena'),		
(679,'Swatantra Jantaraj Party'),	
(680,'Swatantra Kisan Party'),		
(681,'Swatantrata Abhivyakti Party'),	
(682,'Swayam Shashan Party'),		
(683,'Tamil Maanila Congress  (Moopanar)'),
(684,'Tamil Manila Murpokku Dravida Kazhagam'),
(685,'Tamilaga Makkal Nala Katchi'),	
(686,'Tamilaga Makkal Thannurimai Katchi'),
(687,'Tamilar Makkal Katchi'),		
(688,'Tamilnadu Makkal Nalvazhvu Periyakkam'),
(689,'Tamizhaga Murpokku Makkal Katchi'),
(690,'Telangana Jaghir Party'),		
(691,'Telangana Praja Shakthi Party'),	
(692,'Telangana Prajaa Jeevana Rythu Party'),
(693,'Telangana Rajya Samithi'),	
(694,'Telangana Rashtra Punahnirmana Samithi'),
(695,'Telangana Republican Party'),	
(696,'Telangana Sakalajanula Party'),	
(697,'Telugu Congress Party'),		
(698,'Telugu Desam'),		
(699,'Telugu Nava Garjana Party'),	
(700,'Telugu Rajadhikara Samiti Party'),	
(701,'Thakkam Katchi'),		
(702,'The Agrani Party'),		
(703,'The National Road Map Party of India'),
(704,'Tipu Sultan Party'),		
(705,'Twenty 20 Party'),		
(706,'Ulzaipali Makkal Katchy'),		
(707,'Ummeed Party of India'),		
(708,'United Democratic Party'),	
(709,'United Peopleâ€™s Party, Liberal'),	
(710,'United Republican Party of India'),	
(711,'Utkal Samaj'),			
(712,'Uttama Prajaakeeya Party'),	
(713,'Uttar Pradesh Republican Party'),	
(714,'Uttarakhand Kranti Dal'),		
(715,'Uttarakhand Parivartan Party'),	
(716,'Uttarakhand Samanta Party'),	
(717,'Vanchit Bahujan  Aaghadi'),	
(718,'Vanchitsamaj Insaaf Party'),	
(719,'Veerath'),
(720,'Vidarbha Rajya Aghadi'),		
(721,'Vidhyarthula Rajakiya Party'),	
(722,'Vidiyalai Thedum Indhiyargal Party'),
(723,'Viduthalai Chiruthaigal Katchi'),	
(724,'Viduthalai Kalam Katchi'),		
(725,'Vikas India Party'),		
(726,'Vikas Insaf Party'),		
(727,'Vikassheel Insaan Party'),		
(728,'Viro Ke Vir Indian Party'),		
(729,'Vishal Janta Party'),		
(730,'Vishva Shakti Party'),		
(731,'Vishwa Kalyan Rashtriya Manav Samaj Party'),
(732,'Voice of the People Party'),	
(733,'Voters Independent Party'),	
(734,'Voters Party  International'),	
(735,'Wazib Adhikar Party'),		
(736,'Welfare Party Of India'),		
(737,'Young Star Empowerment Party'),	
(738,'Youth India Peace Party'),	
(739,'Yuga Thulasi Party'),		
(740,'Yuva Bihar Sena'),		
(741,'Yuva Krantikari Party'),		
(742,'Yuva Taram Party'),		
(743,'Yuva Vikas Party'),		
(744,'Yuvajana Sramika Rythu Congress Party'),
(745,'Zoram Peopleâ€™s Movement');	
select * from Party;
-- Inserting data into Results table
describe Result;
insert into Result(Result_ID, Result,Constituency_ID) values 
(1,'Won',1),	
(2,'Lost',1),	
(3,'Lost',1),	
(4,'Lost',1),	
(5,'Lost',1),	
(6,'Lost',1),	
(7,'Lost',1),	
(8,'Lost',1),	
(9,'Lost',1),	
(10,'Lost',1),	
(11,'Lost',1),	
(12,'Lost',1),	
(13,'Lost',1),	
(14,'Won',2),	
(15,'Lost',2),	
(16,'Lost',2),	
(17,'Lost',2),	
(18,'Lost',2),	
(19,'Lost',2),	
(20,'Lost',2),	
(21,'Lost',2),	
(22,'Lost',2),	
(23,'Lost',2),	
(24,'Lost',2),	
(25,'Lost',2),	
(26,'Lost',2),	
(27,'Lost',2),	
(28,'Lost',2),	
(29,'Lost',2),	
(30,'Won',3),	
(31,'Lost',3),	
(32,'Lost',3),	
(33,'Lost',3),	
(34,'Lost',3),	
(35,'Lost',3),	
(36,'Lost',3),	
(37,'Lost',3),	
(38,'Lost',3),	
(39,'Lost',3),	
(40,'Lost',3),	
(41,'Lost',3),	
(42,'Lost',3),	
(43,'Lost',3),	
(44,'Lost',3),	
(45,'Lost',3),	
(46,'Won',4),	
(47,'Lost',4),	
(48,'Lost',4),	
(49,'Lost',4),	
(50,'Lost',4),	
(51,'Lost',4),	
(52,'Lost',4),	
(53,'Lost',4),	
(54,'Lost',4),	
(55,'Lost',4),	
(56,'Lost',4),	
(57,'Lost',4),	
(58,'Lost',4),	
(59,'Lost',4),	
(60,'Lost',4),	
(61,'Lost',4),	
(62,'Lost',4),	
(63,'Lost',4),	
(64,'Lost',4),	
(65,'Lost',4),	
(66,'Lost',4),	
(67,'Lost',4),	
(68,'Won',5),	
(69,'Lost',5),	
(70,'Lost',5),	
(71,'Lost',5),	
(72,'Lost',5),	
(73,'Lost',5),	
(74,'Lost',5),	
(75,'Lost',5),	
(76,'Lost',5),	
(77,'Lost',5),	
(78,'Lost',5),	
(79,'Lost',5),	
(80,'Lost',5),	
(81,'Lost',5),	
(82,'Won',6),	
(83,'Lost',6),	
(84,'Lost',6),	
(85,'Lost',6),	
(86,'Lost',6),	
(87,'Lost',6),	
(88,'Lost',6),	
(89,'Lost',6),	
(90,'Lost',6),	
(91,'Lost',6),	
(92,'Lost',6),	
(93,'Lost',6),	
(94,'Lost',6),	
(95,'Lost',6),	
(96,'Lost',6),	
(97,'Lost',6),	
(98,'Won',7),	
(99,'Lost',7),	
(100,'Lost',7),	
(101,'Lost',7),	
(102,'Lost',7),	
(103,'Lost',7),	
(104,'Lost',7),	
(105,'Lost',7),	
(106,'Lost',7),	
(107,'Lost',7),	
(108,'Lost',7),	
(109,'Lost',7),	
(110,'Lost',7),	
(111,'Lost',7),	
(112,'Lost',7),	
(113,'Lost',7),	
(114,'Lost',7),	
(115,'Lost',7),	
(116,'Lost',7),	
(117,'Lost',7),	
(118,'Won',8),	
(119,'Lost',8),	
(120,'Lost',8),	
(121,'Lost',8),	
(122,'Lost',8),	
(123,'Lost',8),	
(124,'Lost',8),	
(125,'Lost',8),	
(126,'Lost',8),	
(127,'Lost',8),	
(128,'Lost',8),	
(129,'Lost',8),	
(130,'Lost',8),	
(131,'Lost',8),	
(132,'Won',9),	
(133,'Lost',9),	
(134,'Lost',9),	
(135,'Lost',9),	
(136,'Lost',9),	
(137,'Lost',9),	
(138,'Lost',9),	
(139,'Lost',9),	
(140,'Lost',9),	
(141,'Lost',9),	
(142,'Lost',9),	
(143,'Lost',9),	
(144,'Lost',9),	
(145,'Lost',9),	
(146,'Lost',9),	
(147,'Lost',9),	
(148,'Lost',9),	
(149,'Lost',9),	
(150,'Lost',9),	
(151,'Lost',9),	
(152,'Lost',9),	
(153,'Lost',9),	
(154,'Lost',9),	
(155,'Lost',9),	
(156,'Lost',9),	
(157,'Lost',9),	
(158,'Lost',9),	
(159,'Lost',9),	
(160,'Lost',9),	
(161,'Lost',9),	
(162,'Lost',9),	
(163,'Won',10),	
(164,'Lost',10),	
(165,'Lost',10),	
(166,'Lost',10),	
(167,'Lost',10),	
(168,'Lost',10),	
(169,'Lost',10),	
(170,'Lost',10),	
(171,'Lost',10),	
(172,'Lost',10),	
(173,'Lost',10),	
(174,'Lost',10),	
(175,'Lost',10),	
(176,'Lost',10),	
(177,'Won',11),	
(178,'Lost',11),	
(179,'Lost',11),	
(180,'Lost',11),	
(181,'Lost',11),	
(182,'Lost',11),	
(183,'Lost',11),	
(184,'Lost',11),	
(185,'Lost',11),	
(186,'Lost',11),	
(187,'Lost',11),	
(188,'Lost',11),	
(189,'Lost',11),	
(190,'Lost',11),	
(191,'Lost',11),	
(192,'Won',12),	
(193,'Lost',12),	
(194,'Lost',12),	
(195,'Lost',12),	
(196,'Lost',12),	
(197,'Lost',12),	
(198,'Lost',12),	
(199,'Lost',12),	
(200,'Lost',12),	
(201,'Lost',12),	
(202,'Lost',12),	
(203,'Lost',12),	
(204,'Lost',12),	
(205,'Lost',12),	
(206,'Lost',12),	
(207,'Lost',12),	
(208,'Won',13),	
(209,'Lost',13),	
(210,'Lost',13),	
(211,'Lost',13),	
(212,'Lost',13),	
(213,'Lost',13),	
(214,'Lost',13),	
(215,'Lost',13),	
(216,'Lost',13),	
(217,'Lost',13),	
(218,'Lost',13),	
(219,'Lost',13),	
(220,'Lost',13),	
(221,'Lost',13),	
(222,'Lost',13),	
(223,'Lost',13),	
(224,'Lost',13),	
(225,'Lost',13),	
(226,'Lost',13),	
(227,'Lost',13),	
(228,'Won',14),	
(229,'Lost',14),	
(230,'Lost',14),	
(231,'Lost',14),	
(232,'Lost',14),	
(233,'Lost',14),	
(234,'Lost',14),	
(235,'Lost',14),	
(236,'Lost',14),	
(237,'Lost',14),	
(238,'Lost',14),	
(239,'Lost',14),	
(240,'Lost',14),	
(241,'Lost',14),	
(242,'Lost',14),	
(243,'Lost',14),	
(244,'Won',15),	
(245,'Lost',15),	
(246,'Lost',15),	
(247,'Lost',15),	
(248,'Lost',15),	
(249,'Lost',15),	
(250,'Lost',15),	
(251,'Lost',15),	
(252,'Lost',15),	
(253,'Lost',15),	
(254,'Lost',15),	
(255,'Lost',15),	
(256,'Lost',15),	
(257,'Lost',15),	
(258,'Lost',15),	
(259,'Lost',15),	
(260,'Lost',15),	
(261,'Lost',15),	
(262,'Lost',15),	
(263,'Lost',15),	
(264,'Lost',15),	
(265,'Lost',15),	
(266,'Lost',15),	
(267,'Lost',15),	
(268,'Lost',15),	
(269,'Lost',15),	
(270,'Lost',15),	
(271,'Lost',15),	
(272,'Lost',15),	
(273,'Lost',15),	
(274,'Lost',15),	
(275,'Lost',15),	
(276,'Won',16),	
(277,'Lost',16),	
(278,'Lost',16),	
(279,'Lost',16),	
(280,'Lost',16),	
(281,'Lost',16),	
(282,'Lost',16),	
(283,'Lost',16),	
(284,'Lost',16),	
(285,'Lost',16),	
(286,'Lost',16),	
(287,'Lost',16),	
(288,'Lost',16),	
(289,'Lost',16),	
(290,'Lost',16),	
(291,'Lost',16),	
(292,'Lost',16),	
(293,'Lost',16),	
(294,'Lost',16),	
(295,'Lost',16),	
(296,'Lost',16),	
(297,'Lost',16),	
(298,'Won',17),	
(299,'Lost',17),	
(300,'Lost',17),	
(301,'Lost',17),	
(302,'Lost',17),	
(303,'Lost',17),	
(304,'Lost',17),	
(305,'Lost',17),	
(306,'Lost',17),	
(307,'Lost',17),	
(308,'Lost',17),	
(309,'Lost',17),	
(310,'Lost',17),	
(311,'Lost',17),	
(312,'Lost',17),	
(313,'Lost',17),	
(314,'Won',18),	
(315,'Lost',18),	
(316,'Lost',18),	
(317,'Lost',18),	
(318,'Lost',18),	
(319,'Lost',18),	
(320,'Lost',18),	
(321,'Lost',18),	
(322,'Lost',18),	
(323,'Lost',18),	
(324,'Lost',18),	
(325,'Lost',18),	
(326,'Lost',18),	
(327,'Lost',18),	
(328,'Lost',18),	
(329,'Won',19),	
(330,'Lost',19),	
(331,'Lost',19),	
(332,'Lost',19),	
(333,'Lost',19),	
(334,'Lost',19),	
(335,'Lost',19),	
(336,'Lost',19),	
(337,'Lost',19),	
(338,'Lost',19),	
(339,'Lost',19),	
(340,'Lost',19),	
(341,'Lost',19),	
(342,'Lost',19),	
(343,'Lost',19),	
(344,'Lost',19),	
(345,'Lost',19),	
(346,'Lost',19),	
(347,'Lost',19),	
(348,'Lost',19),	
(349,'Lost',19),	
(350,'Lost',19),	
(351,'Lost',19),	
(352,'Lost',19),	
(353,'Lost',19),	
(354,'Lost',19),	
(355,'Won',20),	
(356,'Lost',20),	
(357,'Lost',20),	
(358,'Lost',20),	
(359,'Lost',20),	
(360,'Lost',20),	
(361,'Lost',20),	
(362,'Lost',20),	
(363,'Lost',20),	
(364,'Lost',20),	
(365,'Lost',20),	
(366,'Lost',20),	
(367,'Lost',20),	
(368,'Won',21),	
(369,'Lost',21),	
(370,'Lost',21),	
(371,'Lost',21),	
(372,'Lost',21),	
(373,'Lost',21),	
(374,'Lost',21),	
(375,'Lost',21),	
(376,'Lost',21),	
(377,'Lost',21),	
(378,'Lost',21),	
(379,'Lost',21),	
(380,'Lost',21),	
(381,'Lost',21),	
(382,'Lost',21),	
(383,'Lost',21),	
(384,'Lost',21),	
(385,'Lost',21),	
(386,'Lost',21),	
(387,'Won',22),	
(388,'Lost',22),	
(389,'Lost',22),	
(390,'Lost',22),	
(391,'Lost',22),	
(392,'Lost',22),	
(393,'Lost',22),	
(394,'Lost',22),	
(395,'Lost',22),	
(396,'Lost',22),	
(397,'Lost',22),	
(398,'Lost',22),	
(399,'Lost',22),	
(400,'Lost',22),	
(401,'Won',23),	
(402,'Lost',23),	
(403,'Lost',23),	
(404,'Lost',23),	
(405,'Lost',23),	
(406,'Lost',23),	
(407,'Lost',23),	
(408,'Lost',23),	
(409,'Lost',23),	
(410,'Lost',23),	
(411,'Lost',23),	
(412,'Lost',23),	
(413,'Lost',23),	
(414,'Lost',23),	
(415,'Lost',23),	
(416,'Lost',23),	
(417,'Lost',23),	
(418,'Lost',23),	
(419,'Lost',23),	
(420,'Lost',23),	
(421,'Lost',23),	
(422,'Lost',23),	
(423,'Lost',23),	
(424,'Lost',23),	
(425,'Won',24),	
(426,'Lost',24),	
(427,'Lost',24),	
(428,'Lost',24),	
(429,'Lost',24),	
(430,'Lost',24),	
(431,'Lost',24),	
(432,'Lost',24),	
(433,'Lost',24),	
(434,'Lost',24),	
(435,'Lost',24),	
(436,'Lost',24),	
(437,'Lost',24),	
(438,'Lost',24),	
(439,'Lost',24),	
(440,'Lost',24),	
(441,'Lost',24),	
(442,'Lost',24),	
(443,'Won',25),	
(444,'Lost',25),	
(445,'Lost',25),	
(446,'Lost',25),	
(447,'Lost',25),	
(448,'Lost',25),	
(449,'Lost',25),	
(450,'Lost',25),	
(451,'Lost',25),	
(452,'Lost',25),	
(453,'Lost',25),	
(454,'Lost',25),	
(455,'Lost',25),	
(456,'Lost',25),	
(457,'Lost',25),	
(458,'Lost',25),	
(459,'Lost',25),	
(460,'Lost',25),	
(461,'Lost',25),	
(462,'Lost',25),	
(463,'Lost',25),	
(464,'Lost',25),	
(465,'Lost',25),	
(466,'Lost',25),	
(467,'Lost',25),	
(468,'Lost',25),	
(469,'Lost',25),	
(470,'Lost',25),	
(471,'Lost',25),	
(472,'Lost',25),	
(473,'Lost',25),	
(474,'Lost',25),	
(475,'Lost',25),	
(476,'Lost',25),	
(477,'Won',26),	
(478,'Lost',26),	
(479,'Lost',26),	
(480,'Lost',26),	
(481,'Lost',26),	
(482,'Lost',26),	
(483,'Lost',26),	
(484,'Lost',26),	
(485,'Lost',26),	
(486,'Lost',26),	
(487,'Lost',26),	
(488,'Lost',26),	
(489,'Lost',26),	
(490,'Lost',26),	
(491,'Lost',26),	
(492,'Lost',26),	
(493,'Won',27),	
(494,'Lost',27),	
(495,'Lost',27),	
(496,'Lost',27),	
(497,'Lost',27),	
(498,'Lost',27),	
(499,'Lost',27),	
(500,'Won',28),	
(501,'Lost',28),	
(502,'Lost',28),	
(503,'Lost',28),	
(504,'Lost',28),	
(505,'Lost',28),	
(506,'Lost',28),	
(507,'Lost',28),	
(508,'Lost',28),	
(509,'Won',29),	
(510,'Lost',29),	
(511,'Lost',29),	
(512,'Lost',29),	
(513,'Lost',29),	
(514,'Lost',29),	
(515,'Lost',29),	
(516,'Lost',29),	
(517,'Lost',29),	
(518,'Lost',29),	
(519,'Lost',29),	
(520,'Lost',29),	
(521,'Lost',29),	
(522,'Lost',29),	
(523,'Lost',29),	
(524,'Won',30),	
(525,'Lost',30),	
(526,'Lost',30),	
(527,'Lost',30),	
(528,'Lost',30),	
(529,'Lost',30),	
(530,'Lost',30),	
(531,'Lost',30),	
(532,'Lost',30),	
(533,'Lost',30),	
(534,'Lost',30),	
(535,'Lost',30),	
(536,'Won',31),	
(537,'Lost',31),	
(538,'Lost',31),	
(539,'Lost',31),	
(540,'Lost',31),	
(541,'Lost',31),	
(542,'Lost',31),	
(543,'Lost',31),	
(544,'Lost',31),	
(545,'Lost',31),	
(546,'Lost',31),	
(547,'Lost',31),	
(548,'Lost',31),	
(549,'Lost',31),	
(550,'Won',32),	
(551,'Lost',32),	
(552,'Lost',32),	
(553,'Lost',32),	
(554,'Won',33),	
(555,'Lost',33),	
(556,'Lost',33),	
(557,'Lost',33),	
(558,'Lost',33),	
(559,'Lost',33),	
(560,'Won',34),	
(561,'Lost',34),	
(562,'Lost',34),	
(563,'Lost',34),	
(564,'Lost',34),	
(565,'Lost',34),	
(566,'Lost',34),	
(567,'Lost',34),	
(568,'Lost',34),	
(569,'Won',35),	
(570,'Lost',35),	
(571,'Lost',35),	
(572,'Lost',35),	
(573,'Lost',35),	
(574,'Won',36),	
(575,'Lost',36),	
(576,'Lost',36),	
(577,'Lost',36),	
(578,'Lost',36),	
(579,'Lost',36),	
(580,'Lost',36),	
(581,'Lost',36),	
(582,'Lost',36),	
(583,'Lost',36),	
(584,'Lost',36),	
(585,'Lost',36),	
(586,'Lost',36),	
(587,'Lost',36),	
(588,'Lost',36),	
(589,'Lost',36),	
(590,'Lost',36),	
(591,'Lost',36),	
(592,'Lost',36),	
(593,'Lost',36),	
(594,'Lost',36),	
(595,'Lost',36),	
(596,'Lost',36),	
(597,'Lost',36),	
(598,'Lost',36),	
(599,'Won',37),	
(600,'Lost',37),	
(601,'Lost',37),	
(602,'Lost',37),	
(603,'Lost',37),	
(604,'Lost',37),	
(605,'Lost',37),	
(606,'Lost',37),	
(607,'Lost',37),	
(608,'Lost',37),	
(609,'Lost',37),	
(610,'Lost',37),	
(611,'Won',38),	
(612,'Lost',38),	
(613,'Lost',38),	
(614,'Lost',38),	
(615,'Lost',38),	
(616,'Lost',38),	
(617,'Lost',38),	
(618,'Lost',38),	
(619,'Lost',38),	
(620,'Lost',38),	
(621,'Lost',38),	
(622,'Lost',38),	
(623,'Lost',38),	
(624,'Won',39),	
(625,'Lost',39),	
(626,'Lost',39),	
(627,'Lost',39),	
(628,'Lost',39),	
(629,'Lost',39),	
(630,'Lost',39),	
(631,'Lost',39),	
(632,'Lost',39),	
(633,'Lost',39),	
(634,'Won',40),	
(635,'Lost',40),	
(636,'Lost',40),	
(637,'Lost',40),	
(638,'Lost',40),	
(639,'Lost',40),	
(640,'Lost',40),	
(641,'Lost',40),	
(642,'Lost',40),	
(643,'Lost',40),	
(644,'Lost',40),	
(645,'Lost',40),	
(646,'Lost',40),	
(647,'Lost',40),	
(648,'Won',41),	
(649,'Lost',41),	
(650,'Lost',41),	
(651,'Lost',41),	
(652,'Lost',41),	
(653,'Lost',41),	
(654,'Lost',41),	
(655,'Lost',41),	
(656,'Lost',41),	
(657,'Won',42),	
(658,'Lost',42),	
(659,'Lost',42),	
(660,'Lost',42),	
(661,'Lost',42),	
(662,'Lost',42),	
(663,'Lost',42),	
(664,'Lost',42),	
(665,'Lost',42),	
(666,'Won',43),	
(667,'Lost',43),	
(668,'Lost',43),	
(669,'Lost',43),	
(670,'Lost',43),	
(671,'Lost',43),	
(672,'Lost',43),	
(673,'Lost',43),	
(674,'Lost',43),	
(675,'Lost',43),	
(676,'Won',44),	
(677,'Lost',44),	
(678,'Lost',44),	
(679,'Lost',44),	
(680,'Lost',44),	
(681,'Lost',44),	
(682,'Lost',44),	
(683,'Lost',44),	
(684,'Lost',44),	
(685,'Lost',44),	
(686,'Lost',44),	
(687,'Lost',44),	
(688,'Lost',44),	
(689,'Lost',44),	
(690,'Lost',44),	
(691,'Won',45),	
(692,'Won',240),	
(693,'Lost',45),	
(694,'Lost',240),	
(695,'Lost',45),	
(696,'Lost',240),	
(697,'Lost',45),	
(698,'Lost',240),	
(699,'Lost',45),	
(700,'Lost',240),	
(701,'Lost',45),	
(702,'Lost',240),	
(703,'Lost',45),	
(704,'Lost',240),	
(705,'Lost',45),	
(706,'Lost',240),	
(707,'Lost',45),	
(708,'Lost',240),	
(709,'Lost',45),	
(710,'Lost',240),	
(711,'Won',46),	
(712,'Lost',46),	
(713,'Lost',46),	
(714,'Lost',46),	
(715,'Lost',46),	
(716,'Lost',46),	
(717,'Lost',46),	
(718,'Lost',46),	
(719,'Lost',46),	
(720,'Lost',46),	
(721,'Lost',46),	
(722,'Won',47),	
(723,'Lost',47),	
(724,'Lost',47),	
(725,'Lost',47),	
(726,'Lost',47),	
(727,'Lost',47),	
(728,'Lost',47),	
(729,'Lost',47),	
(730,'Lost',47),	
(731,'Lost',47),	
(732,'Lost',47),	
(733,'Won',48),	
(734,'Lost',48),	
(735,'Lost',48),	
(736,'Lost',48),	
(737,'Lost',48),	
(738,'Lost',48),	
(739,'Lost',48),	
(740,'Lost',48),	
(741,'Lost',48),	
(742,'Lost',48),	
(743,'Lost',48),	
(744,'Lost',48),	
(745,'Lost',48),	
(746,'Won',49),	
(747,'Lost',49),	
(748,'Lost',49),	
(749,'Lost',49),	
(750,'Lost',49),	
(751,'Lost',49),	
(752,'Lost',49),	
(753,'Lost',49),	
(754,'Lost',49),	
(755,'Lost',49),	
(756,'Lost',49),	
(757,'Lost',49),	
(758,'Lost',49),	
(759,'Lost',49),	
(760,'Lost',49),	
(761,'Won',50),	
(762,'Lost',50),	
(763,'Lost',50),	
(764,'Lost',50),	
(765,'Lost',50),	
(766,'Lost',50),	
(767,'Lost',50),	
(768,'Lost',50),	
(769,'Lost',50),	
(770,'Won',51),	
(771,'Lost',51),	
(772,'Lost',51),	
(773,'Lost',51),	
(774,'Lost',51),	
(775,'Lost',51),	
(776,'Lost',51),	
(777,'Lost',51),	
(778,'Lost',51),	
(779,'Lost',51),	
(780,'Lost',51),	
(781,'Lost',51),	
(782,'Lost',51),	
(783,'Lost',51),	
(784,'Lost',51),	
(785,'Won',52),	
(786,'Lost',52),	
(787,'Lost',52),	
(788,'Lost',52),	
(789,'Lost',52),	
(790,'Lost',52),	
(791,'Lost',52),	
(792,'Lost',52),	
(793,'Lost',52),	
(794,'Lost',52),	
(795,'Lost',52),	
(796,'Lost',52),	
(797,'Won',53),	
(798,'Lost',53),	
(799,'Lost',53),	
(800,'Lost',53),	
(801,'Lost',53),	
(802,'Lost',53),	
(803,'Lost',53),	
(804,'Lost',53),	
(805,'Lost',53),	
(806,'Lost',53),	
(807,'Lost',53),	
(808,'Lost',53),	
(809,'Lost',53),	
(810,'Lost',53),	
(811,'Lost',53),	
(812,'Won',54),	
(813,'Lost',54),	
(814,'Lost',54),	
(815,'Lost',54),	
(816,'Lost',54),	
(817,'Lost',54),	
(818,'Lost',54),	
(819,'Lost',54),	
(820,'Lost',54),	
(821,'Lost',54),	
(822,'Lost',54),	
(823,'Lost',54),	
(824,'Lost',54),	
(825,'Lost',54),	
(826,'Lost',54),	
(827,'Lost',54),	
(828,'Won',55),	
(829,'Lost',55),	
(830,'Lost',55),	
(831,'Lost',55),	
(832,'Lost',55),	
(833,'Lost',55),	
(834,'Lost',55),	
(835,'Lost',55),	
(836,'Won',56),	
(837,'Lost',56),	
(838,'Lost',56),	
(839,'Lost',56),	
(840,'Lost',56),	
(841,'Lost',56),	
(842,'Lost',56),	
(843,'Lost',56),	
(844,'Lost',56),	
(845,'Lost',56),	
(846,'Lost',56),	
(847,'Won',57),	
(848,'Lost',57),	
(849,'Lost',57),	
(850,'Lost',57),	
(851,'Lost',57),	
(852,'Lost',57),	
(853,'Lost',57),	
(854,'Lost',57),	
(855,'Lost',57),	
(856,'Lost',57),	
(857,'Lost',57),	
(858,'Lost',57),	
(859,'Lost',57),	
(860,'Lost',57),	
(861,'Won',58),	
(862,'Lost',58),	
(863,'Lost',58),	
(864,'Lost',58),	
(865,'Lost',58),	
(866,'Lost',58),	
(867,'Lost',58),	
(868,'Lost',58),	
(869,'Lost',58),	
(870,'Lost',58),	
(871,'Won',59),	
(872,'Lost',59),	
(873,'Lost',59),	
(874,'Lost',59),	
(875,'Lost',59),	
(876,'Lost',59),	
(877,'Lost',59),	
(878,'Lost',59),	
(879,'Lost',59),	
(880,'Lost',59),	
(881,'Lost',59),	
(882,'Lost',59),	
(883,'Lost',59),	
(884,'Won',60),	
(885,'Lost',60),	
(886,'Lost',60),	
(887,'Lost',60),	
(888,'Lost',60),	
(889,'Lost',60),	
(890,'Lost',60),	
(891,'Lost',60),	
(892,'Lost',60),	
(893,'Lost',60),	
(894,'Lost',60),	
(895,'Lost',60),	
(896,'Lost',60),	
(897,'Won',61),	
(898,'Lost',61),	
(899,'Lost',61),	
(900,'Lost',61),	
(901,'Lost',61),	
(902,'Lost',61),	
(903,'Lost',61),	
(904,'Lost',61),	
(905,'Lost',61),	
(906,'Won',62),	
(907,'Lost',62),	
(908,'Lost',62),	
(909,'Lost',62),	
(910,'Lost',62),	
(911,'Lost',62),	
(912,'Lost',62),	
(913,'Lost',62),	
(914,'Lost',62),	
(915,'Lost',62),	
(916,'Lost',62),	
(917,'Lost',62),	
(918,'Lost',62),	
(919,'Won',63),	
(920,'Won',471),	
(921,'Lost',63),	
(922,'Lost',471),	
(923,'Lost',63),	
(924,'Lost',471),	
(925,'Lost',63),	
(926,'Lost',471),	
(927,'Lost',63),	
(928,'Lost',471),	
(929,'Lost',63),	
(930,'Lost',471),	
(931,'Won',64),	
(932,'Lost',64),	
(933,'Lost',64),	
(934,'Lost',64),	
(935,'Lost',64),	
(936,'Lost',64),	
(937,'Lost',64),	
(938,'Lost',64),	
(939,'Lost',64),	
(940,'Lost',64),	
(941,'Lost',64),	
(942,'Lost',64),	
(943,'Lost',64),	
(944,'Won',65),	
(945,'Lost',65),	
(946,'Lost',65),	
(947,'Lost',65),	
(948,'Lost',65),	
(949,'Lost',65),	
(950,'Lost',65),	
(951,'Lost',65),	
(952,'Lost',65),	
(953,'Lost',65),	
(954,'Lost',65),	
(955,'Lost',65),	
(956,'Lost',65),	
(957,'Lost',65),	
(958,'Lost',65),	
(959,'Lost',65),	
(960,'Lost',65),	
(961,'Lost',65),	
(962,'Lost',65),	
(963,'Lost',65),	
(964,'Lost',65),	
(965,'Lost',65),	
(966,'Lost',65),	
(967,'Lost',65),	
(968,'Lost',65),	
(969,'Lost',65),	
(970,'Lost',65),	
(971,'Won',66),	
(972,'Lost',66),	
(973,'Lost',66),	
(974,'Lost',66),	
(975,'Lost',66),	
(976,'Lost',66),	
(977,'Lost',66),	
(978,'Lost',66),	
(979,'Lost',66),	
(980,'Lost',66),	
(981,'Lost',66),	
(982,'Lost',66),	
(983,'Lost',66),	
(984,'Lost',66),	
(985,'Lost',66),	
(986,'Lost',66),	
(987,'Lost',66),	
(988,'Lost',66),	
(989,'Lost',66),	
(990,'Lost',66),	
(991,'Lost',66),	
(992,'Lost',66),	
(993,'Lost',66),	
(994,'Lost',66),	
(995,'Lost',66),	
(996,'Lost',66),	
(997,'Lost',66),	
(998,'Lost',66),	
(999,'Lost',66),	
(1000,'Lost',66),	
(1001,'Won',67),	
(1002,'Lost',67),	
(1003,'Lost',67),	
(1004,'Lost',67),	
(1005,'Lost',67),	
(1006,'Lost',67),	
(1007,'Lost',67),	
(1008,'Lost',67),	
(1009,'Lost',67),	
(1010,'Won',68),	
(1011,'Lost',68),	
(1012,'Lost',68),	
(1013,'Lost',68),	
(1014,'Lost',68),	
(1015,'Lost',68),	
(1016,'Lost',68),	
(1017,'Lost',68),	
(1018,'Lost',68),	
(1019,'Won',69),	
(1020,'Lost',69),	
(1021,'Lost',69),	
(1022,'Lost',69),	
(1023,'Lost',69),	
(1024,'Lost',69),	
(1025,'Lost',69),	
(1026,'Lost',69),	
(1027,'Lost',69),	
(1028,'Lost',69),	
(1029,'Lost',69),	
(1030,'Lost',69),	
(1031,'Lost',69),	
(1032,'Lost',69),	
(1033,'Lost',69),	
(1034,'Lost',69),	
(1035,'Lost',69),	
(1036,'Lost',69),	
(1037,'Lost',69),	
(1038,'Lost',69),	
(1039,'Lost',69),	
(1040,'Lost',69),	
(1041,'Lost',69),	
(1042,'Won',70),	
(1043,'Lost',70),	
(1044,'Lost',70),	
(1045,'Lost',70),	
(1046,'Lost',70),	
(1047,'Lost',70),	
(1048,'Lost',70),	
(1049,'Lost',70),	
(1050,'Lost',70),	
(1051,'Lost',70),	
(1052,'Lost',70),	
(1053,'Lost',70),	
(1054,'Lost',70),	
(1055,'Lost',70),	
(1056,'Lost',70),	
(1057,'Lost',70),	
(1058,'Lost',70),	
(1059,'Lost',70),	
(1060,'Won',71),	
(1061,'Lost',71),	
(1062,'Lost',71),	
(1063,'Lost',71),	
(1064,'Lost',71),	
(1065,'Lost',71),	
(1066,'Lost',71),	
(1067,'Lost',71),	
(1068,'Won',72),	
(1069,'Lost',72),	
(1070,'Lost',72),	
(1071,'Lost',72),	
(1072,'Lost',72),	
(1073,'Lost',72),	
(1074,'Lost',72),	
(1075,'Lost',72),	
(1076,'Lost',72),	
(1077,'Lost',72),	
(1078,'Lost',72),	
(1079,'Lost',72),	
(1080,'Lost',72),	
(1081,'Won',73),	
(1082,'Lost',73),	
(1083,'Lost',73),	
(1084,'Lost',73),	
(1085,'Lost',73),	
(1086,'Lost',73),	
(1087,'Lost',73),	
(1088,'Lost',73),	
(1089,'Lost',73),	
(1090,'Lost',73),	
(1091,'Lost',73),	
(1092,'Lost',73),	
(1093,'Lost',73),	
(1094,'Won',74),	
(1095,'Lost',74),	
(1096,'Lost',74),	
(1097,'Lost',74),	
(1098,'Lost',74),	
(1099,'Lost',74),	
(1100,'Lost',74),	
(1101,'Lost',74),	
(1102,'Lost',74),	
(1103,'Lost',74),	
(1104,'Lost',74),	
(1105,'Lost',74),	
(1106,'Lost',74),	
(1107,'Lost',74),	
(1108,'Lost',74),	
(1109,'Won',75),	
(1110,'Lost',75),	
(1111,'Lost',75),	
(1112,'Lost',75),	
(1113,'Lost',75),	
(1114,'Lost',75),	
(1115,'Lost',75),	
(1116,'Lost',75),	
(1117,'Lost',75),	
(1118,'Lost',75),	
(1119,'Lost',75),	
(1120,'Won',76),	
(1121,'Lost',76),	
(1122,'Lost',76),	
(1123,'Lost',76),	
(1124,'Lost',76),	
(1125,'Lost',76),	
(1126,'Lost',76),	
(1127,'Lost',76),	
(1128,'Lost',76),	
(1129,'Lost',76),	
(1130,'Lost',76),	
(1131,'Lost',76),	
(1132,'Lost',76),	
(1133,'Won',77),	
(1134,'Lost',77),	
(1135,'Lost',77),	
(1136,'Lost',77),	
(1137,'Lost',77),	
(1138,'Lost',77),	
(1139,'Lost',77),	
(1140,'Lost',77),	
(1141,'Lost',77),	
(1142,'Lost',77),	
(1143,'Lost',77),	
(1144,'Lost',77),	
(1145,'Lost',77),	
(1146,'Lost',77),	
(1147,'Lost',77),	
(1148,'Won',78),	
(1149,'Lost',78),	
(1150,'Lost',78),	
(1151,'Lost',78),	
(1152,'Lost',78),	
(1153,'Lost',78),	
(1154,'Lost',78),	
(1155,'Lost',78),	
(1156,'Lost',78),	
(1157,'Lost',78),	
(1158,'Lost',78),	
(1159,'Lost',78),	
(1160,'Lost',78),	
(1161,'Lost',78),	
(1162,'Won',79),	
(1163,'Lost',79),	
(1164,'Lost',79),	
(1165,'Lost',79),	
(1166,'Lost',79),	
(1167,'Lost',79),	
(1168,'Lost',79),	
(1169,'Lost',79),	
(1170,'Lost',79),	
(1171,'Lost',79),	
(1172,'Lost',79),	
(1173,'Lost',79),	
(1174,'Lost',79),	
(1175,'Lost',79),	
(1176,'Lost',79),	
(1177,'Lost',79),	
(1178,'Won',80),	
(1179,'Lost',80),	
(1180,'Lost',80),	
(1181,'Lost',80),	
(1182,'Lost',80),	
(1183,'Lost',80),	
(1184,'Lost',80),	
(1185,'Lost',80),	
(1186,'Lost',80),	
(1187,'Lost',80),	
(1188,'Lost',80),	
(1189,'Lost',80),	
(1190,'Lost',80),	
(1191,'Lost',80),	
(1192,'Won',81),	
(1193,'Lost',81),	
(1194,'Lost',81),	
(1195,'Lost',81),	
(1196,'Lost',81),	
(1197,'Lost',81),	
(1198,'Lost',81),	
(1199,'Lost',81),	
(1200,'Lost',81),	
(1201,'Lost',81),	
(1202,'Lost',81),	
(1203,'Lost',81),	
(1204,'Lost',81),	
(1205,'Lost',81),	
(1206,'Lost',81),	
(1207,'Lost',81),	
(1208,'Won',82),	
(1209,'Lost',82),	
(1210,'Lost',82),	
(1211,'Lost',82),	
(1212,'Lost',82),	
(1213,'Lost',82),	
(1214,'Lost',82),	
(1215,'Lost',82),	
(1216,'Lost',82),	
(1217,'Lost',82),	
(1218,'Lost',82),	
(1219,'Won',83),	
(1220,'Lost',83),	
(1221,'Lost',83),	
(1222,'Lost',83),	
(1223,'Lost',83),	
(1224,'Lost',83),	
(1225,'Lost',83),	
(1226,'Lost',83),	
(1227,'Lost',83),	
(1228,'Lost',83),	
(1229,'Lost',83),	
(1230,'Lost',83),	
(1231,'Lost',83),	
(1232,'Lost',83),	
(1233,'Lost',83),	
(1234,'Lost',83),	
(1235,'Lost',83),	
(1236,'Lost',83),	
(1237,'Lost',83),	
(1238,'Lost',83),	
(1239,'Won',84),	
(1240,'Lost',84),	
(1241,'Lost',84),	
(1242,'Lost',84),	
(1243,'Lost',84),	
(1244,'Lost',84),	
(1245,'Lost',84),	
(1246,'Lost',84),	
(1247,'Lost',84),	
(1248,'Lost',84),	
(1249,'Lost',84),	
(1250,'Lost',84),	
(1251,'Won',85),	
(1252,'Lost',85),	
(1253,'Lost',85),	
(1254,'Lost',85),	
(1255,'Lost',85),	
(1256,'Lost',85),	
(1257,'Lost',85),	
(1258,'Lost',85),	
(1259,'Lost',85),	
(1260,'Lost',85),	
(1261,'Lost',85),	
(1262,'Lost',85),	
(1263,'Lost',85),	
(1264,'Lost',85),	
(1265,'Lost',85),	
(1266,'Lost',85),	
(1267,'Lost',85),	
(1268,'Lost',85),	
(1269,'Lost',85),	
(1270,'Lost',85),	
(1271,'Lost',85),	
(1272,'Lost',85),	
(1273,'Lost',85),	
(1274,'Lost',85),	
(1275,'Lost',85),	
(1276,'Lost',85),	
(1277,'Lost',85),	
(1278,'Lost',85),	
(1279,'Lost',85),	
(1280,'Lost',85),	
(1281,'Lost',85),	
(1282,'Lost',85),	
(1283,'Lost',85),	
(1284,'Lost',85),	
(1285,'Lost',85),	
(1286,'Lost',85),	
(1287,'Lost',85),	
(1288,'Lost',85),	
(1289,'Won',86),	
(1290,'Lost',86),	
(1291,'Lost',86),	
(1292,'Lost',86),	
(1293,'Lost',86),	
(1294,'Lost',86),	
(1295,'Lost',86),	
(1296,'Lost',86),	
(1297,'Lost',86),	
(1298,'Lost',86),	
(1299,'Lost',86),	
(1300,'Lost',86),	
(1301,'Lost',86),	
(1302,'Lost',86),	
(1303,'Lost',86),	
(1304,'Lost',86),	
(1305,'Lost',86),	
(1306,'Lost',86),	
(1307,'Lost',86),	
(1308,'Lost',86),	
(1309,'Lost',86),	
(1310,'Lost',86),	
(1311,'Lost',86),	
(1312,'Lost',86),	
(1313,'Lost',86),	
(1314,'Lost',86),	
(1315,'Won',87),	
(1316,'Lost',87),	
(1317,'Lost',87),	
(1318,'Lost',87),	
(1319,'Lost',87),	
(1320,'Lost',87),	
(1321,'Lost',87),	
(1322,'Lost',87),	
(1323,'Lost',87),	
(1324,'Lost',87),	
(1325,'Lost',87),	
(1326,'Lost',87),	
(1327,'Lost',87),	
(1328,'Lost',87),	
(1329,'Lost',87),	
(1330,'Lost',87),	
(1331,'Lost',87),	
(1332,'Lost',87),	
(1333,'Lost',87),	
(1334,'Won',88),	
(1335,'Lost',88),	
(1336,'Lost',88),	
(1337,'Lost',88),	
(1338,'Lost',88),	
(1339,'Lost',88),	
(1340,'Lost',88),	
(1341,'Lost',88),	
(1342,'Lost',88),	
(1343,'Lost',88),	
(1344,'Won',89),	
(1345,'Lost',89),	
(1346,'Lost',89),	
(1347,'Lost',89),	
(1348,'Lost',89),	
(1349,'Lost',89),	
(1350,'Lost',89),	
(1351,'Lost',89),	
(1352,'Lost',89),	
(1353,'Lost',89),	
(1354,'Lost',89),	
(1355,'Lost',89),	
(1356,'Lost',89),	
(1357,'Lost',89),	
(1358,'Lost',89),	
(1359,'Lost',89),	
(1360,'Lost',89),	
(1361,'Lost',89),	
(1362,'Lost',89),	
(1363,'Lost',89),	
(1364,'Lost',89),	
(1365,'Lost',89),	
(1366,'Lost',89),	
(1367,'Lost',89),	
(1368,'Lost',89),	
(1369,'Lost',89),	
(1370,'Lost',89),	
(1371,'Lost',89),	
(1372,'Won',90),	
(1373,'Lost',90),	
(1374,'Lost',90),	
(1375,'Lost',90),	
(1376,'Lost',90),	
(1377,'Lost',90),	
(1378,'Lost',90),	
(1379,'Lost',90),	
(1380,'Lost',90),	
(1381,'Lost',90),	
(1382,'Lost',90),	
(1383,'Lost',90),	
(1384,'Lost',90),	
(1385,'Lost',90),	
(1386,'Lost',90),	
(1387,'Lost',90),	
(1388,'Lost',90),	
(1389,'Lost',90),	
(1390,'Won',91),	
(1391,'Lost',91),	
(1392,'Lost',91),	
(1393,'Lost',91),	
(1394,'Lost',91),	
(1395,'Lost',91),	
(1396,'Lost',91),	
(1397,'Lost',91),	
(1398,'Lost',91),	
(1399,'Lost',91),	
(1400,'Lost',91),	
(1401,'Lost',91),	
(1402,'Lost',91),	
(1403,'Lost',91),	
(1404,'Won',92),	
(1405,'Lost',92),	
(1406,'Lost',92),	
(1407,'Lost',92),	
(1408,'Lost',92),	
(1409,'Lost',92),	
(1410,'Lost',92),	
(1411,'Lost',92),	
(1412,'Lost',92),	
(1413,'Lost',92),	
(1414,'Lost',92),	
(1415,'Lost',92),	
(1416,'Lost',92),	
(1417,'Lost',92),	
(1418,'Lost',92),	
(1419,'Lost',92),	
(1420,'Lost',92),	
(1421,'Lost',92),	
(1422,'Lost',92),	
(1423,'Lost',92),	
(1424,'Lost',92),	
(1425,'Lost',92),	
(1426,'Lost',92),	
(1427,'Lost',92),	
(1428,'Lost',92),	
(1429,'Lost',92),	
(1430,'Lost',92),	
(1431,'Lost',92),	
(1432,'Lost',92),	
(1433,'Lost',92),	
(1434,'Lost',92),	
(1435,'Lost',92),	
(1436,'Lost',92),	
(1437,'Lost',92),	
(1438,'Lost',92),	
(1439,'Lost',92),	
(1440,'Lost',92),	
(1441,'Lost',92),	
(1442,'Lost',92),	
(1443,'Won',93),	
(1444,'Lost',93),	
(1445,'Lost',93),	
(1446,'Lost',93),	
(1447,'Lost',93),	
(1448,'Lost',93),	
(1449,'Lost',93),	
(1450,'Lost',93),	
(1451,'Lost',93),	
(1452,'Lost',93),	
(1453,'Lost',93),	
(1454,'Lost',93),	
(1455,'Lost',93),	
(1456,'Lost',93),	
(1457,'Lost',93),	
(1458,'Lost',93),	
(1459,'Won',94),	
(1460,'Lost',94),	
(1461,'Lost',94),	
(1462,'Lost',94),	
(1463,'Lost',94),	
(1464,'Lost',94),	
(1465,'Lost',94),	
(1466,'Lost',94),	
(1467,'Lost',94),	
(1468,'Lost',94),	
(1469,'Lost',94),	
(1470,'Won',95),	
(1471,'Lost',95),	
(1472,'Lost',95),	
(1473,'Lost',95),	
(1474,'Lost',95),	
(1475,'Lost',95),	
(1476,'Won',96),	
(1477,'Lost',96),	
(1478,'Lost',96),	
(1479,'Lost',96),	
(1480,'Lost',96),	
(1481,'Lost',96),	
(1482,'Lost',96),	
(1483,'Lost',96),	
(1484,'Won',97),	
(1485,'Lost',97),	
(1486,'Lost',97),	
(1487,'Lost',97),	
(1488,'Lost',97),	
(1489,'Lost',97),	
(1490,'Lost',97),	
(1491,'Lost',97),	
(1492,'Lost',97),	
(1493,'Won',98),	
(1494,'Lost',98),	
(1495,'Lost',98),	
(1496,'Lost',98),	
(1497,'Lost',98),	
(1498,'Lost',98),	
(1499,'Lost',98),	
(1500,'Lost',98),	
(1501,'Lost',98),	
(1502,'Won',99),	
(1503,'Lost',99),	
(1504,'Lost',99),	
(1505,'Lost',99),	
(1506,'Lost',99),	
(1507,'Lost',99),	
(1508,'Lost',99),	
(1509,'Lost',99),	
(1510,'Lost',99),	
(1511,'Lost',99),	
(1512,'Lost',99),	
(1513,'Lost',99),	
(1514,'Lost',99),	
(1515,'Lost',99),	
(1516,'Lost',99),	
(1517,'Lost',99),	
(1518,'Lost',99),	
(1519,'Lost',99),	
(1520,'Lost',99),	
(1521,'Won',100),	
(1522,'Lost',100),	
(1523,'Lost',100),	
(1524,'Lost',100),	
(1525,'Lost',100),	
(1526,'Lost',100),	
(1527,'Lost',100),	
(1528,'Won',101),	
(1529,'Lost',101),	
(1530,'Lost',101),	
(1531,'Lost',101),	
(1532,'Lost',101),	
(1533,'Lost',101),	
(1534,'Lost',101),	
(1535,'Lost',101),	
(1536,'Lost',101),	
(1537,'Won',102),	
(1538,'Lost',102),	
(1539,'Lost',102),	
(1540,'Lost',102),	
(1541,'Lost',102),	
(1542,'Lost',102),	
(1543,'Lost',102),	
(1544,'Lost',102),	
(1545,'Won',103),	
(1546,'Lost',103),	
(1547,'Lost',103),	
(1548,'Lost',103),	
(1549,'Lost',103),	
(1550,'Lost',103),	
(1551,'Lost',103),	
(1552,'Lost',103),	
(1553,'Lost',103),	
(1554,'Lost',103),	
(1555,'Lost',103),	
(1556,'Lost',103),	
(1557,'Lost',103),	
(1558,'Won',104),	
(1559,'Lost',104),	
(1560,'Lost',104),	
(1561,'Lost',104),	
(1562,'Won',105),	
(1563,'Lost',105),	
(1564,'Lost',105),	
(1565,'Lost',105),	
(1566,'Lost',105),	
(1567,'Lost',105),	
(1568,'Lost',105),	
(1569,'Lost',105),	
(1570,'Lost',105),	
(1571,'Lost',105),	
(1572,'Lost',105),	
(1573,'Lost',105),	
(1574,'Lost',105),	
(1575,'Lost',105),	
(1576,'Won',106),	
(1577,'Lost',106),	
(1578,'Lost',106),	
(1579,'Lost',106),	
(1580,'Lost',106),	
(1581,'Lost',106),	
(1582,'Lost',106),	
(1583,'Lost',106),	
(1584,'Lost',106),	
(1585,'Lost',106),	
(1586,'Lost',106),	
(1587,'Lost',106),	
(1588,'Lost',106),	
(1589,'Lost',106),	
(1590,'Won',107),	
(1591,'Lost',107),	
(1592,'Lost',107),	
(1593,'Lost',107),	
(1594,'Lost',107),	
(1595,'Lost',107),	
(1596,'Lost',107),	
(1597,'Won',108),	
(1598,'Lost',108),	
(1599,'Lost',108),	
(1600,'Lost',108),	
(1601,'Lost',108),	
(1602,'Lost',108),	
(1603,'Lost',108),	
(1604,'Lost',108),	
(1605,'Lost',108),	
(1606,'Lost',108),	
(1607,'Won',109),	
(1608,'Lost',109),	
(1609,'Lost',109),	
(1610,'Lost',109),	
(1611,'Lost',109),	
(1612,'Lost',109),	
(1613,'Lost',109),	
(1614,'Lost',109),	
(1615,'Lost',109),	
(1616,'Lost',109),	
(1617,'Lost',109),	
(1618,'Lost',109),	
(1619,'Lost',109),	
(1620,'Lost',109),	
(1621,'Lost',109),	
(1622,'Won',110),	
(1623,'Lost',110),	
(1624,'Lost',110),	
(1625,'Lost',110),	
(1626,'Lost',110),	
(1627,'Lost',110),	
(1628,'Lost',110),	
(1629,'Lost',110),	
(1630,'Lost',110),	
(1631,'Lost',110),	
(1632,'Lost',110),	
(1633,'Lost',110),	
(1634,'Lost',110),	
(1635,'Lost',110),	
(1636,'Lost',110),	
(1637,'Won',111),	
(1638,'Lost',111),	
(1639,'Lost',111),	
(1640,'Lost',111),	
(1641,'Lost',111),	
(1642,'Lost',111),	
(1643,'Lost',111),	
(1644,'Lost',111),	
(1645,'Lost',111),	
(1646,'Lost',111),	
(1647,'Lost',111),	
(1648,'Lost',111),	
(1649,'Won',112),	
(1650,'Lost',112),	
(1651,'Lost',112),	
(1652,'Lost',112),	
(1653,'Lost',112),	
(1654,'Lost',112),	
(1655,'Lost',112),	
(1656,'Lost',112),	
(1657,'Lost',112),	
(1658,'Lost',112),	
(1659,'Lost',112),	
(1660,'Lost',112),	
(1661,'Won',113),	
(1662,'Lost',113),	
(1663,'Lost',113),	
(1664,'Lost',113),	
(1665,'Lost',113),	
(1666,'Lost',113),	
(1667,'Lost',113),	
(1668,'Lost',113),	
(1669,'Lost',113),	
(1670,'Lost',113),	
(1671,'Lost',113),	
(1672,'Lost',113),	
(1673,'Lost',113),	
(1674,'Won',114),	
(1675,'Lost',114),	
(1676,'Lost',114),	
(1677,'Lost',114),	
(1678,'Lost',114),	
(1679,'Lost',114),	
(1680,'Lost',114),	
(1681,'Won',115),	
(1682,'Lost',115),	
(1683,'Lost',115),	
(1684,'Lost',115),	
(1685,'Lost',115),	
(1686,'Lost',115),	
(1687,'Lost',115),	
(1688,'Lost',115),	
(1689,'Lost',115),	
(1690,'Lost',115),	
(1691,'Lost',115),	
(1692,'Lost',115),	
(1693,'Lost',115),	
(1694,'Lost',115),	
(1695,'Lost',115),	
(1696,'Won',116),	
(1697,'Lost',116),	
(1698,'Lost',116),	
(1699,'Lost',116),	
(1700,'Lost',116),	
(1701,'Lost',116),	
(1702,'Lost',116),	
(1703,'Lost',116),	
(1704,'Lost',116),	
(1705,'Won',117),	
(1706,'Lost',117),	
(1707,'Lost',117),	
(1708,'Lost',117),	
(1709,'Lost',117),	
(1710,'Lost',117),	
(1711,'Lost',117),	
(1712,'Lost',117),	
(1713,'Lost',117),	
(1714,'Lost',117),	
(1715,'Lost',117),	
(1716,'Won',118),	
(1717,'Lost',118),	
(1718,'Lost',118),	
(1719,'Lost',118),	
(1720,'Lost',118),	
(1721,'Lost',118),	
(1722,'Lost',118),	
(1723,'Lost',118),	
(1724,'Lost',118),	
(1725,'Lost',118),	
(1726,'Lost',118),	
(1727,'Lost',118),	
(1728,'Lost',118),	
(1729,'Won',119),	
(1730,'Lost',119),	
(1731,'Lost',119),	
(1732,'Lost',119),	
(1733,'Lost',119),	
(1734,'Lost',119),	
(1735,'Lost',119),	
(1736,'Lost',119),	
(1737,'Lost',119),	
(1738,'Lost',119),	
(1739,'Won',120),	
(1740,'Lost',120),	
(1741,'Lost',120),	
(1742,'Lost',120),	
(1743,'Lost',120),	
(1744,'Lost',120),	
(1745,'Lost',120),	
(1746,'Lost',120),	
(1747,'Lost',120),	
(1748,'Lost',120),	
(1749,'Lost',120),	
(1750,'Lost',120),	
(1751,'Lost',120),	
(1752,'Lost',120),	
(1753,'Lost',120),	
(1754,'Won',121),	
(1755,'Won',122),	
(1756,'Lost',122),	
(1757,'Lost',122),	
(1758,'Lost',122),	
(1759,'Lost',122),	
(1760,'Lost',122),	
(1761,'Lost',122),	
(1762,'Lost',122),	
(1763,'Lost',122),	
(1764,'Lost',122),	
(1765,'Lost',122),	
(1766,'Lost',122),	
(1767,'Lost',122),	
(1768,'Lost',122),	
(1769,'Lost',122),	
(1770,'Won',123),	
(1771,'Lost',123),	
(1772,'Lost',123),	
(1773,'Lost',123),	
(1774,'Lost',123),	
(1775,'Lost',123),	
(1776,'Lost',123),	
(1777,'Lost',123),	
(1778,'Lost',123),	
(1779,'Lost',123),	
(1780,'Lost',123),	
(1781,'Lost',123),	
(1782,'Lost',123),	
(1783,'Lost',123),	
(1784,'Lost',123),	
(1785,'Won',124),	
(1786,'Lost',124),	
(1787,'Lost',124),	
(1788,'Lost',124),	
(1789,'Lost',124),	
(1790,'Lost',124),	
(1791,'Lost',124),	
(1792,'Lost',124),	
(1793,'Won',125),	
(1794,'Lost',125),	
(1795,'Lost',125),	
(1796,'Lost',125),	
(1797,'Lost',125),	
(1798,'Lost',125),	
(1799,'Lost',125),	
(1800,'Lost',125),	
(1801,'Lost',125),	
(1802,'Lost',125),	
(1803,'Lost',125),	
(1804,'Lost',125),	
(1805,'Lost',125),	
(1806,'Lost',125),	
(1807,'Lost',125),	
(1808,'Won',126),	
(1809,'Lost',126),	
(1810,'Lost',126),	
(1811,'Lost',126),	
(1812,'Lost',126),	
(1813,'Lost',126),	
(1814,'Lost',126),	
(1815,'Lost',126),	
(1816,'Lost',126),	
(1817,'Lost',126),	
(1818,'Lost',126),	
(1819,'Lost',126),	
(1820,'Lost',126),	
(1821,'Lost',126),	
(1822,'Lost',126),	
(1823,'Lost',126),	
(1824,'Lost',126),	
(1825,'Lost',126),	
(1826,'Won',127),	
(1827,'Lost',127),	
(1828,'Lost',127),	
(1829,'Lost',127),	
(1830,'Lost',127),	
(1831,'Lost',127),	
(1832,'Lost',127),	
(1833,'Lost',127),	
(1834,'Lost',127),	
(1835,'Lost',127),	
(1836,'Lost',127),	
(1837,'Lost',127),	
(1838,'Lost',127),	
(1839,'Lost',127),	
(1840,'Lost',127),	
(1841,'Lost',127),	
(1842,'Lost',127),	
(1843,'Lost',127),	
(1844,'Lost',127),	
(1845,'Lost',127),	
(1846,'Lost',127),	
(1847,'Lost',127),	
(1848,'Lost',127),	
(1849,'Lost',127),	
(1850,'Lost',127),	
(1851,'Won',128),	
(1852,'Lost',128),	
(1853,'Lost',128),	
(1854,'Lost',128),	
(1855,'Lost',128),	
(1856,'Lost',128),	
(1857,'Lost',128),	
(1858,'Lost',128),	
(1859,'Lost',128),	
(1860,'Lost',128),	
(1861,'Lost',128),	
(1862,'Lost',128),	
(1863,'Lost',128),	
(1864,'Lost',128),	
(1865,'Lost',128),	
(1866,'Lost',128),	
(1867,'Lost',128),	
(1868,'Lost',128),	
(1869,'Lost',128),	
(1870,'Lost',128),	
(1871,'Lost',128),	
(1872,'Lost',128),	
(1873,'Lost',128),	
(1874,'Lost',128),	
(1875,'Won',129),	
(1876,'Lost',129),	
(1877,'Lost',129),	
(1878,'Lost',129),	
(1879,'Lost',129),	
(1880,'Lost',129),	
(1881,'Lost',129),	
(1882,'Lost',129),	
(1883,'Lost',129),	
(1884,'Lost',129),	
(1885,'Lost',129),	
(1886,'Lost',129),	
(1887,'Lost',129),	
(1888,'Lost',129),	
(1889,'Lost',129),	
(1890,'Lost',129),	
(1891,'Lost',129),	
(1892,'Lost',129),	
(1893,'Lost',129),	
(1894,'Lost',129),	
(1895,'Lost',129),	
(1896,'Lost',129),	
(1897,'Lost',129),	
(1898,'Lost',129),	
(1899,'Lost',129),	
(1900,'Lost',129),	
(1901,'Lost',129),	
(1902,'Lost',129),	
(1903,'Lost',129),	
(1904,'Won',130),	
(1905,'Lost',130),	
(1906,'Lost',130),	
(1907,'Lost',130),	
(1908,'Lost',130),	
(1909,'Lost',130),	
(1910,'Lost',130),	
(1911,'Lost',130),	
(1912,'Lost',130),	
(1913,'Lost',130),	
(1914,'Lost',130),	
(1915,'Lost',130),	
(1916,'Lost',130),	
(1917,'Lost',130),	
(1918,'Lost',130),	
(1919,'Lost',130),	
(1920,'Lost',130),	
(1921,'Lost',130),	
(1922,'Lost',130),	
(1923,'Lost',130),	
(1924,'Won',131),	
(1925,'Lost',131),	
(1926,'Lost',131),	
(1927,'Lost',131),	
(1928,'Lost',131),	
(1929,'Lost',131),	
(1930,'Lost',131),	
(1931,'Lost',131),	
(1932,'Lost',131),	
(1933,'Lost',131),	
(1934,'Lost',131),	
(1935,'Lost',131),	
(1936,'Lost',131),	
(1937,'Lost',131),	
(1938,'Lost',131),	
(1939,'Lost',131),	
(1940,'Lost',131),	
(1941,'Lost',131),	
(1942,'Lost',131),	
(1943,'Lost',131),	
(1944,'Lost',131),	
(1945,'Lost',131),	
(1946,'Lost',131),	
(1947,'Lost',131),	
(1948,'Lost',131),	
(1949,'Lost',131),	
(1950,'Lost',131),	
(1951,'Lost',131),	
(1952,'Lost',131),	
(1953,'Lost',131),	
(1954,'Lost',131),	
(1955,'Lost',131),	
(1956,'Won',132),	
(1957,'Lost',132),	
(1958,'Lost',132),	
(1959,'Lost',132),	
(1960,'Lost',132),	
(1961,'Lost',132),	
(1962,'Lost',132),	
(1963,'Lost',132),	
(1964,'Lost',132),	
(1965,'Lost',132),	
(1966,'Lost',132),	
(1967,'Lost',132),	
(1968,'Lost',132),	
(1969,'Lost',132),	
(1970,'Lost',132),	
(1971,'Lost',132),	
(1972,'Lost',132),	
(1973,'Lost',132),	
(1974,'Lost',132),	
(1975,'Lost',132),	
(1976,'Lost',132),	
(1977,'Lost',132),	
(1978,'Lost',132),	
(1979,'Lost',132),	
(1980,'Lost',132),	
(1981,'Lost',132),	
(1982,'Lost',132),	
(1983,'Won',133),	
(1984,'Lost',133),	
(1985,'Lost',133),	
(1986,'Lost',133),	
(1987,'Lost',133),	
(1988,'Lost',133),	
(1989,'Lost',133),	
(1990,'Lost',133),	
(1991,'Lost',133),	
(1992,'Lost',133),	
(1993,'Lost',133),	
(1994,'Lost',133),	
(1995,'Lost',133),	
(1996,'Lost',133),	
(1997,'Lost',133),	
(1998,'Lost',133);
delete from Result where Result_ID> 1982;
select* from Result;
describe Candidate;
-- Inserting into Candidate Table
INSERT INTO Candidate(Candidate_ID, Candidate_Name, Constituency_ID, Result_ID, Party_ID) VALUES
				
(1, 'BISHNU PADA RAY', 1, 1, 158),				
(2, 'KULDEEP RAI SHARMA', 1, 2, 289),				
(3, 'MANOJ PAUL', 1, 3, 83),				
(4, 'D AYYAPPAN', 1, 4, 227),				
(5, 'V.K. ABDUL AZIZ', 1, 5, 282),				
(6, 'K J B SELVARAJ', 1, 6, 55),				
(7, 'DR ARUN KUMAR MALLIK', 1, 7, 121),				
(8, 'RINKU MALA MONDAL', 1, 8, 282),				
(9, 'K VENKAT RAM BABU', 1, 9, 282),				
(10, 'USHA KUMARI', 1, 10, 282),				
(11, 'SALAMAT MONDAL', 1, 11, 666),				
(12, 'ANAND RAMNATH ARLEKAR', 1, 12, 282),				
(13, 'NOTA', 1, 13, 471),				
(14, 'G M HARISH (BALAYOGI)', 2, 14, 698),				
(15, 'RAPAKA VARAPRASADA RAO', 2, 15, 744),				
(16, 'GOUTHAM JANGA', 2, 16, 289),				
(17, 'DORABABU YALLA', 2, 17, 121),				
(18, 'KATRU NAGA BABU', 2, 18, 699),				
(19, 'VADDI LALITH KUMAR', 2, 19, 282),				
(20, 'MAKEY DAVY PRASAD', 2, 20, 282),				
(21, 'GUDE VENKATESWARULU', 2, 21, 282),				
(22, 'RAMESH JILLELLA', 2, 22, 349),				
(23, 'YALANGI RAMESH', 2, 23, 312),				
(24, 'MATHA KRISHNA', 2, 24, 513),				
(25, 'GIDDI JNANA PRAKASA RAO', 2, 25, 589),				
(26, 'YADLA RAJESH', 2, 26, 381),				
(27, 'KAPA KALYAN', 2, 27, 591),				
(28, 'PATHURI RAMESH', 2, 28, 486),				
(29, 'NOTA', 2, 29, 471),				
(30, 'C.M.RAMESH', 3, 30, 158),				
(31, 'BUDI MUTYALA NAIDU', 3, 31, 744),				
(32, 'VEGI VENKATESH', 3, 32, 289),				
(33, 'PALAKA SREERAMA MURTHY', 3, 33, 121),				
(34, 'VANKAYALA RAMACHANDRA RAO', 3, 34, 282),				
(35, 'LOVARAJU SIDDHA', 3, 35, 282),				
(36, 'KRISHNA SWAROOP VADLAMURI', 3, 36, 233),				
(37, 'GARA SURYA RAO', 3, 37, 282),				
(38, 'APPALA RAJU NAMMI', 3, 38, 144),				
(39, 'NAGESWARA RAO PETLA', 3, 39, 282),				
(40, 'ADARI SARAT CHANDRA', 3, 40, 302),				
(41, 'VIJAYA LAKSHMI KARRI', 3, 41, 513),				
(42, 'DR. THUMMAPALA HARI  SHANKAR', 3, 42, 282),				
(43, 'JUNNURI J SRINIVAS', 3, 43, 282),				
(44, 'APPALANAIDU TUMMAGUNTA', 3, 44, 282),				
(45, 'NOTA', 3, 45, 471),				
(46, 'AMBICA G LAKSHMINARAYANA VALMIKI', 4, 46, 698),				
(47, 'MALAGUNDLA SANKAR NARAYANA', 4, 47, 744),				
(48, 'MALLIKARJUNA VAJJALA', 4, 48, 289),				
(49, 'G.V.RAMANA REDDY', 4, 49, 282),				
(50, 'BANASI NARAYANAPPA', 4, 50, 121),				
(51, 'V.MURALI PRASAD REDDY', 4, 51, 282),				
(52, 'DR.NALLANI RAMESH NAIDU', 4, 52, 85),				
(53, 'M.SURENDRA', 4, 53, 513),				
(54, 'U.C.VENKATASUBBAIAH', 4, 54, 300),				
(55, 'P.CHOWDESWARI', 4, 55, 282),				
(56, 'VADLA KESAVAIAH', 4, 56, 282),				
(57, 'B.RAGHAVENDRA PRASAD', 4, 57, 282),				
(58, 'KETHIREDDY RAGHUNATHAREDDY', 4, 58, 282),				
(59, 'LOKANATH GOWD SURAGOWINI', 4, 59, 282),				
(60, 'SREERANGARAJULA GOPINATH ROYAL', 4, 60, 282),				
(61, 'SHAIK.NIZAM', 4, 61, 617),				
(62, 'RAMAVTH CHINNA RAMAPPA NAIK', 4, 62, 312),				
(63, 'KURUBA MALLIKARJUNA.S.', 4, 63, 61),				
(64, 'B.NAGAMUTHYALU', 4, 64, 666),				
(65, 'SRINIVASA RAJU.O', 4, 65, 200),				
(66, 'DURGA PRASAD D BYATARAYANAJI', 4, 66, 221),				
(67, 'NOTA', 4, 67, 471),				
(68, 'GUMMA THANUJA RANI', 5, 68, 744),				
(69, 'KOTHAPALLI GEETHA', 5, 69, 158),				
(70, 'APPALANARASA PACHIPENTA', 5, 70, 227),				
(71, 'AVASHYA LAHARI . VARAM', 5, 71, 121),				
(72, 'SAMAREDDY BALAKRISHNA', 5, 72, 282),				
(73, 'NIMMAKA JAYARAJU', 5, 73, 282),				
(74, 'ATHIDHI', 5, 74, 282),				
(75, 'CHANTI BADNAINA', 5, 75, 302),				
(76, 'MOTTADAM . RAJABABU', 5, 76, 131),				
(77, 'RANJITH KUMAR PALAKA', 5, 77, 282),				
(78, 'RAMBABU JALLI', 5, 78, 700),				
(79, 'MANDALA GIRIDHARA RAO', 5, 79, 282),				
(80, 'VUYAKA NIREEKSHAN  (V. CHENCHU)', 5, 80, 285),				
(81, 'NOTA', 5, 81, 471),				
(82, 'KRISHNA PRASAD TENNETI', 6, 82, 698),				
(83, 'NANDIGAM SURESH BABU', 6, 83, 744),				
(84, 'J.D. SEELAM', 6, 84, 289),				
(85, 'DOKKA JAGAN MOHANA RAO', 6, 85, 121),				
(86, 'NALAMALA TIRUPATI RAO', 6, 86, 460),				
(87, 'BUSSA. NAGARAJU', 6, 87, 282),				
(88, 'GADDE. VIJAYA LAKSHMI', 6, 88, 282),				
(89, 'KATTAPOGU. VIJAY KUMAR', 6, 89, 513),				
(90, 'KONDRU KIRAN KUMAR', 6, 90, 282),				
(91, 'KATTA ANAND BABU', 6, 91, 282),				
(92, 'MERUGUPALA SADASIVA RAO', 6, 92, 285),				
(93, 'KATTA HEMANAND', 6, 93, 282),				
(94, 'PARRE. KOTAIAH', 6, 94, 312),				
(95, 'PALADUG VIJENDRA RAO (BAHUJAN)', 6, 95, 381),				
(96, 'CHINNAM MURALIDHAR', 6, 96, 74),				
(97, 'NOTA', 6, 97, 471),				
(98, 'DAGGUMALLA PRASADA RAO', 7, 98, 698),				
(99, 'REDDEPPA.N .', 7, 99, 744),				
(100, 'MOTUKUR JAGAPATHI', 7, 100, 289),				
(101, 'THOGURU VIJAYA KUMAR', 7, 101, 121),				
(102, 'YUGANDAR . KONDA', 7, 102, 282),				
(103, 'K.MUNI KRISHNA', 7, 103, 282),				
(104, 'P.JANAKI RAMA RAO ( BABU)', 7, 104, 447),				
(105, 'PETA.MOHAN .', 7, 105, 282),				
(106, 'C.SUDHAKAR', 7, 106, 282),				
(107, 'N.CHANDRABABU', 7, 107, 282),				
(108, 'MADASI SUDHARSHAN', 7, 108, 282),				
(109, 'D.MAHESH', 7, 109, 282),				
(110, 'P.MADHU', 7, 110, 282),				
(111, 'N.BHUPATHI', 7, 111, 282),				
(112, 'A. PURNA CHANDRA', 7, 112, 282),				
(113, 'PALLIPATTU.ABHINAV VISHNU', 7, 113, 617),				
(114, 'N.GANGAIAH .', 7, 114, 282),				
(115, 'T NARESH', 7, 115, 282),				
(116, 'BANDAPALLI RAMESH', 7, 116, 282),				
(117, 'NOTA', 7, 117, 471),				
(118, 'PUTTA MAHESH KUMAR', 8, 118, 698),				
(119, 'KARUMURI SUNIL KUMAR', 8, 119, 744),				
(120, 'KAVURI LAVANYA', 8, 120, 289),				
(121, 'AJAY BABU BODA', 8, 121, 459),				
(122, 'NITTA AKHILA DHARANI PAL', 8, 122, 121),				
(123, 'BOKINALA KOTESWARA RAO', 8, 123, 282),				
(124, 'RUDRAPAKA RATNA RAO (R.R.R)', 8, 124, 85),				
(125, 'KANDAVALLI JEEVA DEVA DAYAKAR', 8, 125, 282),				
(126, 'AGASTEEN KOMMINA', 8, 126, 282),				
(127, 'DR. MENDEM SANTHOSH KUMAR (PEDDA BABULU)', 8, 127, 381),				
(128, 'RAJESWARA RAO KONDRU', 8, 128, 145),				
(129, 'GODUGUPATI VEERA RAGHAVULU', 8, 129, 513),				
(130, 'BYRABOYINA MALYADRI', 8, 130, 144),				
(131, 'NOTA', 8, 131, 471),				
(132, 'DR CHANDRA SEKHAR PEMMASANI', 9, 132, 698),				
(133, 'KILARI VENKATA ROSAIAH', 9, 133, 744),				
(134, 'JANGALA AJAY KUMAR', 9, 134, 226),				
(135, 'SIVAREDDY. ENDREDDY', 9, 135, 460),				
(136, 'TENALI PRAKASH', 9, 136, 121),				
(137, 'SIKHAKOLLI HEMA GOWRI SHANKAR', 9, 137, 349),				
(138, 'SAMUDRALA CHINNA KOTAIAH', 9, 138, 312),				
(139, 'UMAR BHASHA SHAIK', 9, 139, 327),				
(140, 'SYED. SAIDA', 9, 140, 459),				
(141, 'AMBATI CHALAMAIAH', 9, 141, 513),				
(142, 'PILLI BABU RAO', 9, 142, 282),				
(143, 'HARI VENKATA SATISH  KURNALA', 9, 143, 302),				
(144, 'VISHNU REDDY LANKIREDDY', 9, 144, 129),				
(145, 'EMANI. CHANDRASEKHAR RAO', 9, 145, 461),				
(146, 'SHAIK. KHAJAVALI', 9, 146, 282),				
(147, 'CHALLAPALLI RATAN RAJU', 9, 147, 723),				
(148, 'KANNEBOYINA VAMSI KRISHNA YADAV', 9, 148, 282),				
(149, 'MOHAMMAD KHAJA MOINUDDIN CHISTI PASHA', 9, 149, 84),				
(150, 'GAYATRI AUDHIPUDI', 9, 150, 282),				
(151, 'ASHOK ANAND GALI', 9, 151, 282),				
(152, 'SHAIK ASLAM AKTHER', 9, 152, 282),				
(153, 'PATHAN KHAJA (BASHA)', 9, 153, 700),				
(154, 'AMARTHALURI VENKATESWARA RAO.', 9, 154, 417),				
(155, 'DR. RAYAPUDI RAJESH VIJAY KUMAR', 9, 155, 287),				
(156, 'BURAGA RATNAM', 9, 156, 395),				
(157, 'VANKAYALAPATI VENKATA SIVA RAMANJANEYULU', 9, 157, 282),				
(158, 'SIVA PARVATHI', 9, 158, 282),				
(159, 'BOMMASANI MUTYALA RAO', 9, 159, 74),				
(160, 'SRIKRISHNA AKKISETTI', 9, 160, 282),				
(161, 'MADAVARAPU NAGA RAJU', 9, 161, 282),				
(162, 'NOTA', 9, 162, 471),				
(163, 'B K PARTHASARATHI', 10, 163, 698),				
(164, 'J SHANTHA', 10, 164, 744),				
(165, 'B A SAMAD SHAHEEN', 10, 165, 289),				
(166, 'BHAGYA R S', 10, 166, 121),				
(167, 'PRATHAP REDDY GORLA', 10, 167, 282),				
(168, 'H D HANUMANTHE GOWD', 10, 168, 282),				
(169, 'ANJINAPPA GARI SREENIVASULU', 10, 169, 598),				
(170, 'S N SURESH', 10, 170, 282),				
(171, 'DASAGANIPALLI KULLAYAPPA', 10, 171, 282),				
(172, 'ASHOK', 10, 172, 666),				
(173, 'T SUDHAKAR REDDY', 10, 173, 282),				
(174, 'S RAGHUNATHA REDDY', 10, 174, 282),				
(175, 'BUDILI DHANUNJAYA', 10, 175, 448),				
(176, 'NOTA', 10, 176, 471),				
(177, 'Y. S. AVINASH REDDY', 11, 177, 744),				
(178, 'CHADIPIRALLA BHUPESH SUBBARAMI REDDY', 11, 178, 698),				
(179, 'Y.S. SHARMILA REDDY', 11, 179, 289),				
(180, 'PANDITI. GURAPPA.', 11, 180, 121),				
(181, 'VENU GOPAL RACHINENI', 11, 181, 568),				
(182, 'CHINNAPUREDDY GOPALA KRISHNA REDDY', 11, 182, 282),				
(183, 'KUNCHAM. VENKATA SUBBA REDDY', 11, 183, 587),				
(184, 'L. KHAJA HUSSAIN', 11, 184, 282),				
(185, 'ANKIREDDY. SURESH KUMAR REDDY.', 11, 185, 58),				
(186, 'KAKARLA SHANMUKHA REDDY', 11, 186, 282),				
(187, 'PALLE RAMESH', 11, 187, 312),				
(188, 'CHAN BASHA. S', 11, 188, 90),				
(189, 'J. V. RAMANA', 11, 189, 300),				
(190, 'MALIKIREDDY. HANUMANTHA REDDY', 11, 190, 327),				
(191, 'NOTA', 11, 191, 471),				
(192, 'TANGELLA UDAY SRINIVAS  (TEA TIME UDAY)', 12, 192, 330),				
(193, 'CHALAMALASETTY SUNIL', 12, 193, 744),				
(194, 'MALLIPUDI MANGAPATI PALLAM RAJU', 12, 194, 289),				
(195, 'UDAY', 12, 195, 459),				
(196, 'KANDREGULA NARASIMHAM', 12, 196, 121),				
(197, 'DR ANUSHA YADAV', 12, 197, 144),				
(198, 'TANGELLA SRINIVASU', 12, 198, 349),				
(199, 'YEDIDA VARA PRASAD KUMAR', 12, 199, 591),				
(200, 'BUGATHA BANGARRAO', 12, 200, 228),				
(201, 'SUDHA VEERA GANESH', 12, 201, 282),				
(202, 'BHAVANI SANKAR PRASAD MERLA', 12, 202, 282),				
(203, 'YENUGUPALLI KRISHNA', 12, 203, 312),				
(204, 'BODDETI APPARAO', 12, 204, 282),				
(205, 'NEELAKANTAM DONAM', 12, 205, 282),				
(206, 'PASUPULETI S.V.S.BHUSHANAM', 12, 206, 282),				
(207, 'NOTA', 12, 207, 471),				
(208, 'BASTIPATI NAGARAJU PANCHALINGALA', 13, 208, 698),				
(209, 'B Y RAMAIAH', 13, 209, 744),				
(210, 'P.G.RAMPULLAIAH YADAV LUCKY-2', 13, 210, 289),				
(211, 'MANCHALA LAKSHMI NARAYANA', 13, 211, 121),				
(212, 'BOYA SURESH', 13, 212, 282),				
(213, 'T. BEECHUPALLI', 13, 213, 282),				
(214, 'VIJAYA BHASKAR .REDDYPOGU', 13, 214, 282),				
(215, 'PAGADALA KODANDA', 13, 215, 282),				
(216, 'DEVARAPOGU MADDILETY', 13, 216, 282),				
(217, 'PRAKASH REDDY RALAMPADU', 13, 217, 282),				
(218, 'JAHANGIR AHMED', 13, 218, 663),				
(219, 'DR. REDDYPOGU PRAVEEN KUMAR', 13, 219, 282),				
(220, 'ABDUL SATTAR  A.S.R', 13, 220, 90),				
(221, 'VALMIKI ARJUNA', 13, 221, 144),				
(222, 'URUKUNDU VADDE', 13, 222, 282),				
(223, 'MALLEPOGU NAGANNA', 13, 223, 666),				
(224, 'SUNKARA SREEDHAR', 13, 224, 302),				
(225, 'TARIGOPULA RAJABABU', 13, 225, 74),				
(226, 'AMRUTH KUMAR SALKAPURAM', 13, 226, 381),				
(227, 'NOTA', 13, 227, 471),				
(228, 'BALASHOWRY VALLABHANENI', 14, 228, 330),				
(229, 'SIMHADRI CHANDRA SEKHAR RAO', 14, 229, 744),				
(230, 'GOLLU KRISHNA', 14, 230, 289),				
(231, 'BAAL SHOURI CHODABATHINA', 14, 231, 349),				
(232, 'DEVAMANI DEVARAPALLI', 14, 232, 121),				
(233, 'KOMMARAJU SIVA NARASIMHA RAO', 14, 233, 58),				
(234, 'VALLABHANENI NAGA PAVAN KUMAR', 14, 234, 282),				
(235, 'MARADANI K R SWAMY', 14, 235, 307),				
(236, 'GANDHI  DHANEKULA', 14, 236, 282),				
(237, 'PAMULA BALA SOWRYAMMA', 14, 237, 282),				
(238, 'ANUSHA YERUVA', 14, 238, 282),				
(239, 'GUDAVALLI VENKATA KEDARESWARA RAO', 14, 239, 282),				
(240, 'JOGI VEERANJANEYULU', 14, 240, 282),				
(241, 'DAMODARA RAO GUDAVALLI', 14, 241, 282),				
(242, 'APPARAO ENNETI', 14, 242, 282),				
(243, 'NOTA', 14, 243, 471),				
(244, 'DR BYREDDY SHABARI', 15, 244, 698),				
(245, 'POCHA BRAHMANANDA REDDY', 15, 245, 744),				
(246, 'J LAKSHMI NARASIMHA YADAV', 15, 246, 289),				
(247, 'P GURUVAIAH', 15, 247, 282),				
(248, 'A CHINNA MOULALI', 15, 248, 121),				
(249, 'HAFIZ ATAULLAH KHAN', 15, 249, 663),				
(250, 'KOMMUSANI PEDDA KAMBAGIRI SWAMY', 15, 250, 282),				
(251, 'GAGGERA VENKATA RAMANAIAH', 15, 251, 282),				
(252, 'DUMAVATH SWAMY NAIK', 15, 252, 282),				
(253, 'KUNUKUNTLA RAMUDU', 15, 253, 282),				
(254, 'E ANIL KUMAR', 15, 254, 282),				
(255, 'C SURENDRA NATHA REDDY', 15, 255, 282),				
(256, 'BRAHMANANDA REDDY K', 15, 256, 282),				
(257, 'UPPU SUBBARAYUDU', 15, 257, 300),				
(258, 'NAGESWARA RAO', 15, 258, 282),				
(259, 'VIJAYA BHASKAR REDDYPOGU', 15, 259, 282),				
(260, 'YELAMPALLE GOVARDHAN REDDY', 15, 260, 58),				
(261, 'BHUMA VEERA BHADRA REDDY', 15, 261, 459),				
(262, 'PANDU RANGA YADAV SIDDAPU', 15, 262, 617),				
(263, 'CHANDINI REDDY VAKATI', 15, 263, 381),				
(264, 'B C RAMANADHA AREDDY', 15, 264, 282),				
(265, 'GAJULA SHALIMIYA', 15, 265, 90),				
(266, 'KULURU RAMA KRISHNA REDDY', 15, 266, 464),				
(267, 'CH P MALLESWARUDU', 15, 267, 282),				
(268, 'I V PAKKIR REDDY', 15, 268, 282),				
(269, 'V MADHUSUDHANA REDDY', 15, 269, 282),				
(270, 'BUSHAKU MAHESWARA REDDY', 15, 270, 282),				
(271, 'U P MUNI REDDY', 15, 271, 282),				
(272, 'GOGULA SUGUNAMMA', 15, 272, 307),				
(273, 'BELLAMKONDA SREENIVASULU', 15, 273, 282),				
(274, 'BALIJA SHIVA KUMAR', 15, 274, 282),				
(275, 'NOTA', 15, 275, 471),				
(276, 'BHUPATHI RAJU SRINIVASA VARMA (B.J.P.VARMA)', 16, 276, 158),				
(277, 'UMABALA GUDURI', 16, 277, 744),				
(278, 'K.B.R.NAIDU', 16, 278, 289),				
(279, 'PRASANNA KUMAR UNDURTHI', 16, 279, 282),				
(280, 'MEDAPATI VENKATA VARAHALA REDDY', 16, 280, 282),				
(281, 'SIRRA RAJU', 16, 281, 121),				
(282, 'BALAGAM NAYAKAR', 16, 282, 282),				
(283, 'NALLI RAJESH', 16, 283, 282),				
(284, 'KETHA SREENU', 16, 284, 282),				
(285, 'OLETY NAGENDRA KRISHNA', 16, 285, 312),				
(286, 'ADDEPALLI VEERA VENKAT SUBBA RAO', 16, 286, 282),				
(287, 'ANAND CHANDULAL JASTI', 16, 287, 282),				
(288, 'GANJI PURNIMA', 16, 288, 591),				
(289, 'GEDALA LAXMANA RAO', 16, 289, 282),				
(290, 'ADDANKI DORABABU', 16, 290, 282),				
(291, 'GOTTUMUKKALA SHIVAJI', 16, 291, 282),				
(292, 'ADINARAYANA DUPPANAPUDI', 16, 292, 282),				
(293, 'MANNE LEELA RAMA NARENDRA', 16, 293, 513),				
(294, 'RAMA DURGA PRASAD THOLETI', 16, 294, 282),				
(295, 'RUKHMINI', 16, 295, 282),				
(296, 'ADABALA SIVA', 16, 296, 282),				
(297, 'NOTA', 16, 297, 471),				
(298, 'LAVU SRIKRISHNA DEVARAYALU', 17, 298, 698),				
(299, 'ANIL KUMAR POLUBOINA', 17, 299, 744),				
(300, 'GARNEPUDI ALEXANDER SUDHAKAR', 17, 300, 289),				
(301, 'ORSU PREMARAJU', 17, 301, 121),				
(302, 'KUCHIPUDI JOHN BABU', 17, 302, 312),				
(303, 'GARLAPATI SUBHASH PREM', 17, 303, 598),				
(304, 'YAMPATI VEERANJANEYA REDDY', 17, 304, 282),				
(305, 'SUBBARAO CHALLA', 17, 305, 282),				
(306, 'ABDUL RAJAK SHAIK', 17, 306, 282),				
(307, 'KOTA POTHURAJU', 17, 307, 513),				
(308, 'P VENKATESH', 17, 308, 300),				
(309, 'PASUPULETI PICHAIAH', 17, 309, 448),				
(310, 'PAPPULA SAMBASIVA RAO', 17, 310, 459),				
(311, 'DOCTOR GODA RAMESH KUMAR', 17, 311, 349),				
(312, 'THOKALA NAGA RAJU', 17, 312, 58),				
(313, 'NOTA', 17, 313, 471),				
(314, 'PRABHAKAR REDDY VEMIREDDY', 18, 314, 698),				
(315, 'VENUMBAKA VIJAYASAI REDDY', 18, 315, 744),				
(316, 'KOPPULA RAJU', 18, 316, 289),				
(317, 'BHASKAR NASINA', 18, 317, 121),				
(318, 'VIVEKA MANNEPALLI', 18, 318, 598),				
(319, 'KOPPALA RAGHU', 18, 319, 282),				
(320, 'GAJULA SOMA SEKHAR', 18, 320, 302),				
(321, 'SHAIK MUZIBUR RAHAMAN', 18, 321, 513),				
(322, 'SHAIK MAHABOOB BASHA (MABU)', 18, 322, 591),				
(323, 'MALLEPALLY RAGHU', 18, 323, 459),				
(324, 'SHAIK SHAFI AHMED', 18, 324, 58),				
(325, 'NAKKA DINESH', 18, 325, 144),				
(326, 'TALARI VENKATAIAH', 18, 326, 312),				
(327, 'PUNGANURU PRASANNA GANAPATHI', 18, 327, 514),				
(328, 'NOTA', 18, 328, 471),				
(329, 'MAGUNTA SREENIVASULU REDDY', 19, 329, 698),				
(330, 'DR CHEVIREDDY BHASKAR REDD', 19, 330, 744),				
(331, 'EDA SUDHAKARA REDDY', 19, 331, 289),				
(332, 'DHARANIKOTA LAKSHMI NARAYANA', 19, 332, 121),				
(333, 'BUCHI EDUKONDALU', 19, 333, 282),				
(334, 'PODILI RAMBABU', 19, 334, 282),				
(335, 'ORSU VEENA', 19, 335, 302),				
(336, 'BONTHA RANGA REDDY', 19, 336, 282),				
(337, 'BODDU KRANTHI KUMAR', 19, 337, 282),				
(338, 'MOHAN GOUD J V', 19, 338, 282),				
(339, 'U MADHU BABU', 19, 339, 282),				
(340, 'KARATAPU RAJU', 19, 340, 282),				
(341, 'JAGADEESH RAYAPATI', 19, 341, 282),				
(342, 'DEVIREDDY BALANJANEYULU', 19, 342, 282),				
(343, 'HARI PRASAD TUPAKULA', 19, 343, 282),				
(344, 'PASAM VENKATESWARLU YADAV', 19, 344, 617),				
(345, 'SURYA TEJA KOTA', 19, 345, 513),				
(346, 'AKUMALLA MALLIKARJUNA REDDY', 19, 346, 282),				
(347, 'VESHAPOGU GURAVABABU', 19, 347, 282),				
(348, 'KOMMU YOHANU', 19, 348, 381),				
(349, 'SESHUBABU GUDDANTI', 19, 349, 282),				
(350, 'SINGAMNENI SREEKANTH', 19, 350, 282),				
(351, 'YARRA DASARADHARAMAIAH', 19, 351, 282),				
(352, 'KOTA VAMSI KRISHNA', 19, 352, 282),				
(353, 'K PAVAN KALYAN', 19, 353, 349),				
(354, 'NOTA', 19, 354, 471),				
(355, 'DAGGUBATI PURANDHESHWARI', 20, 355, 158),				
(356, 'DR. GUDURI SRINIVAS', 20, 356, 744),				
(357, 'GIDUGU RUDRARAJU', 20, 357, 289),				
(358, 'GANESWARA RAO PARAMATA', 20, 358, 121),				
(359, 'BATTULA BALARAMAKRISHNA', 20, 359, 459),				
(360, 'SALOPANTULA RAGHAVENDRA RAO', 20, 360, 282),				
(361, 'DR. MEDISI RATNARAO ALIAS VINAY', 20, 361, 282),				
(362, 'MOHANARAO SINGULURI', 20, 362, 302),				
(363, 'MEDA SRINIVASA RAO', 20, 363, 568),				
(364, 'BOMMANABOINA VSR MURTHY', 20, 364, 282),				
(365, 'BHANU CHANDAR KURUVELLA', 20, 365, 282),				
(366, 'JALLI BALA NAVEENA', 20, 366, 282),				
(367, 'NOTA', 20, 367, 471),				
(368, 'P V MIDHUN REDDY', 21, 368, 744),				
(369, 'NALLARI KIRAN KUMAR REDDY', 21, 369, 158),				
(370, 'SHAIK BASHEED', 21, 370, 289),				
(371, 'ABBAVARAM UGENDRA', 21, 371, 121),				
(372, 'POOLA REDDY SEKHAR', 21, 372, 282),				
(373, 'NAGARAJU JETTI', 21, 373, 282),				
(374, 'PRADEEP PENAMADU', 21, 374, 58),				
(375, 'CHOUDVARAM SUBBANARASAIAH', 21, 375, 282),				
(376, 'PULI SREENIVASULU', 21, 376, 282),				
(377, 'SREENIVASULU MARRIPATI', 21, 377, 282),				
(378, 'AKBAR M BASHA', 21, 378, 90),				
(379, 'SANGARAJU NAGESWARA RAJU', 21, 379, 282),				
(380, 'MADA RAJA', 21, 380, 300),				
(381, 'BATTHALA RAMANAIAH', 21, 381, 302),				
(382, 'DODDAPANENI RAJA NAIDU', 21, 382, 282),				
(383, 'MAYANA MOHAMMED SALMAN KHAN', 21, 383, 381),				
(384, 'KASTURI OBAIAH NAIDU', 21, 384, 282),				
(385, 'ASADI VENKATADRI', 21, 385, 282),				
(386, 'NOTA', 21, 386, 471),				
(387, 'KINJARAPU RAMMOHAN NAIDU', 22, 387, 698),				
(388, 'TILAK PERADA', 22, 388, 744),				
(389, 'PEDADA PARAMESWARA RAO', 22, 389, 289),				
(390, 'SANAPALA SRAVAN KUMAR', 22, 390, 282),				
(391, 'NAIDUGARI RAJASEKHAR', 22, 391, 121),				
(392, 'VABA YOGESWARA RAO', 22, 392, 282),				
(393, 'BETHA VIVEKANANDA MAHARAJ', 22, 393, 282),				
(394, 'YEDDU LAKSHMINARAYANA', 22, 394, 282),				
(395, 'BORUBADRA CHANDRAKALA', 22, 395, 144),				
(396, 'IPPILI SEETHARAJU', 22, 396, 302),				
(397, 'KAYA DURGARAO', 22, 397, 459),				
(398, 'CHELLURI DANIYAL', 22, 398, 282),				
(399, 'BOMMALI TIRUPATI RAO', 22, 399, 513),				
(400, 'NOTA', 22, 400, 471),				
(401, 'GURUMOORTHY MADDILA', 23, 401, 744),				
(402, 'VARA PRASAD RAO VELAGAPALLI', 23, 402, 158),				
(403, 'CHINTA MOHAN', 23, 403, 289),				
(404, 'PENUMURU. GURAPPA', 23, 404, 121),				
(405, 'KATTAMANCHI. PRABHAKAR', 23, 405, 282),				
(406, 'M UMADEVI', 23, 406, 331),				
(407, 'ALLAM.RAJA', 23, 407, 282),				
(408, 'VIJAY KUMAR G.SRKR', 23, 408, 381),				
(409, 'ANJAIAH.P', 23, 409, 591),				
(410, 'V.C. NAVEEN GUPTA', 23, 410, 282),				
(411, 'A. VARAPRASAD', 23, 411, 349),				
(412, 'SYAMDHAN KURAPATI', 23, 412, 32),				
(413, 'C. PUNYAMURTHY', 23, 413, 710),				
(414, 'KARRA SIVA', 23, 414, 513),				
(415, 'VELURU. THEJOVATHI', 23, 415, 617),				
(416, 'C. DAVID', 23, 416, 286),				
(417, 'K. JEEVARATHNAM', 23, 417, 282),				
(418, 'DASARI. GOWTHAM', 23, 418, 282),				
(419, 'VIJAYA KUMAR.G', 23, 419, 282),				
(420, 'A. MADHU', 23, 420, 306),				
(421, 'B. BHARANI BAS', 23, 421, 77),				
(422, 'Y. MAHESH', 23, 422, 282),				
(423, 'PRASAD PATIBANDLA', 23, 423, 282),				
(424, 'NOTA', 23, 424, 471),				
(425, 'KESINENI SIVANATH (CHINNI)', 24, 425, 698),				
(426, 'KESINENI SRINIVAS  (NANI)', 24, 426, 744),				
(427, 'BHARGAV VALLURU', 24, 427, 289),				
(428, 'KRISHNA KISHORE YANAMANDRA', 24, 428, 460),				
(429, 'VENKATA ASHOK PAPPURI', 24, 429, 282),				
(430, 'DEVARAPALLI MALLIKARJUNA RAO (MAHESH)', 24, 430, 282),				
(431, 'MEKA VENKATESWARA RAO', 24, 431, 121),				
(432, 'ANIL KUMAR MADDINENI', 24, 432, 282),				
(433, 'BARRE SREENIVASARAO (JAI BHEEM SRINIVAS)', 24, 433, 700),				
(434, 'SYED KHAMURUNNISA', 24, 434, 459),				
(435, 'CHAGANTIPATI GANGADHAR GANDHI', 24, 435, 513),				
(436, 'DATLA LURTHU MERI', 24, 436, 312),				
(437, 'PERAM SIVA NAGESWARA RAO', 24, 437, 592),				
(438, 'DEVARASETTY RAVEENDRA BABU', 24, 438, 85),				
(439, 'GUJJULA LALITHA', 24, 439, 666),				
(440, 'N DASARADHA RAMI REDDY', 24, 440, 59),				
(441, 'CHINTHALACHERUVU HEMALATHA', 24, 441, 307),				
(442, 'NOTA', 24, 442, 471),				
(443, 'SRIBHARAT MATHUKUMILI', 25, 443, 698),				
(444, 'JHANSI LAKSHMI. BOTCHA.', 25, 444, 744),				
(445, 'P. SATYA REDDY', 25, 445, 289),				
(446, 'K.A. PAUL', 25, 446, 499),				
(447, 'PEDAPENKI SIVA PRASADA RAO', 25, 447, 121),				
(448, 'BIKKAVOLU. CHALAMAJI', 25, 448, 459),				
(449, 'V.N. SATYA NARAYANA', 25, 449, 568),				
(450, 'ARUNA SRI MURALA', 25, 450, 282),				
(451, 'VASUPILLI SURESH', 25, 451, 282),				
(452, 'SONDI KRISHNA.', 25, 452, 282),				
(453, 'ANDUKURI VIJAYA BHASKAR', 25, 453, 285),				
(454, 'DR. GANAPATHI KONGARAPU.', 25, 454, 591),				
(455, 'BANNA. RAMESH', 25, 455, 233),				
(456, 'P. SATYA VANI', 25, 456, 513),				
(457, 'DURGA PRASAD. GUNTU', 25, 457, 202),				
(458, 'CHAPPIDI RAMU', 25, 458, 282),				
(459, 'M.G.M. KHAN', 25, 459, 282),				
(460, 'SHANKAR DEVARA YADAV', 25, 460, 282),				
(461, 'VENU MADHAV KARRI', 25, 461, 282),				
(462, 'DR. ACHUTHA BALAJI YADAV (MURAPALA)', 25, 462, 144),				
(463, 'THOTA VENKATA SAI MUKUND', 25, 463, 498),				
(464, 'PIDIDHI APPARAO', 25, 464, 282),				
(465, 'G.A.N. ANAND', 25, 465, 282),				
(466, 'VADDI. HARI GANESH', 25, 466, 282),				
(467, 'JANARDHAN PONNADA.', 25, 467, 282),				
(468, 'GANAPATHI. JAGADEESWARA RAO (JAGADEESH)', 25, 468, 307),				
(469, 'JALADI VIJAYA KUMARI', 25, 469, 617),				
(470, 'CHINTADA SURYAM', 25, 470, 436),				
(471, 'GANDIKOTA RAJESH', 25, 471, 460),				
(472, 'KOLLI NAGA RAJU', 25, 472, 282),				
(473, 'METTA RAMA RAO', 25, 473, 282),				
(474, 'LAGUDU. GOVINDA RAO', 25, 474, 282),				
(475, 'MALLA SRAVANI', 25, 475, 282),				
(476, 'NOTA', 25, 476, 471),				
(477, 'APPALANAIDU KALISETTI', 26, 477, 698),				
(478, 'BELLANA CHANDRASEKHAR', 26, 478, 744),				
(479, 'BOBBILI SRINU', 26, 479, 289),				
(480, 'PEERUBANDI PRAKASH RAO', 26, 480, 121),				
(481, 'VELURI VENKATA TRINADHARAO', 26, 481, 282),				
(482, 'ALLU SRIRAMULU', 26, 482, 282),				
(483, 'SIYYADULA YELLA RAO', 26, 483, 282),				
(484, 'SRINIVASA RAO SAMBHANA', 26, 484, 739),				
(485, 'MARISERLA KRISHNAMURTHY NAIDU', 26, 485, 282),				
(486, 'VANGAPANDU MAHESWARA RAO', 26, 486, 436),				
(487, 'CHINNAM ARUNA KUMAR', 26, 487, 312),				
(488, 'ATCHIYYA NAIDU SAMIREDDY', 26, 488, 617),				
(489, 'ADINARAYANA TADDI', 26, 489, 282),				
(490, 'P V A ANANDA SAGAR', 26, 490, 282),				
(491, 'SAKHINETI ANANTHA RAJU', 26, 491, 513),				
(492, 'NOTA', 26, 492, 471),				
(493, 'TAPIR GAO', 27, 493, 158),				
(494, 'BOSIRAM SIRAM', 27, 494, 289),				
(495, 'TAMAT GAMOH', 27, 495, 282),				
(496, 'SOTAI KRI', 27, 496, 282),				
(497, 'OMAK NITIK', 27, 497, 282),				
(498, 'BANDEY MILI', 27, 498, 101),				
(499, 'NOTA', 27, 499, 471),				
(500, 'KIREN RIJIJU', 28, 500, 158),				
(501, 'NABAM TUKI', 28, 501, 289),				
(502, 'TECHI RANA', 28, 502, 282),				
(503, 'TOKO SHEETAL', 28, 503, 253),				
(504, 'BIMPAK SIGA', 28, 504, 282),				
(505, 'RUHI TAGUNG', 28, 505, 282),				
(506, 'LEKI NORBU', 28, 506, 282),				
(507, 'TANIA JUNE', 28, 507, 282),				
(508, 'NOTA', 28, 508, 471),				
(509, 'PHANI BHUSAN CHOUDHURY', 29, 509, 103),				
(510, 'DEEP BAYAN', 29, 510, 289),				
(511, 'MANORANJAN TALUKDAR', 29, 511, 227),				
(512, 'ABUL KALAM AZAD', 29, 512, 69),				
(513, 'DEWAN MOHIBUL ISLAM', 29, 513, 282),				
(514, 'SAMEJ UDDIN', 29, 514, 219),				
(515, 'DULU AHMED', 29, 515, 282),				
(516, 'MATIAR RAHMAN', 29, 516, 282),				
(517, 'JAGANNATH RAY', 29, 517, 282),				
(518, 'SHAJAHAN ALI KHAN', 29, 518, 734),				
(519, 'AYNAL HAQUE', 29, 519, 282),				
(520, 'CHITRALEKHA DAS', 29, 520, 666),				
(521, 'AMZAD ALI', 29, 521, 592),				
(522, 'ABUBAKKAR SIDDIQUE', 29, 522, 582),				
(523, 'NOTA', 29, 523, 471),				
(524, 'DILIP SAIKIA', 30, 524, 158),				
(525, 'MADHAB RAJBANGSHI', 30, 525, 289),				
(526, 'DURGADAS BORO', 30, 526, 219),				
(527, 'DANIEL MARDI', 30, 527, 282),				
(528, 'AROON BAROOA', 30, 528, 145),				
(529, 'SWARNA DEVI', 30, 529, 253),				
(530, 'LALIT PEGU', 30, 530, 734),				
(531, 'JITENDRA CHALIHA', 30, 531, 666),				
(532, 'ABUL KASEM', 30, 532, 592),				
(533, 'BIREN BASAK', 30, 533, 153),				
(534, 'ABDUL HAMED', 30, 534, 582),				
(535, 'NOTA', 30, 535, 471),				
(536, 'RAKIBUL HUSSAIN', 31, 536, 289),				
(537, 'MOHAMMED BADRUDDIN AJMAL', 31, 537, 71),				
(538, 'ZABED ISLAM', 31, 538, 103),				
(539, 'S. M. JIAUL HAQUE', 31, 539, 153),				
(540, 'FARUK KHAN', 31, 540, 282),				
(541, 'BISWAJIT RAY', 31, 541, 282),				
(542, 'ALAKESH ROY', 31, 542, 282),				
(543, 'HAFIZ BURHANUDDIN', 31, 543, 703),				
(544, 'RADHARANI BISWAS', 31, 544, 272),				
(545, 'TAHIDUR RAHMAN', 31, 545, 734),				
(546, 'SHUKUR ALI', 31, 546, 104),				
(547, 'SURAT ZAMAN MONDAL', 31, 547, 666),				
(548, 'REJAUL KARIM', 31, 548, 592),				
(549, 'NOTA', 31, 549, 471),				
(550, 'SARBANANDA SONOWAL', 32, 550, 158),				
(551, 'LURINJYOTI GOGOI', 32, 551, 105),				
(552, 'MANOJ DHANOWAR', 32, 552, 5),				
(553, 'NOTA', 32, 553, 471),				
(554, 'AMARSING TISSO', 33, 554, 158),				
(555, 'J. I. KATHAR', 33, 555, 282),				
(556, 'JOY RAM ENGLENG', 33, 556, 289),				
(557, 'JOHN BARNARD SANGMA', 33, 557, 253),				
(558, 'JOTSON BEY', 33, 558, 107),				
(559, 'NOTA', 33, 559, 471),				
(560, 'BIJULI KALITA  MEDHI', 34, 560, 158),				
(561, 'MIRA BORTHAKUR GOSWAMI', 34, 561, 289),				
(562, 'DIPAK KR BORO', 34, 562, 734),				
(563, 'COLONEL GOKUL CHANDRA SINGHA', 34, 563, 282),				
(564, 'AMITABH SARMA', 34, 564, 251),				
(565, 'KAZI NEKIB  AHMED', 34, 565, 282),				
(566, 'SAMAD CHOUDHURY', 34, 566, 153),				
(567, 'SHEJON GOYARY', 34, 567, 117),				
(568, 'NOTA', 34, 568, 471),				
(569, 'GAURAV GOGOI', 35, 569, 289),				
(570, 'TOPON KUMAR GOGOI', 35, 570, 158),				
(571, 'ARUN CHANDRA HANDIQUE', 35, 571, 251),				
(572, 'RAJ KUMAR DUWARA', 35, 572, 282),				
(573, 'NOTA', 35, 573, 471),				
(574, 'KRIPANATH MALLAH', 36, 574, 158),				
(575, 'HAFIZ RASHID AHMED CHOUDHURY', 36, 575, 289),				
(576, 'SAHABUL ISLAM CHOUDHURY', 36, 576, 71),				
(577, 'JIBESH DEB', 36, 577, 282),				
(578, 'DEBOJYOTI NATH', 36, 578, 282),				
(579, 'AHAD UDDIN', 36, 579, 582),				
(580, 'BINAY KRISHNA ROY', 36, 580, 282),				
(581, 'DILIP KUMAR', 36, 581, 282),				
(582, 'ROSID AHMED LASKAR', 36, 582, 282),				
(583, 'MUZAKKIR HASAN LASKAR', 36, 583, 282),				
(584, 'ABDUL BASIT TAPADAR', 36, 584, 282),				
(585, 'GOPAL CHANDRA PAUL', 36, 585, 282),				
(586, 'MD. NAZRUL ISLAM LASKAR', 36, 586, 282),				
(587, 'SAHEL AHMED', 36, 587, 282),				
(588, 'ABDUL GOFFAR TALUKDAR', 36, 588, 282),				
(589, 'SAFIKUR RAHMAN HAZARI', 36, 589, 282),				
(590, 'PRAJJWAL SUDIP DEB', 36, 590, 666),				
(591, 'ABDUL KALAM MAZUMDER', 36, 591, 282),				
(592, 'ALIM UDDIN MAZUMDER', 36, 592, 282),				
(593, 'ABDUL HAMEED', 36, 593, 282),				
(594, 'DEBASHISH GHOSH', 36, 594, 128),				
(595, 'RASHID AHMED CHOUDHURY', 36, 595, 282),				
(596, 'ABDUS  SUBHAN TAPADAR', 36, 596, 282),				
(597, 'ROKIBUL HUSSAIN CHOUDHURY', 36, 597, 282),				
(598, 'NOTA', 36, 598, 471),				
(599, 'KAMAKHYA PRASAD TASA', 37, 599, 158),				
(600, 'ROSELINA TIRKEY', 37, 600, 289),				
(601, 'DILUWARA BEGUM CHOWDHURY', 37, 601, 282),				
(602, 'BINOD GOGOI', 37, 602, 282),				
(603, 'ANIMA DEKA GUPTA', 37, 603, 734),				
(604, 'TRIDIV JYOTI BHUYAN', 37, 604, 282),				
(605, 'ABDUL HOQUE', 37, 605, 282),				
(606, 'JYOTISKA RANJAN GOSWAMI', 37, 606, 282),				
(607, 'SAILEN CH MALAKAR', 37, 607, 153),				
(608, 'SALIM AHMED', 37, 608, 104),				
(609, 'SALEH AHMED MAZUMDAR', 37, 609, 592),				
(610, 'NOTA', 37, 610, 471),				
(611, 'JOYANTA BASUMATARY', 38, 611, 709),				
(612, 'KAMPA BORGOYARI', 38, 612, 219),				
(613, 'GARJAN MASHAHARY', 38, 613, 289),				
(614, 'BINITA DEKA', 38, 614, 253),				
(615, 'PRITHVIRAJ NARAYAN DEV MECH', 38, 615, 282),				
(616, 'GAURI SANKAR SARANIA', 38, 616, 69),				
(617, 'RANJAY KR BRAHMA', 38, 617, 282),				
(618, 'LALIT PEGU', 38, 618, 734),				
(619, 'JYOTISH KUMAR DAS', 38, 619, 282),				
(620, 'PANKAJ ISLARY', 38, 620, 282),				
(621, 'TRIPTINA RABHA', 38, 621, 282),				
(622, 'AJOY NARZARY', 38, 622, 282),				
(623, 'NOTA', 38, 623, 471),				
(624, 'PRADAN BARUAH', 39, 624, 158),				
(625, 'UDAY SHANKAR HAZARIKA', 39, 625, 289),				
(626, 'DHIREN KACHARI', 39, 626, 226),				
(627, 'GHANA KANTA CHUTIA', 39, 627, 69),				
(628, 'BIKRAM RAMCHIARY', 39, 628, 282),				
(629, 'GOBIN BISWAKARMA', 39, 629, 282),				
(630, 'DEBA NATH PAIT', 39, 630, 282),				
(631, 'PALLAB PEGU', 39, 631, 666),				
(632, 'BIREN BAILUNG', 39, 632, 734),				
(633, 'NOTA', 39, 633, 471),				
(634, 'PRADYUT BORDOLOI', 40, 634, 289),				
(635, 'SURESH BORAH', 40, 635, 158),				
(636, 'AMINUL ISLAM', 40, 636, 71),				
(637, 'SIKHA SARMA', 40, 637, 282),				
(638, 'SAMSUL ALAM', 40, 638, 282),				
(639, 'BIPAD BHANJAN SARKAR', 40, 639, 282),				
(640, 'ANUPAM BARUAH', 40, 640, 308),				
(641, 'NIKHIL DEKARAJA', 40, 641, 282),				
(642, 'RABBUL HAQUE', 40, 642, 582),				
(643, 'ABU SHAMA', 40, 643, 282),				
(644, 'ABU EUSUF MD RAIHAN UDDIN', 40, 644, 282),				
(645, 'SANTANU MUKHERJEE', 40, 645, 153),				
(646, 'SAIFUL ISLAM CHOUDHURY', 40, 646, 104),				
(647, 'NOTA', 40, 647, 471),				
(648, 'PARIMAL SUKLABAIDYA', 41, 648, 158),				
(649, 'SURYA KANTA SARKAR', 41, 649, 289),				
(650, 'RADHESHYAM BISWAS', 41, 650, 69),				
(651, 'RAJU DAS', 41, 651, 282),				
(652, 'PROBASH CHANDRA SARKAR', 41, 652, 666),				
(653, 'ANANTA MOHAN ROY', 41, 653, 282),				
(654, 'RAJIB DAS', 41, 654, 117),				
(655, 'BARINDRA KUMAR DAS', 41, 655, 128),				
(656, 'NOTA', 41, 656, 471),				
(657, 'RANJIT DUTTA', 42, 657, 158),				
(658, 'PREMLAL GANJU', 42, 658, 289),				
(659, 'RISHIRAJ KAUNDINYA', 42, 659, 5),				
(660, 'RAJU DEURI', 42, 660, 219),				
(661, 'PRADIP BHANDARI', 42, 661, 282),				
(662, 'KAMESWAR SWARGIARY', 42, 662, 734),				
(663, 'RINKU ROY', 42, 663, 253),				
(664, 'ALAM ALI', 42, 664, 117),				
(665, 'NOTA', 42, 665, 471),				
(666, 'PRADEEP KUMAR SINGH', 43, 666, 158),				
(667, 'SHAHNAWAZ', 43, 667, 539),				
(668, 'SHATRUGHAN PRASAD SUMAN', 43, 668, 282),				
(669, 'MD GHOUSUL AZAM', 43, 669, 121),				
(670, 'MD. MOBINUL HAQUE', 43, 670, 282),				
(671, 'MD. ISMAIL', 43, 671, 164),				
(672, 'AKHILESH KUMAR', 43, 672, 282),				
(673, 'MUSHTAK ALAM', 43, 673, 282),				
(674, 'ZAWED AKHTAR', 43, 674, 703),				
(675, 'NOTA', 43, 675, 471),				
(676, 'SUDAMA PRASAD', 44, 676, 228),				
(677, 'R. K. SINGH', 44, 677, 158),				
(678, 'VIRENDRA KUMAR SINGH', 44, 678, 282),				
(679, 'SHIV DAS SINGH', 44, 679, 282),				
(680, 'LAL BADSAH SINGH', 44, 680, 121),				
(681, 'KRISHNA PASWAN', 44, 681, 190),				
(682, 'RANDHIR LAL', 44, 682, 282),				
(683, 'NAVNIT KUMAR', 44, 683, 282),				
(684, 'RAM SARE SINGH', 44, 684, 486),				
(685, 'DHARMATMA SHARMA', 44, 685, 666),				
(686, 'RAMJEE SINGH', 44, 686, 734),				
(687, 'ASHOK TIWARY', 44, 687, 282),				
(688, 'MANMOHAN SINGH', 44, 688, 527),				
(689, 'SUMITRA DEVI', 44, 689, 301),				
(690, 'NOTA', 44, 690, 471),				
(691, 'ABHAY KUMAR SINHA', 45, 691, 539),				
(692, 'SUSHIL KUMAR SINGH', 45, 692, 158),				
(693, 'SUNESH KUMAR', 45, 693, 121),				
(694, 'PRATIBHA RANI', 45, 694, 486),				
(695, 'RAJ BALLABH SINGH', 45, 695, 282),				
(696, 'RAMJIT SINGH', 45, 696, 545),				
(697, 'SURESH PRASAD VERMA', 45, 697, 282),				
(698, 'MOHAMMAD WALIULLAH KHAN', 45, 698, 282),				
(699, 'SHAILESH RAHI', 45, 699, 52),				
(700, 'NOTA', 45, 700, 471),				
(701, 'GIRIDHARI YADAV', 46, 701, 333),				
(702, 'JAI PRAKASH NARAYAN YADAV', 46, 702, 539),				
(703, 'NARESH YADAV', 46, 703, 282),				
(704, 'JAY PRAKASH YADAV', 46, 704, 545),				
(705, 'AMRIT TANTI', 46, 705, 179),				
(706, 'NARESH KUMAR PRIYADARSHI', 46, 706, 282),				
(707, 'GANESH KUMAR KUSHAWAHA', 46, 707, 620),				
(708, 'UTTAM KUMAR SINGH', 46, 708, 9),				
(709, 'KAVINDRA PANDIT', 46, 709, 666),				
(710, 'UMAKANT YADAV', 46, 710, 282),				
(711, 'NOTA', 46, 711, 471),				
(712, 'GIRIRAJ SINGH', 47, 712, 158),				
(713, 'ABDHESH KUMAR ROY', 47, 713, 226),				
(714, 'INDRAJEET KUMAR ROY', 47, 714, 282),				
(715, 'RAJNISH KUMAR MUKHIYA', 47, 715, 545),				
(716, 'ADV CHANDAN KUMAR DAS', 47, 716, 121),				
(717, 'RAM BADAN RAI', 47, 717, 368),				
(718, 'MD SHAHNAWAZ HASSAN', 47, 718, 282),				
(719, 'ARUN KUMAR', 47, 719, 282),				
(720, 'RAJ KUMAR SAH', 47, 720, 49),				
(721, 'RAMUDGAR', 47, 721, 666),				
(722, 'NOTA', 47, 722, 471),				
(723, 'AJAY KUMAR MANDAL', 48, 723, 333),				
(724, 'AJEET SHARMA', 48, 724, 289),				
(725, 'POONAM SINGH', 48, 725, 121),				
(726, 'HARERAM YADAV', 48, 726, 282),				
(727, 'DEEPAK KUMAR SINGH', 48, 727, 545),				
(728, 'CHHOTE LAL KUMAR', 48, 728, 282),				
(729, 'RAMESH TUDU', 48, 729, 282),				
(730, 'UMESH PRASAD YADAV', 48, 730, 486),				
(731, 'DEEPAK KUMAR', 48, 731, 666),				
(732, 'MUKESH KUMAR', 48, 732, 49),				
(733, 'DAYARAM MANDAL', 48, 733, 387),				
(734, 'OM PRAKASH PODDAR', 48, 734, 282),				
(735, 'NOTA', 48, 735, 471),				
(736, 'SUDHAKAR SINGH', 49, 736, 539),				
(737, 'MITHILESH TIWARI', 49, 737, 158),				
(738, 'ANIL KUMAR', 49, 738, 121),				
(739, 'ANAND MISHRA S/O- PARAM HANS MISHRA', 49, 739, 282),				
(740, 'DADAN YADAV', 49, 740, 282),				
(741, 'SUDHAKAR MISHRA', 49, 741, 282),				
(742, 'SUNIL KUMAR DUBY', 49, 742, 282),				
(743, 'RAM SWAROOP CHAUHAN', 49, 743, 282),				
(744, 'RAJU SINGH', 49, 744, 118),				
(745, 'AANAND MISRA S/O MADAN KUMAR MISRA', 49, 745, 282),				
(746, 'BHAGWAN SINGH YADAV', 49, 746, 282),				
(747, 'NIRANJAN KUMAR RAY', 49, 747, 282),				
(748, 'HEM LATA', 49, 748, 301),				
(749, 'AKHILESH KUMAR PANDEY', 49, 749, 282),				
(750, 'NOTA', 49, 750, 471),				
(751, 'GOPAL JEE THAKUR', 50, 751, 158),				
(752, 'LALIT KUMAR YADAV', 50, 752, 539),				
(753, 'SAROJ CHAUDHARY', 50, 753, 425),				
(754, 'DURGANANDA MAHAVIR NAYAK', 50, 754, 121),				
(755, 'MITHILESH MAHTO', 50, 755, 282),				
(756, 'KISHOR KUMAR DAS', 50, 756, 49),				
(757, 'RAJNISH KUMAR', 50, 757, 348),				
(758, 'RANJEET KUMAR RAM', 50, 758, 735),				
(759, 'NOTA', 50, 759, 471),				
(760, 'JITAN RAM MANJHI', 51, 760, 279),				
(761, 'KUMAR SARVJEET', 51, 761, 539),				
(762, 'SUSHMA KUMARI', 51, 762, 121),				
(763, 'DEVENDRA PRATAP', 51, 763, 282),				
(764, 'DHEERENDRA PRASAD', 51, 764, 398),				
(765, 'GIRIDHAR SAPERA', 51, 765, 703),				
(766, 'RANU KUMAR CHAUDHARY', 51, 766, 282),				
(767, 'RANJAN KUMAR', 51, 767, 282),				
(768, 'AYUSH KUMAR', 51, 768, 282),				
(769, 'SURENDRA MANJHI', 51, 769, 545),				
(770, 'AMRESH KUMAR', 51, 770, 282),				
(771, 'ASHOK KUMAR PASWAN', 51, 771, 282),				
(772, 'ARUN KUMAR', 51, 772, 282),				
(773, 'SHEO SHANKAR', 51, 773, 192),				
(774, 'NOTA', 51, 774, 471),				
(775, 'DR. ALOK KUMAR SUMAN', 52, 775, 333),				
(776, 'PREM NATH CHANCHAL ALIAS CHANCHAL PASWAN', 52, 776, 727),				
(777, 'DINANATH MANJHI', 52, 777, 64),				
(778, 'SUJEET KUMAR RAM', 52, 778, 121),				
(779, 'ANIL RAM', 52, 779, 282),				
(780, 'SATYENDRA BAITHA', 52, 780, 282),				
(781, 'BHOLA HARIJAN', 52, 781, 282),				
(782, 'RAM KUMAR MANJHI', 52, 782, 253),				
(783, 'NAMI RAM', 52, 783, 282),				
(784, 'SURENDRA RAM', 52, 784, 202),				
(785, 'JITENDRA RAM', 52, 785, 118),				
(786, 'NOTA', 52, 786, 471),				
(787, 'CHIRAG PASWAN', 53, 787, 384),				
(788, 'SHIV CHANDRA RAM', 53, 788, 539),				
(789, 'SURENDRA KUMAR PASWAN', 53, 789, 282),				
(790, 'SHASHI SWARAJ', 53, 790, 121),				
(791, 'HARIWANSH PASWAN', 53, 791, 282),				
(792, 'SHAILENDRA KUMAR', 53, 792, 282),				
(793, 'ASHOK KUMAR', 53, 793, 620),				
(794, 'RANDHIR PASWAN', 53, 794, 282),				
(795, 'RAJ KUMAR PASWAN', 53, 795, 740),				
(796, 'DHARMENDRA KUMAR', 53, 796, 348),				
(797, 'MADHUSUDHAN PASWAN', 53, 797, 282),				
(798, 'RAJESH KUMAR RAUSHAN', 53, 798, 666),				
(799, 'MEGHNATH PASWAN', 53, 799, 282),				
(800, 'BALENDRA DAS', 53, 800, 339),				
(801, 'NOTA', 53, 801, 471),				
(802, 'SURENDRA PRASAD YADAV', 54, 802, 539),				
(803, 'CHANDESHWAR PRASAD', 54, 803, 333),				
(804, 'ARUN KUMAR', 54, 804, 121),				
(805, 'MINTA DEVI', 54, 805, 282),				
(806, 'MUNILAL YADAV', 54, 806, 282),				
(807, 'ASHUTOSH KUMAR', 54, 807, 535),				
(808, 'DEEPAK KUMAR', 54, 808, 301),				
(809, 'BUDDHADEV SAV', 54, 809, 282),				
(810, 'NARESH KUMAR', 54, 810, 282),				
(811, 'CHANDESHWAR PRASAD', 54, 811, 282),				
(812, 'PIYUSH SINGH', 54, 812, 658),				
(813, 'RAJ KISHOR SHARMA', 54, 813, 207),				
(814, 'KAPIL CHAUHAN', 54, 814, 320),				
(815, 'ASHUTOSH VINAY KUMAR', 54, 815, 531),				
(816, 'UMA SHANKAR VERMA', 54, 816, 666),				
(817, 'NOTA', 54, 817, 471),				
(818, 'ARUN BHARTI', 55, 818, 384),				
(819, 'ARCHANA KUMARI', 55, 819, 539),				
(820, 'SUBHASH PASWAN', 55, 820, 282),				
(821, 'SAKALDEO DAS', 55, 821, 121),				
(822, 'SRAWON KUMAR', 55, 822, 545),				
(823, 'JAGDISH PRASAD', 55, 823, 397),				
(824, 'SANTOSH KUMAR DAS', 55, 824, 666),				
(825, 'NOTA', 55, 825, 471),				
(826, 'RAMPRIT MANDAL', 56, 826, 333),				
(827, 'SUMAN KUMAR MAHASETH', 56, 827, 727),				
(828, 'GULAB YADAV', 56, 828, 121),				
(829, 'RAM PRASAD RAUT', 56, 829, 282),				
(830, 'GANGA PRASAD YADAV', 56, 830, 282),				
(831, 'GAURI SHANKAR SAHU', 56, 831, 282),				
(832, 'RAJIV KUMAR JHA', 56, 832, 282),				
(833, 'BABLU KUMAR', 56, 833,26),				
(834, 'VIDYA NAND RAM', 56, 834, 735),				
(835, 'VIJAY KUMAR MANDAL', 56, 835, 666),				
(836, 'NOTA', 56, 836, 471),				
(837, 'RAJA RAM SINGH', 57, 837, 228),				
(838, 'PAWAN SINGH', 57, 838, 282),				
(839, 'UPENDRA KUSHWAHA', 57, 839, 558),				
(840, 'DHEERAJ KUMAR SINGH', 57, 840, 121),				
(841, 'RAJA RAM SINGH', 57, 841, 282),				
(842, 'PRIYANKA PRASAD CHOUDHARY', 57, 842, 64),				
(843, 'AJEET KUMAR SINGH', 57, 843, 486),				
(844, 'VIKASH VINAYAK', 57, 844, 320),				
(845, 'INDRA RAJ ROUSHAN', 57, 845, 282),				
(846, 'PRADEEP KUMAR JOSHI', 57, 846, 522),				
(847, 'AVADHESH PASAWAN', 57, 847, 147),				
(848, 'RAJESHWAR PASWAN', 57, 848, 52),				
(849, 'PRAYAG PASWAN', 57, 849, 666),				
(850, 'NOTA', 57, 850, 471),				
(851, 'TARIQ ANWAR', 58, 851, 289),				
(852, 'DULAL CHANDRA GOSWAMI', 58, 852, 333),				
(853, 'GOPAL KUMAR MAHTO', 58, 853, 121),				
(854, 'GYANESHWAR SOREN', 58, 854, 282),				
(855, 'KHALID MOBARAK', 58, 855, 282),				
(856, 'RAJ KUMAR MANDAL', 58, 856, 545),				
(857, 'VISHNU SINGH', 58, 857, 132),				
(858, 'MARANG HANSADA', 58, 858, 486),				
(859, 'BINDU KUMARI', 58, 859, 610),				
(860, 'NOTA', 58, 860, 471),				
(861, 'RAJESH VERMA', 59, 861, 384),				
(862, 'SANJAY KUMAR', 59, 862, 227),				
(863, 'RUPAM DEVI', 59, 863, 282),				
(864, 'SONU KUMAR', 59, 864, 282),				
(865, 'PINKESH KUMAR', 59, 865, 536),				
(866, 'DR RAVI KUMAR', 59, 866, 121),				
(867, 'AJAY KUMAR', 59, 867, 545),				
(868, 'PRIYADARSHEE DINKAR', 59, 868, 282),				
(869, 'DINANATH CHANDRAVANSHI', 59, 869, 282),				
(870, 'CHANDRA KISHOR THAKUR', 59, 870, 9),				
(871, 'ASIF IMAM', 59, 871,26),				
(872, 'KANCHAN MALA', 59, 872, 275),				
(873, 'NOTA', 59, 873, 471),				
(874, 'MOHAMMAD JAWED', 60, 874, 289),				
(875, 'MUJAHID ALAM', 60, 875, 333),				
(876, 'AKHTARUL IMAN', 60, 876, 64),				
(877, 'BIDESHI RISHIDEV', 60, 877, 282),				
(878, 'VISHWANATH TUDU', 60, 878, 282),				
(879, 'MD GUFRAN JAMALI', 60, 879, 282),				
(880, 'HASIRUL', 60, 880, 282),				
(881, 'BABUL ALAM', 60, 881, 121),				
(882, 'RAVI KUMAR ROY', 60, 882, 282),				
(883, 'SHAHABUZZAMA BHARTIYA', 60, 883, 572),				
(884, 'CHHOTE LAL MAHTO', 60, 884, 282),				
(885, 'MOHAMMAD KAUSAR PERWEZ', 60, 885, 282),				
(886, 'NOTA', 60, 886, 471),				
(887, 'DINESH CHANDRA YADAV', 61, 887, 333),				
(888, 'DA KUMAR CHANDRADEEP', 61, 888, 539),				
(889, 'SURESHWAR PODDAR', 61, 889,539),				
(890, 'MD ARSHAD HUSSAIN', 61, 890, 121),				
(891, 'JAWAHAR LAL JAISWAL', 61, 891, 666),				
(892, 'UCHESHWAR PANDIT', 61, 892, 612),				
(893, 'PRO KAMESHWAR YADAV', 61, 893, 156),				
(894, 'AJABLAL MEHTA', 61, 894, 741),				
(895, 'NOTA', 61, 895, 471),				
(896, 'ASHOK KUMAR YADAV', 62, 896, 158),				
(897, 'MD ALI ASHRAF FATMI', 62, 897, 539),				
(898, 'SHIV BODHAN SAHU', 62, 898, 282),				
(899, 'BIKASH KUMAR', 62, 899, 121),				
(900, 'PRIYE RANJAN', 62, 900, 282),				
(901, 'VAIDYANATH YADAV', 62, 901, 486),				
(902, 'SARFARAJ ALAM', 62, 902, 49),				
(903, 'MD WAQUAR SIDDIQUI', 62, 903, 64),				
(904, 'MOHAN SHARMA', 62, 904, 545),				
(905, 'ABU BAKAR RAHMANI', 62, 905, 230),				
(906, 'UDAY MANDAL', 62, 906, 620),				
(907, 'KUL BHUSHAN PRASAD', 62, 907, 396),				
(908, 'NOTA', 62, 908, 471),				
(909, 'JANARDAN SINGH "SIGRIWAL"', 63, 909, 158),				
(910, 'AAKASH KUMAR SINGH', 63, 910, 289),				
(911, 'TRIBHUWAN RAM', 63, 911, 486),				
(912, 'MADHUSUDAN SINGH', 63, 912, 121),				
(913, 'AKHILESHWAR PRASAD SINGH', 63, 913, 64),				
(914, 'NOTA', 63, 914, 471),				
(915, 'RAJIV RANJAN SINGH ALIAS LALAN SINGH', 64, 915, 333),				
(916, 'KUMARI ANITA', 64, 916, 539),				
(917, 'SHANKAR PRASAD BIND', 64, 917, 282),				
(918, 'PRIYADARSHI PIYUSH', 64, 918, 282),				
(919, 'A. K. SINGH â€˜ASHOKâ€™', 64, 919, 282),				
(920, 'KUMAR NAVNEET HIMANSHU', 64, 920, 121),				
(921, 'KULDIP YADAV', 64, 921, 275),				
(922, 'NEETISH KUMAR', 64, 922, 282),				
(923, 'PRAVAL KUMAR', 64, 923, 282),				
(924, 'RAVINDRA MANDAL', 64, 924, 666),				
(925, 'ADITYA SINGH MADHUKAR', 64, 925, 282),				
(926, 'PANKAJ KUMAR', 64, 926, 282),				
(927, 'NOTA', 64, 927, 471),				
(928, 'RAJ BHUSHAN CHOUDHARY', 65, 928, 158),				
(929, 'AJAY NISHAD', 65, 929, 289),				
(930, 'ALOK KUMAR SINH', 65, 930, 282),				
(931, 'AWADHESH PRASAD SINGH', 65, 931, 282),				
(932, 'JITENDRA KUMAR', 65, 932, 282),				
(933, 'NILIMA KUMARI', 65, 933, 282),				
(934, 'VIJAYESH KUMAR', 65, 934, 121),				
(935, 'AJAY SAHNI', 65, 935, 282),				
(936, 'SUNITA KUMARI', 65, 936, 126),				
(937, 'MOHAMMAD ANZARUL HASAN', 65, 937, 64),				
(938, 'MD HAIDAR', 65, 938, 282),				
(939, 'MUKESH KUMAR', 65, 939, 282),				
(940, 'SUDHIR KUMAR OJHA', 65, 940, 207),				
(941, 'SABINA KHATOON', 65, 941, 290),				
(942, 'SANDIP KUMAR', 65, 942, 348),				
(943, 'ARVIND KUMAR CHAUDHARY', 65, 943, 666),				
(944, 'AJITANSH GAUR', 65, 944, 702),				
(945, 'SANJAY KUMAR', 65, 945, 282),				
(946, 'BASKIT KUMAR SHARMA', 65, 946, 282),				
(947, 'SONELAL PASWAN', 65, 947, 282),				
(948, 'MANORANJAN KUMAR', 65, 948, 282),				
(949, 'NAND KISHORE SHARMA', 65, 949, 96),				
(950, 'ABHAY KUMAR', 65, 950, 620),				
(951, 'PRABHAKAR RANJAN', 65, 951, 251),				
(952, 'RAJU SINGH', 65, 952, 282),				
(953, 'SAROJ KUMAR CHAUDHARY', 65, 953, 282),				
(954, 'NOTA', 65, 954, 471),				
(955, 'KAUSHALENDRA KUMAR', 66, 955, 333),				
(956, 'DR. SANDEEP SAURAV', 66, 956, 228),				
(957, 'SUDHIR KUMAR', 66, 957, 634),				
(958, 'SURENDRA PRASAD', 66, 958, 54),				
(959, 'SHASHI KUMAR', 66, 959, 610),				
(960, 'PRAMOD KUMAR NIRALA', 66, 960, 121),				
(961, 'AJEET KUMAR', 66, 961, 282),				
(962, 'VINAY PRATAP SINGH', 66, 962, 575),				
(963, 'SANJAY RAJESH', 66, 963, 368),				
(964, 'SUDHIR DAS', 66, 964, 282),				
(965, 'KANHAIYA LAL YADAV', 66, 965, 301),				
(966, 'SANYUKTA KUMARI', 66, 966, 282),				
(967, 'AJIT KUMAR', 66, 967, 282),				
(968, 'SHYAM SUNDAR PRASAD', 66, 968, 282),				
(969, 'RAMESH KUMAR', 66, 969, 438),				
(970, 'KISLAY KUMAR', 66, 970, 282),				
(971, 'KESHO JAMADAR', 66, 971, 486),				
(972, 'SURENDER SINGH', 66, 972, 282),				
(973, 'DILIP KUMAR', 66, 973, 428),				
(974, 'NAND KISHOR PARASAD', 66, 974, 493),				
(975, 'NISHA RANJAN', 66, 975, 620),				
(976, 'SHASHIRANJAN SUMAN', 66, 976, 282),				
(977, 'GHANSHYAM PRASAD SINGH', 66, 977, 282),				
(978, 'KUMAR HARI CHARAN SINGH YADAV', 66, 978, 164),				
(979, 'MUNNA KUMAR', 66, 979, 630),				
(980, 'MUNNA KUMAR', 66, 980, 616),				
(981, 'PAWAN KUMAR', 66, 981, 282),				
(982, 'PUJA DEVI', 66, 982, 282),				
(983, 'CHANDRA KISHOR PRASAD YADAV', 66, 983, 282),				
(984, 'NOTA', 66, 984, 471),				
(985, 'VIVEK THAKUR', 67, 985, 158),				
(986, 'SHRAWAN KUMAR', 67, 986, 539),				
(987, 'BINOD YADAV', 67, 987, 282),				
(988, 'GUNJAN KUMAR', 67, 988, 282),				
(989, 'RANJIT KUMAR', 67, 989, 121),				
(990, 'ANAND KUMAR VERMA', 67, 990, 134),				
(991, 'GAUTAM KUMAR BABLOO', 67, 991, 130),				
(992, 'GANAURI PANDIT', 67, 992, 486),				
(993, 'NOTA', 67, 993, 471),				
(994, 'DR.SANJAY JAISWAL', 68, 994, 158),				
(995, 'MADAN MOHAN TIWARI', 68, 995, 289),				
(996, 'SANJAY KUMAR', 68, 996, 728),				
(997, 'UPENDRA RAM', 68, 997, 121),				
(998, 'MOHAMMAD SOAIB', 68, 998, 282),				
(999, 'RAUSHAN KUMAR SRIVASTAVA', 68, 999, 282),				
(1000, 'MD. KALAM SAI', 68, 1000, 282);		
select * from Candidate;

describe votes;
insert into votes(Vote_ID,EVMVotes,PostalVotes,TotalVotes,Votes_Percent,Candidate_ID,Result_ID) values
(1, 102182, 254, 102436, 50.58, 1, 1),
(2, 77829, 211, 78040, 38.54, 2, 2),
(3, 8236, 18, 8254, 4.08, 3, 3),
(4, 6009, 8, 6017, 2.97, 4, 4),
(5, 2195, 8, 2203, 1.09, 5, 5),
(6, 911, 3, 914, 0.45, 6, 6),
(7, 714, 5, 719, 0.36, 7, 7),
(8, 539, 3, 542, 0.27, 8, 8),
(9, 506, 1, 507, 0.25, 9, 9),
(10, 378, 2, 380, 0.19, 10, 10),
(11, 349, 2, 351, 0.17, 11, 11),
(12, 342, 1, 342, 0.17, 12, 12),
(13, 1802, 7, 1809, 0.89, 13, 13),
(14, 786149, 10832, 796981, 61.25, 14, 14),
(15, 450362, 4423, 454785, 34.95, 15, 15),
(16, 14523, 559, 15082, 1.16, 16, 16),
(17, 5202, 186, 5388, 0.41, 17, 17),
(18, 3736, 5, 3741, 0.29, 18, 18),
(19, 2974, 3, 2977, 0.23, 19, 19),
(20, 2104, 7, 2111, 0.16, 20, 20),
(21, 1741, 4, 1745, 0.13, 21, 21),
(22, 866, 6, 872, 0.07, 22, 22),
(23, 738, 2, 740, 0.06, 23, 23),
(24, 718, 1, 719, 0.06, 24, 24),
(25, 717, 9, 726, 0.06, 25, 25),
(26, 628, 7, 635, 0.05, 26, 26),
(27, 579, 2, 581, 0.04, 27, 27),
(28, 502, 3, 505, 0.04, 28, 28),
(29, 13418, 100, 13518, 1.04, 29, 29),
(30, 750027, 12042, 762069, 57.5, 30, 30),
(31, 459762, 5777, 465539, 35.13, 31, 31),
(32, 24833, 818, 25651, 1.94, 32, 32),
(33, 19082, 75, 19157, 1.45, 33, 33),
(34, 4001, 1, 4002, 0.3, 34, 34),
(35, 3845, 7, 3852, 0.29, 35, 35),
(36, 3549, 8, 3557, 0.27, 36, 36),
(37, 3116, 8, 3124, 0.24, 37, 37),
(38, 2589, 30, 2619, 0.2, 38, 38),
(39, 2179, 5, 2184, 0.16, 39, 39),
(40, 1886, 27, 1913, 0.14, 40, 40),
(41, 1578, 13, 1591, 0.12, 41, 41),
(42, 1567, 9, 1576, 0.12, 42, 42),
(43, 1195, 6, 1201, 0.09, 43, 43),
(44, 1055, 7, 1062, 0.08, 44, 44),
(45, 26084, 151, 26235, 1.98, 45, 45),
(46, 755862, 12383, 768245, 53.33, 46, 46),
(47, 573769, 5921, 579690, 40.24, 47, 47),
(48, 41954, 1263, 43217, 3, 48, 48),
(49, 6436, 3, 6439, 0.45, 49, 49),
(50, 6280, 116, 6396, 0.44, 50, 50),
(51, 5775, 3, 5778, 0.4, 51, 51),
(52, 4862, 127, 4989, 0.35, 52, 52),
(53, 2927, 8, 2935, 0.2, 53, 53),
(54, 2533, 7, 2540, 0.18, 54, 54),
(55, 1514, 4, 1518, 0.11, 55, 55),
(56, 1488, 6, 1494, 0.1, 56, 56),
(57, 1317, 1, 1318, 0.09, 57, 57),
(58, 1086, 5, 1091, 0.08, 58, 58),
(59, 1085, 6, 1091, 0.08, 59, 59),
(60, 903, 1, 904, 0.06, 60, 60),
(61, 749, 4, 753, 0.05, 61, 61),
(62, 735, 10, 745, 0.05, 62, 62),
(63, 574, 4, 578, 0.04, 63, 63),
(64, 566, 4, 570, 0.04, 64, 64),
(65, 489, 5, 494, 0.03, 65, 65),
(66, 439, 5, 444, 0.03, 66, 66),
(67, 9014, 185, 9199, 0.64, 67, 67),
(68, 471470, 5535, 477005, 40.96, 68, 68),
(69, 417113, 9312, 426425, 36.62, 69, 69),
(70, 119016, 4113, 123129, 10.57, 70, 70),
(71, 24858, 892, 25750, 2.21, 71, 71),
(72, 9493, 42, 9535, 0.82, 72, 72),
(73, 8798, 664, 9462, 0.81, 73, 73),
(74, 8121, 15, 8136, 0.7, 74, 74),
(75, 7205, 47, 7252, 0.62, 75, 75),
(76, 6370, 396, 6766, 0.58, 76, 76),
(77, 6000, 47, 6047, 0.52, 77, 77),
(78, 4933, 26, 4959, 0.43, 78, 78),
(79, 4931, 36, 4967, 0.43, 79, 79),
(80, 4500, 42, 4542, 0.39, 80, 80),
(81, 50205, 265, 50470, 4.33, 81, 81),
(82, 706757, 10736, 717493, 55.16, 82, 82),
(83, 503816, 5646, 509462, 39.17, 83, 83),
(84, 41673, 1586, 43259, 3.33, 84, 84),
(85, 6774, 83, 6857, 0.53, 85, 85),
(86, 2888, 76, 2964, 0.23, 86, 86),
(87, 1311, 7, 1318, 0.1, 87, 87),
(88, 1046, 5, 1051, 0.08, 88, 88),
(89, 893, 4, 897, 0.07, 89, 89),
(90, 791, 6, 797, 0.06, 90, 90),
(91, 704, 25, 729, 0.06, 91, 91),
(92, 669, 4, 673, 0.05, 92, 92),
(93, 547, 2, 549, 0.04, 93, 93),
(94, 408, 4, 412, 0.03, 94, 94),
(95, 294, 12, 306, 0.02, 95, 95),
(96, 252, 3, 255, 0.02, 96, 96),
(97, 13599, 124, 13723, 1.06, 97, 97),
(98, 765536, 12535, 778071, 54.84, 98, 98),
(99, 552469, 5123, 557592, 39.3, 99, 99),
(100, 29431, 719, 30150, 2.12, 100, 100),
(101, 13389, 122, 13511, 0.95, 101, 101),
(102, 6889, 84, 6973, 0.49, 102, 102),
(103, 3954, 2, 3956, 0.28, 103, 103),
(104, 2822, 11, 2833, 0.2, 104, 104),
(105, 2365, 1, 2366, 0.17, 105, 105),
(106, 1934, 1, 1935, 0.14, 106, 106),
(107, 1878, 7, 1885, 0.13, 107, 107),
(108, 1575, 3, 1578, 0.11, 108, 108),
(109, 1109, 10, 1119, 0.08, 109, 109),
(110, 902, 4, 906, 0.06, 110, 110),
(111, 862, 32, 894, 0.06, 111, 111),
(112, 856, 1, 857, 0.06, 112, 112),
(113, 670, 6, 676, 0.05, 113, 113),
(114, 547, 5, 552, 0.04, 114, 114),
(115, 532, 2, 534, 0.04, 115, 115),
(116, 490, 3, 493, 0.03, 116, 116),
(117, 11812, 164, 11976, 0.84, 117, 117),
(118, 737644, 8707, 746351, 54, 118, 118),
(119, 559318, 5176, 564494, 40.84, 119, 119),
(120, 19820, 1006, 20826, 1.51, 120, 120),
(121, 12197, 13, 12210, 0.88, 121, 121),
(122, 6664, 68, 6732, 0.49, 122, 122),
(123, 2253, 10, 2263, 0.16, 123, 123),
(124, 1523, 3, 1526, 0.11, 124, 124),
(125, 1172, 8, 1180, 0.09, 125, 125),
(126, 1001, 3, 1004, 0.07, 126, 126),
(127, 777, 9, 786, 0.06, 127, 127),
(128, 729, 3, 732, 0.05, 128, 128),
(129, 710, 5, 715, 0.05, 129, 129),
(130, 705, 10, 715, 0.05, 130, 130),
(131, 22371, 144, 22515, 1.63, 131, 131),
(132, 851020, 13928, 864948, 60.68, 132, 132),
(133, 513563, 6690, 520253, 36.5, 133, 133),
(134, 8317, 320, 8637, 0.61, 134, 134),
(135, 5628, 1, 5629, 0.39, 135, 135),
(136, 4172, 100, 4272, 0.3, 136, 136),
(137, 1959, 5, 1964, 0.14, 137, 137),
(138, 1748, 5, 1753, 0.12, 138, 138),
(139, 1273, 2, 1275, 0.09, 139, 139),
(140, 1216, 6, 1222, 0.09, 140, 140),
(141, 1029, 2, 1031, 0.07, 141, 141),
(142, 688, 4, 692, 0.05, 142, 142),
(143, 540, 2, 542, 0.04, 143, 143),
(144, 461, 0, 461, 0.03, 144, 144),
(145, 409, 5, 414, 0.03, 145, 145),
(146, 387, 4, 391, 0.03, 146, 146),
(147, 374, 4, 378, 0.03, 147, 147),
(148, 368, 7, 375, 0.03, 148, 148),
(149, 353, 5, 358, 0.03, 149, 149),
(150, 350, 7, 357, 0.03, 150, 150),
(151, 335, 0, 335, 0.02, 151, 151),
(152, 334, 1, 335, 0.02, 152, 152),
(153, 328, 4, 332, 0.02, 153, 153),
(154, 308, 4, 312, 0.02, 154, 154),
(155, 306, 4, 310, 0.02, 155, 155),
(156, 304, 12, 316, 0.02, 156, 156),
(157, 268, 0, 268, 0.02, 157, 157),
(158, 262, 4, 266, 0.02, 158, 158),
(159, 200, 7, 207, 0.01, 159, 159),
(160, 179, 0, 179, 0.01, 160, 160),
(161, 172, 0, 172, 0.01, 161, 161),
(162, 7210, 177, 7387, 0.52, 162, 162),
(163, 713013, 12521, 725534, 51.23, 163, 163),
(164, 587406, 5701, 593107, 41.88, 164, 164),
(165, 53989, 1070, 55059, 3.89, 165, 165),
(166, 7949, 66, 8015, 0.57, 166, 166),
(167, 5380, 64, 5444, 0.38, 167, 167),
(168, 2270, 8, 2278, 0.16, 168, 168),
(169, 2045, 6, 2051, 0.14, 169, 169),
(170, 1611, 20, 1631, 0.12, 170, 170),
(171, 1317, 11, 1328, 0.09, 171, 171),
(172, 1282, 10, 1292, 0.09, 172, 172),
(173, 1227, 10, 1237, 0.09, 173, 173),
(174, 693, 17, 710, 0.05, 174, 174),
(175, 679, 3, 682, 0.05, 175, 175),
(176, 17826, 145, 17971, 1.27, 176, 176),
(177, 598406, 6737, 605143, 45.78, 177, 177),
(178, 532358, 10090, 542448, 41.03, 178, 178),
(179, 136395, 4644, 141039, 10.67, 179, 179),
(180, 3790, 20, 3810, 0.29, 180, 180),
(181, 3500, 70, 3570, 0.27, 181, 181),
(182, 2414, 16, 2430, 0.18, 182, 182),
(183, 2329, 4, 2333, 0.18, 183, 183),
(184, 1087, 1, 1088, 0.08, 184, 184),
(185, 752, 3, 755, 0.06, 185, 185),
(186, 633, 14, 647, 0.05, 186, 186),
(187, 619, 5, 624, 0.05, 187, 187),
(188, 432, 7, 439, 0.03, 188, 188),
(189, 414, 20, 434, 0.03, 189, 189),
(190, 358, 11, 369, 0.03, 190, 190),
(191, 16660, 186, 16846, 1.27, 191, 191),
(192, 718971, 10728, 729699, 54.87, 192, 192),
(193, 495188, 5020, 500208, 37.62, 193, 193),
(194, 20258, 851, 21109, 1.59, 194, 194),
(195, 15578, 125, 15703, 1.18, 195, 195),
(196, 11916, 63, 11979, 0.9, 196, 196),
(197, 9818, 36, 9854, 0.74, 197, 197),
(198, 6516, 43, 6559, 0.49, 198, 198),
(199, 3924, 3, 3927, 0.3, 199, 199),
(200, 2816, 7, 2823, 0.21, 200, 200),
(201, 2645, 2, 2647, 0.2, 201, 201),
(202, 1963, 6, 1969, 0.15, 202, 202),
(203, 1762, 18, 1780, 0.13, 203, 203),
(204, 1687, 0, 1687, 0.13, 204, 204),
(205, 1401, 11, 1412, 0.11, 205, 205),
(206, 1222, 5, 1227, 0.09, 206, 206),
(207, 17105, 115, 17220, 1.29, 207, 207),
(208, 650335, 8579, 658914, 49.51, 208, 208),
(209, 543801, 3815, 547616, 41.15, 209, 209),
(210, 68972, 1401, 70373, 5.29, 210, 210),
(211, 8533, 56, 8589, 0.65, 211, 211),
(212, 5891, 9, 5900, 0.44, 212, 212),
(213, 5125, 2, 5127, 0.39, 213, 213),
(214, 3504, 4, 3508, 0.26, 214, 214),
(215, 3070, 6, 3076, 0.23, 215, 215),
(216, 2576, 6, 2582, 0.19, 216, 216),
(217, 2222, 3, 2225, 0.17, 217, 217),
(218, 2058, 16, 2074, 0.16, 218, 218),
(219, 1847, 9, 1856, 0.14, 219, 219),
(220, 1565, 36, 1601, 0.12, 220, 220),
(221, 1385, 5, 1390, 0.1, 221, 221),
(222, 1284, 11, 1295, 0.1, 222, 222),
(223, 1162, 2, 1164, 0.09, 223, 223),
(224, 1149, 14, 1163, 0.09, 224, 224),
(225, 1032, 1, 1033, 0.08, 225, 225),
(226, 777, 6, 783, 0.06, 226, 226),
(227, 10394, 117, 10511, 0.79, 227, 227),
(228, 712149, 12290, 724439, 55.22, 228, 228),
(229, 495211, 6049, 501260, 38.21, 229, 229),
(230, 31130, 695, 31825, 2.43, 230, 230),
(231, 10518, 623, 11141, 0.85, 231, 231),
(232, 9911, 117, 10028, 0.76, 232, 232),
(233, 5245, 9, 5254, 0.4, 233, 233),
(234, 5206, 14, 5220, 0.4, 234, 234),
(235, 2206, 8, 2214, 0.17, 235, 235),
(236, 1989, 2, 1991, 0.15, 236, 236),
(237, 1576, 6, 1582, 0.12, 237, 237),
(238, 1233, 2, 1235, 0.09, 238, 238),
(239, 1102, 9, 1111, 0.08, 239, 239),
(240, 1020, 2, 1022, 0.08, 240, 240),
(241, 928, 2, 930, 0.07, 241, 241),
(242, 625, 1, 626, 0.05, 242, 242),
(243, 12008, 118, 12126, 0.92, 243, 243),
(244, 689417, 11714, 701131, 49.92, 244, 244),
(245, 583155, 6001, 589156, 41.95, 245, 245),
(246, 54920, 1284, 56204, 4, 246, 246),
(247, 8190, 1, 8191, 0.58, 247, 247),
(248, 7768, 63, 7831, 0.56, 248, 248),
(249, 6858, 74, 6932, 0.49, 249, 249),
(250, 4633, 0, 4633, 0.33, 250, 250),
(251, 3027, 4, 3031, 0.22, 251, 251),
(252, 2348, 10, 2358, 0.17, 252, 252),
(253, 1408, 5, 1413, 0.1, 253, 253),
(254, 1332, 2, 1334, 0.09, 254, 254),
(255, 1267, 1, 1268, 0.09, 255, 255),
(256, 1261, 11, 1272, 0.09, 256, 256),
(257, 785, 6, 791, 0.06, 257, 257),
(258, 678, 2, 680, 0.05, 258, 258),
(259, 641, 0, 641, 0.05, 259, 259),
(260, 638, 4, 642, 0.05, 260, 260),
(261, 630, 16, 646, 0.05, 261, 261),
(262, 594, 11, 605, 0.04, 262, 262),
(263, 546, 10, 556, 0.04, 263, 263),
(264, 472, 0, 472, 0.03, 264, 264),
(265, 468, 18, 486, 0.03, 265, 265),
(266, 428, 2, 430, 0.03, 266, 266),
(267, 417, 4, 421, 0.03, 267, 267),
(268, 408, 2, 410, 0.03, 268, 268),
(269, 399, 2, 401, 0.03, 269, 269),
(270, 390, 0, 390, 0.03, 270, 270),
(271, 376, 0, 376, 0.03, 271, 271),
(272, 375, 4, 379, 0.03, 272, 272),
(273, 352, 1, 353, 0.03, 273, 273),
(274, 288, 0, 288, 0.02, 274, 274),
(275, 10538, 159, 10697, 0.76, 275, 275),
(276, 699382, 7961, 707343, 57.46, 276, 276),
(277, 426037, 4504, 430541, 34.98, 277, 277),
(278, 34298, 915, 35213, 2.86, 278, 278),
(279, 6350, 14, 6364, 0.52, 279, 279),
(280, 5966, 3, 5969, 0.48, 280, 280),
(281, 5945, 69, 6014, 0.49, 281, 281),
(282, 5232, 8, 5240, 0.43, 282, 282),
(283, 4684, 0, 4684, 0.38, 283, 283),
(284, 3140, 5, 3145, 0.26, 284, 284),
(285, 3112, 4, 3116, 0.25, 285, 285),
(286, 2781, 2, 2783, 0.23, 286, 286),
(287, 2726, 0, 2726, 0.22, 287, 287),
(288, 1645, 4, 1649, 0.13, 288, 288),
(289, 1525, 2, 1527, 0.12, 289, 289),
(290, 1388, 5, 1393, 0.11, 290, 290),
(291, 1378, 6, 1384, 0.11, 291, 291),
(292, 1002, 5, 1007, 0.08, 292, 292),
(293, 922, 8, 930, 0.08, 293, 293),
(294, 919, 1, 920, 0.07, 294, 294),
(295, 683, 3, 686, 0.06, 295, 295),
(296, 682, 1, 683, 0.06, 296, 296),
(297, 7554, 123, 7677, 0.62, 297, 297),
(298, 798097, 9899, 807996, 53.88, 298, 298),
(299, 642186, 6081, 648267, 43.23, 299, 299),
(300, 17520, 526, 18046, 1.2, 300, 300),
(301, 5276, 33, 5309, 0.35, 301, 301),
(302, 2328, 8, 2336, 0.16, 302, 302),
(303, 1243, 2, 1245, 0.08, 303, 303),
(304, 1056, 1, 1057, 0.07, 304, 304),
(305, 1051, 0, 1051, 0.07, 305, 305),
(306, 718, 5, 723, 0.05, 306, 306),
(307, 667, 3, 670, 0.04, 307, 307),
(308, 385, 3, 388, 0.03, 308, 308),
(309, 353, 3, 356, 0.02, 309, 309),
(310, 331, 1, 332, 0.02, 310, 310),
(311, 305, 4, 309, 0.02, 311, 311),
(312, 277, 8, 285, 0.02, 312, 312),
(313, 11120, 79, 11199, 0.75, 313, 313),
(314, 750771, 15431, 766202, 55.7, 314, 314),
(315, 514375, 5925, 520300, 37.82, 315, 315),
(316, 53264, 1580, 54844, 3.99, 316, 316),
(317, 5710, 101, 5811, 0.42, 317, 317),
(318, 2794, 10, 2804, 0.2, 318, 318),
(319, 2010, 5, 2015, 0.15, 319, 319),
(320, 1775, 4, 1779, 0.13, 320, 320),
(321, 1315, 15, 1330, 0.1, 321, 321),
(322, 1228, 5, 1233, 0.09, 322, 322),
(323, 1104, 1, 1105, 0.08, 323, 323),
(324, 1037, 0, 1037, 0.08, 324, 324),
(325, 576, 24, 600, 0.04, 325, 325),
(326, 553, 5, 558, 0.04, 326, 326),
(327, 452, 2, 454, 0.03, 327, 327),
(328, 15454, 123, 15577, 1.13, 328, 328),
(329, 689829, 12065, 701894, 49.35, 329, 329),
(330, 644052, 7643, 651695, 45.82, 330, 330),
(331, 25803, 919, 26722, 1.88, 331, 331),
(332, 6238, 76, 6314, 0.44, 332, 332),
(333, 3046, 2, 3048, 0.21, 333, 333),
(334, 3035, 38, 3073, 0.22, 334, 334),
(335, 2242, 25, 2267, 0.16, 335, 335),
(336, 1923, 0, 1923, 0.14, 336, 336),
(337, 1797, 1, 1798, 0.13, 337, 337),
(338, 1442, 5, 1447, 0.1, 338, 338),
(339, 1006, 2, 1008, 0.07, 339, 339),
(340, 730, 5, 735, 0.05, 340, 340),
(341, 713, 12, 725, 0.05, 341, 341),
(342, 710, 6, 716, 0.05, 342, 342),
(343, 706, 5, 711, 0.05, 343, 343),
(344, 699, 44, 743, 0.05, 344, 344),
(345, 674, 9, 683, 0.05, 345, 345),
(346, 575, 0, 575, 0.04, 346, 346),
(347, 457, 4, 461, 0.03, 347, 347),
(348, 454, 7, 461, 0.03, 348, 348),
(349, 449, 0, 449, 0.03, 349, 349),
(350, 407, 3, 410, 0.03, 350, 350),
(351, 394, 0, 394, 0.03, 351, 351),
(352, 365, 0, 365, 0.03, 352, 352),
(353, 362, 30, 392, 0.03, 353, 353),
(354, 13066, 139, 13205, 0.93, 354, 354),
(355, 718641, 7874, 726515, 54.82, 355, 355),
(356, 483172, 4204, 487376, 36.77, 356, 356),
(357, 31441, 1067, 32508, 2.45, 357, 357),
(358, 20277, 132, 20409, 1.54, 358, 358),
(359, 16930, 78, 17008, 1.28, 359, 359),
(360, 3261, 17, 3278, 0.25, 360, 360),
(361, 3109, 6, 3115, 0.24, 361, 361),
(362, 2818, 15, 2833, 0.21, 362, 362),
(363, 2422, 7, 2429, 0.18, 363, 363),
(364, 2173, 6, 2179, 0.16, 364, 364),
(365, 1955, 3, 1958, 0.15, 365, 365),
(366, 1250, 4, 1254, 0.09, 366, 366),
(367, 24302, 133, 24435, 1.84, 367, 367),
(368, 639111, 5733, 644844, 48.38, 368, 368),
(369, 557030, 11743, 568773, 42.67, 369, 369),
(370, 52229, 1071, 53300, 4, 370, 370),
(371, 12306, 57, 12363, 0.93, 371, 371),
(372, 6097, 3, 6100, 0.46, 372, 372),
(373, 5984, 15, 5999, 0.45, 373, 373),
(374, 5671, 1, 5672, 0.43, 374, 374),
(375, 4731, 4, 4735, 0.36, 375, 375),
(376, 4613, 3, 4616, 0.35, 376, 376),
(377, 4436, 7, 4443, 0.33, 377, 377),
(378, 2394, 17, 2411, 0.18, 378, 378),
(379, 1523, 12, 1535, 0.12, 379, 379),
(380, 1415, 0, 1415, 0.11, 380, 380),
(381, 1360, 6, 1366, 0.1, 381, 381),
(382, 1315, 3, 1318, 0.1, 382, 382),
(383, 1069, 2, 1071, 0.08, 383, 383),
(384, 885, 2, 887, 0.07, 384, 384),
(385, 689, 2, 691, 0.05, 385, 385),
(386, 11324, 76, 11400, 0.86, 386, 386),
(387, 734501, 19827, 754328, 61.05, 387, 387),
(388, 420394, 6033, 426427, 34.51, 388, 388),
(389, 6724, 448, 7172, 0.58, 389, 389),
(390, 5950, 8, 5958, 0.48, 390, 390),
(391, 4661, 81, 4742, 0.38, 391, 391),
(392, 3472, 126, 3598, 0.29, 392, 392),
(393, 2523, 13, 2536, 0.21, 393, 393),
(394, 1598, 7, 1605, 0.13, 394, 394),
(395, 1315, 42, 1357, 0.11, 395, 395),
(396, 1080, 50, 1130, 0.09, 396, 396),
(397, 811, 7, 818, 0.07, 397, 397),
(398, 796, 20, 816, 0.07, 398, 398),
(399, 589, 5, 594, 0.05, 399, 399),
(400, 24498, 107, 24605, 1.99, 400, 400),
(401, 626702, 5526, 632228, 45.73, 401, 401),
(402, 608494, 9165, 617659, 44.67, 402, 402),
(403, 63790, 1733, 65523, 4.74, 403, 403),
(404, 10300, 206, 10506, 0.76, 404, 404),
(405, 5796, 6, 5802, 0.42, 405, 405),
(406, 5387, 38, 5425, 0.39, 406, 406),
(407, 4948, 22, 4970, 0.36, 407, 407),
(408, 4108, 194, 4302, 0.31, 408, 408),
(409, 3657, 9, 3666, 0.27, 409, 409),
(410, 1723, 8, 1731, 0.13, 410, 410),
(411, 1668, 30, 1698, 0.12, 411, 411),
(412, 1567, 1, 1568, 0.11, 412, 412),
(413, 1511, 4, 1515, 0.11, 413, 413),
(414, 1501, 9, 1510, 0.11, 414, 414),
(415, 1362, 27, 1389, 0.1, 415, 415),
(416, 1237, 2, 1239, 0.09, 416, 416),
(417, 1203, 1, 1204, 0.09, 417, 417),
(418, 1077, 10, 1087, 0.08, 418, 418),
(419, 797, 4, 801, 0.06, 419, 419),
(420, 711, 0, 711, 0.05, 420, 420),
(421, 688, 0, 688, 0.05, 421, 421),
(422, 615, 7, 622, 0.04, 422, 422),
(423, 607, 1, 608, 0.04, 423, 423),
(424, 15909, 209, 16118, 1.17, 424, 424),
(425, 784722, 9432, 794154, 58.21, 425, 425),
(426, 505637, 6432, 512069, 37.53, 426, 426),
(427, 23498, 608, 24106, 1.77, 427, 427),
(428, 7710, 168, 7878, 0.58, 428, 428),
(429, 6672, 0, 6672, 0.49, 429, 429),
(430, 3199, 0, 3199, 0.23, 430, 430),
(431, 2184, 49, 2233, 0.16, 431, 431),
(432, 1240, 0, 1240, 0.09, 432, 432),
(433, 609, 6, 615, 0.05, 433, 433),
(434, 600, 1, 601, 0.04, 434, 434),
(435, 486, 3, 489, 0.04, 435, 435),
(436, 409, 8, 417, 0.03, 436, 436),
(437, 365, 3, 368, 0.03, 437, 437),
(438, 328, 3, 331, 0.02, 438, 438),
(439, 323, 4, 327, 0.02, 439, 439),
(440, 268, 1, 269, 0.02, 440, 440),
(441, 239, 5, 244, 0.02, 441, 441),
(442, 9038, 155, 9193, 0.67, 442, 442),
(443, 893884, 13583, 907467, 65.42, 443, 443),
(444, 397821, 5399, 403220, 29.07, 444, 444),
(445, 29430, 837, 30267, 2.18, 445, 445),
(446, 7529, 167, 7696, 0.55, 446, 446),
(447, 6006, 85, 6091, 0.44, 447, 447),
(448, 4883, 1, 4884, 0.35, 448, 448),
(449, 2534, 3, 2537, 0.18, 449, 449),
(450, 1991, 2, 1993, 0.14, 450, 450),
(451, 1931, 2, 1933, 0.14, 451, 451),
(452, 1811, 7, 1818, 0.13, 452, 452),
(453, 1098, 11, 1109, 0.08, 453, 453),
(454, 944, 6, 950, 0.07, 454, 454),
(455, 941, 7, 948, 0.07, 455, 455),
(456, 875, 7, 882, 0.06, 456, 456),
(457, 760, 7, 767, 0.06, 457, 457),
(458, 756, 1, 757, 0.05, 458, 458),
(459, 738, 4, 742, 0.05, 459, 459),
(460, 656, 5, 661, 0.05, 460, 460),
(461, 646, 1, 647, 0.05, 461, 461),
(462, 628, 10, 638, 0.05, 462, 462),
(463, 628, 5, 633, 0.05, 463, 463),
(464, 576, 4, 580, 0.04, 464, 464),
(465, 543, 0, 543, 0.04, 465, 465),
(466, 518, 2, 520, 0.04, 466, 466),
(467, 499, 1, 500, 0.04, 467, 467),
(468, 494, 6, 500, 0.04, 468, 468),
(469, 463, 3, 466, 0.03, 469, 469),
(470, 443, 5, 448, 0.03, 470, 470),
(471, 392, 1, 393, 0.03, 471, 471),
(472, 322, 7, 329, 0.02, 472, 472),
(473, 320, 6, 326, 0.02, 473, 473),
(474, 293, 1, 294, 0.02, 474, 474),
(475, 271, 2, 273, 0.02, 475, 475),
(476, 5171, 142, 5313, 0.38, 476, 476),
(477, 729284, 13829, 743113, 57.2, 477, 477),
(478, 487691, 6071, 493762, 38, 478, 478),
(479, 10270, 353, 10623, 0.82, 479, 479),
(480, 7985, 53, 8038, 0.62, 480, 480),
(481, 4146, 6, 4152, 0.32, 481, 481),
(482, 3396, 5, 3401, 0.26, 482, 482),
(483, 3105, 2, 3107, 0.24, 483, 483),
(484, 1758, 3, 1761, 0.14, 484, 484),
(485, 1617, 12, 1629, 0.13, 485, 485),
(486, 1544, 9, 1553, 0.12, 486, 486),
(487, 1401, 10, 1411, 0.11, 487, 487),
(488, 1059, 11, 1070, 0.08, 488, 488),
(489, 855, 1, 856, 0.07, 489, 489),
(490, 787, 4, 791, 0.06, 490, 490),
(491, 715, 10, 725, 0.06, 491, 491),
(492, 23097, 153, 23250, 1.79, 492, 492),
(493, 140715, 4866, 145581, 45.01, 493, 493),
(494, 109433, 5727, 115160, 35.6, 494, 494),
(495, 26691, 912, 27603, 8.53, 495, 495),
(496, 13227, 986, 14213, 4.39, 496, 496),
(497, 9074, 295, 9369, 2.9, 497, 497),
(498, 6419, 203, 6622, 2.05, 498, 498),
(499, 4654, 241, 4895, 1.51, 499, 499),
(500, 196415, 9002, 205417, 51.38, 500, 500),
(501, 100100, 4579, 104679, 26.18, 501, 501),
(502, 31106, 2208, 33314, 8.33, 502, 502),
(503, 27670, 2860, 30530, 7.64, 503, 503),
(504, 10569, 949, 11518, 2.88, 504, 504),
(505, 7559, 262, 7821, 1.96, 505, 505),
(506, 2139, 132, 2271, 0.57, 506, 506),
(507, 1920, 38, 1958, 0.49, 507, 507),
(508, 2133, 163, 2296, 0.57, 508, 508),
(509, 853642, 6471, 860113, 51.02, 509, 509),
(510, 635411, 2351, 637762, 37.83, 510, 510),
(511, 95020, 1118, 96138, 5.7, 511, 511),
(512, 16359, 73, 16432, 0.97, 512, 512),
(513, 9930, 11, 9941, 0.59, 513, 513),
(514, 9515, 177, 9692, 0.57, 514, 514),
(515, 9275, 63, 9338, 0.55, 515, 515),
(516, 7920, 15, 7935, 0.47, 516, 516),
(517, 5474, 74, 5548, 0.33, 517, 517),
(518, 4441, 7, 4448, 0.26, 518, 518),
(519, 3174, 18, 3192, 0.19, 519, 519),
(520, 3060, 71, 3131, 0.19, 520, 520),
(521, 2657, 22, 2679, 0.16, 521, 521),
(522, 2463, 14, 2477, 0.15, 522, 522),
(523, 16888, 229, 17117, 1.02, 523, 523),
(524, 864583, 3804, 868387, 47.95, 524, 524),
(525, 538032, 1343, 539375, 29.78, 525, 525),
(526, 309040, 1534, 310574, 17.15, 526, 526),
(527, 14277, 14, 14291, 0.79, 527, 527),
(528, 12519, 44, 12563, 0.69, 528, 528),
(529, 11067, 45, 11112, 0.61, 529, 529),
(530, 10887, 28, 10915, 0.6, 530, 530),
(531, 7421, 31, 7452, 0.41, 531, 531),
(532, 4956, 17, 4973, 0.27, 532, 532),
(533, 4605, 18, 4623, 0.26, 533, 533),
(534, 3721, 10, 3731, 0.21, 534, 534),
(535, 23086, 118, 23204, 1.28, 535, 535),
(536, 1468549, 3336, 1471885, 59.99, 536, 536),
(537, 458202, 1207, 459409, 18.72, 537, 537),
(538, 435822, 2772, 438594, 17.88, 538, 538),
(539, 11978, 128, 12106, 0.49, 539, 539),
(540, 10986, 8, 10994, 0.45, 540, 540),
(541, 7615, 88, 7703, 0.31, 541, 541),
(542, 6950, 40, 6990, 0.28, 542, 542),
(543, 6934, 6, 6940, 0.28, 543, 543),
(544, 6137, 150, 6287, 0.26, 544, 544),
(545, 5384, 8, 5392, 0.22, 545, 545),
(546, 4749, 43, 4792, 0.2, 546, 546),
(547, 3984, 31, 4015, 0.16, 547, 547),
(548, 3481, 5, 3486, 0.14, 548, 548),
(549, 14912, 103, 15015, 0.61, 549, 549),
(550, 691153, 2609, 693762, 54.27, 550, 550),
(551, 412793, 1648, 414441, 32.42, 551, 551),
(552, 137618, 246, 137864, 10.78, 552, 552),
(553, 32163, 92, 32255, 2.52, 553, 553),
(554, 332440, 2180, 334620, 49.01, 554, 554),
(555, 185864, 1153, 187017, 27.39, 555, 555),
(556, 123055, 964, 124019, 18.16, 556, 556),
(557, 11241, 38, 11279, 1.65, 557, 557),
(558, 9561, 72, 9633, 1.41, 558, 558),
(559, 16127, 132, 16259, 2.38, 559, 559),
(560, 891901, 2986, 894887, 55.95, 560, 560),
(561, 642353, 1444, 643797, 40.25, 561, 561),
(562, 8494, 54, 8548, 0.53, 562, 562),
(563, 7644, 34, 7678, 0.48, 563, 563),
(564, 7508, 19, 7527, 0.47, 564, 564),
(565, 6753, 8, 6761, 0.42, 565, 565),
(566, 5081, 14, 5095, 0.32, 566, 566),
(567, 4826, 21, 4847, 0.3, 567, 567),
(568, 20139, 110, 20249, 1.27, 568, 568),
(569, 743194, 8577, 751771, 54.04, 569, 569),
(570, 602019, 5359, 607378, 43.66, 570, 570),
(571, 8998, 88, 9086, 0.65, 571, 571),
(572, 8315, 55, 8370, 0.6, 572, 572),
(573, 14477, 78, 14555, 1.05, 573, 573),
(574, 541220, 3873, 545093, 47.53, 574, 574),
(575, 524390, 2343, 526733, 45.93, 575, 575),
(576, 29070, 135, 29205, 2.55, 576, 576),
(577, 7105, 4, 7109, 0.62, 577, 577),
(578, 5900, 7, 5907, 0.52, 578, 578),
(579, 4186, 6, 4192, 0.37, 579, 579),
(580, 3621, 7, 3628, 0.32, 580, 580),
(581, 2623, 7, 2630, 0.23, 581, 581),
(582, 2600, 1, 2601, 0.23, 582, 582),
(583, 2287, 4, 2291, 0.2, 583, 583),
(584, 1912, 11, 1923, 0.17, 584, 584),
(585, 1650, 7, 1657, 0.14, 585, 585),
(586, 1382, 0, 1382, 0.12, 586, 586),
(587, 1110, 1, 1111, 0.1, 587, 587),
(588, 1094, 1, 1095, 0.1, 588, 588),
(589, 1031, 0, 1031, 0.09, 589, 589),
(590, 994, 7, 1001, 0.09, 590, 590),
(591, 975, 0, 975, 0.09, 591, 591),
(592, 881, 1, 882, 0.08, 592, 592),
(593, 841, 1, 842, 0.07, 593, 593),
(594, 800, 17, 817, 0.07, 594, 594),
(595, 719, 2, 721, 0.06, 595, 595),
(596, 568, 3, 571, 0.05, 596, 596),
(597, 539, 6, 545, 0.05, 597, 597),
(598, 2851, 89, 2940, 0.26, 598, 598),
(599, 892766, 4277, 897043, 55.04, 599, 599),
(600, 646123, 1973, 648096, 39.76, 600, 600),
(601, 11719, 24, 11743, 0.72, 601, 601),
(602, 10625, 54, 10679, 0.66, 602, 602),
(603, 8641, 32, 8673, 0.53, 603, 603),
(604, 8091, 37, 8128, 0.5, 604, 604),
(605, 6395, 46, 6441, 0.4, 605, 605),
(606, 4494, 44, 4538, 0.28, 606, 606),
(607, 3698, 22, 3720, 0.23, 607, 607),
(608, 3243, 23, 3266, 0.2, 608, 608),
(609, 3160, 19, 3179, 0.2, 609, 609),
(610, 24212, 219, 24431, 1.5, 610, 610),
(611, 484681, 4314, 488995, 39.39, 611, 611),
(612, 432768, 4644, 437412, 35.23, 612, 612),
(613, 112624, 1112, 113736, 9.16, 613, 613),
(614, 93266, 923, 94189, 7.59, 614, 614),
(615, 33636, 101, 33737, 2.72, 615, 615),
(616, 23362, 157, 23519, 1.89, 616, 616),
(617, 8782, 48, 8830, 0.71, 617, 617),
(618, 7891, 41, 7932, 0.64, 618, 618),
(619, 5944, 162, 6106, 0.49, 619, 619),
(620, 4473, 35, 4508, 0.36, 620, 620),
(621, 4425, 115, 4540, 0.37, 621, 621),
(622, 4032, 48, 4080, 0.33, 622, 622),
(623, 13662, 250, 13912, 1.12, 623, 623),
(624, 659307, 3815, 663122, 54.75, 624, 624),
(625, 458720, 3145, 461865, 38.13, 625, 625),
(626, 19562, 69, 19631, 1.62, 626, 626),
(627, 14055, 142, 14197, 1.17, 627, 627),
(628, 10218, 75, 10293, 0.85, 628, 628),
(629, 7461, 65, 7526, 0.62, 629, 629),
(630, 6143, 20, 6163, 0.51, 630, 630),
(631, 6051, 86, 6137, 0.51, 631, 631),
(632, 5329, 30, 5359, 0.44, 632, 632),
(633, 16716, 205, 16921, 1.4, 633, 633),
(634, 786620, 2230, 788850, 50.89, 634, 634),
(635, 573579, 3040, 576619, 37.2, 635, 635),
(636, 137033, 307, 137340, 8.86, 636, 636),
(637, 6569, 51, 6620, 0.43, 637, 637),
(638, 5048, 21, 5069, 0.33, 638, 638),
(639, 4878, 7, 4885, 0.32, 639, 639),
(640, 4290, 29, 4319, 0.28, 640, 640),
(641, 3601, 26, 3627, 0.23, 641, 641),
(642, 2547, 12, 2559, 0.17, 642, 642),
(643, 2216, 22, 2238, 0.14, 643, 643),
(644, 2019, 11, 2030, 0.13, 644, 644),
(645, 1993, 17, 2010, 0.13, 645, 645),
(646, 1823, 14, 1837, 0.12, 646, 646),
(647, 11910, 85, 11995, 0.77, 647, 647),
(648, 647572, 4833, 652405, 59.89, 648, 648),
(649, 386453, 1641, 388094, 35.62, 649, 649),
(650, 20384, 109, 20493, 1.88, 650, 650),
(651, 4580, 17, 4597, 0.42, 651, 651),
(652, 4494, 40, 4534, 0.42, 652, 652),
(653, 3113, 30, 3143, 0.29, 653, 653),
(654, 1843, 24, 1867, 0.17, 654, 654),
(655, 1575, 18, 1593, 0.15, 655, 655),
(656, 12598, 102, 12700, 1.17, 656, 656),
(657, 771018, 4770, 775788, 60.21, 657, 657),
(658, 412553, 1827, 414380, 32.16, 658, 658),
(659, 32771, 277, 33048, 2.56, 659, 659),
(660, 19775, 117, 19892, 1.54, 660, 660),
(661, 8136, 69, 8205, 0.64, 661, 661),
(662, 7320, 62, 7382, 0.57, 662, 662),
(663, 6780, 43, 6823, 0.53, 663, 663),
(664, 4186, 16, 4202, 0.33, 664, 664),
(665, 18535, 213, 18748, 1.46, 665, 665),
(666, 599118, 1028, 600146, 47.91, 666, 666),
(667, 578904, 1148, 580052, 46.31, 667, 667),
(668, 13697, 49, 13746, 1.1, 668, 668),
(669, 12672, 18, 12690, 1.01, 669, 669),
(670, 12005, 3, 12008, 0.96, 670, 670),
(671, 7353, 1, 7354, 0.59, 671, 671),
(672, 5086, 34, 5120, 0.41, 672, 672),
(673, 4897, 2, 4899, 0.39, 673, 673),
(674, 3037, 4, 3041, 0.24, 674, 674),
(675, 13438, 66, 13504, 1.08, 675, 675),
(676, 526564, 2818, 529382, 48.28, 676, 676),
(677, 464736, 4838, 469574, 42.82, 677, 677),
(678, 23630, 5, 23635, 2.16, 678, 678),
(679, 13373, 6, 13379, 1.22, 679, 679),
(680, 10631, 195, 10826, 0.99, 680, 680),
(681, 8709, 40, 8749, 0.8, 681, 681),
(682, 5765, 1, 5766, 0.53, 682, 682),
(683, 4764, 9, 4773, 0.44, 683, 683),
(684, 2531, 10, 2541, 0.23, 684, 684),
(685, 2449, 18, 2467, 0.22, 685, 685),
(686, 2435, 5, 2440, 0.22, 686, 686),
(687, 2263, 32, 2295, 0.21, 687, 687),
(688, 2055, 42, 2097, 0.19, 688, 688),
(689, 1640, 34, 1674, 0.15, 689, 689),
(690, 16864, 99, 16963, 1.55, 690, 690),
(691, 463845, 1722, 465567, 49.22, 691, 691),
(692, 384819, 1637, 386456, 40.86, 692, 692),
(693, 20232, 77, 20309, 2.15, 693, 693),
(694, 12265, 43, 12308, 1.3, 694, 694),
(695, 11150, 9, 11159, 1.18, 695, 695),
(696, 9237, 6, 9243, 0.98, 696, 696),
(697, 6704, 7, 6711, 0.71, 697, 697),
(698, 6591, 13, 6604, 0.7, 698, 698),
(699, 4892, 4, 4896, 0.52, 699, 699),
(700, 22566, 61, 22627, 2.39, 700, 700),
(701, 505674, 1004, 506678, 49.96, 701, 701),
(702, 401567, 1267, 402834, 39.72, 702, 702),
(703, 14936, 3, 14939, 1.47, 703, 703),
(704, 12254, 23, 12277, 1.21, 704, 704),
(705, 9615, 55, 9670, 0.95, 705, 705),
(706, 8103, 22, 8125, 0.8, 706, 706),
(707, 7627, 18, 7645, 0.75, 707, 707),
(708, 6874, 37, 6911, 0.68, 708, 708),
(709, 5226, 20, 5246, 0.52, 709, 709),
(710, 4932, 9, 4941, 0.49, 710, 710),
(711, 34808, 81, 34889, 3.44, 711, 711),
(712, 646912, 2419, 649331, 50.15, 712, 712),
(713, 564310, 3541, 567851, 43.86, 713, 713),
(714, 12947, 6, 12953, 1, 714, 714),
(715, 10846, 26, 10872, 0.84, 715, 715),
(716, 8362, 91, 8453, 0.65, 716, 716),
(717, 6599, 45, 6644, 0.51, 717, 717),
(718, 6144, 8, 6152, 0.48, 718, 718),
(719, 4030, 15, 4045, 0.31, 719, 719),
(720, 3329, 21, 3350, 0.26, 720, 720),
(721, 2633, 7, 2640, 0.2, 721, 721),
(722, 22283, 99, 22382, 1.73, 722, 722),
(723, 534923, 1108, 536031, 50.38, 723, 723),
(724, 430025, 1138, 431163, 40.52, 724, 724),
(725, 12547, 99, 12646, 1.19, 725, 725),
(726, 12255, 3, 12258, 1.15, 726, 726),
(727, 7654, 16, 7670, 0.72, 727, 727),
(728, 6677, 6, 6683, 0.63, 728, 728),
(729, 6629, 5, 6634, 0.62, 729, 729),
(730, 5105, 21, 5126, 0.48, 730, 730),
(731, 3758, 5, 3763, 0.35, 731, 731),
(732, 3670, 11, 3681, 0.35, 732, 732),
(733, 3509, 10, 3519, 0.33, 733, 733),
(734, 3091, 13, 3104, 0.29, 734, 734),
(735, 31771, 32, 31803, 2.99, 735, 735),
(736, 435062, 3283, 438345, 40.82, 736, 736),
(737, 405795, 2459, 408254, 38.02, 737, 737),
(738, 114312, 402, 114714, 10.68, 738, 738),
(739, 46527, 882, 47409, 4.42, 739, 739),
(740, 15653, 183, 15836, 1.47, 740, 740),
(741, 12742, 7, 12749, 1.19, 741, 741),
(742, 7757, 2, 7759, 0.72, 742, 742),
(743, 5506, 10, 5516, 0.51, 743, 743),
(744, 4322, 17, 4339, 0.4, 744, 744),
(745, 2697, 137, 2834, 0.26, 745, 745),
(746, 2045, 8, 2053, 0.19, 746, 746),
(747, 1667, 2, 1669, 0.16, 747, 747),
(748, 1554, 16, 1570, 0.15, 748, 748),
(749, 1089, 6, 1095, 0.1, 749, 749),
(750, 9572, 45, 9617, 0.9, 750, 750),
(751, 565706, 924, 566630, 55.33, 751, 751),
(752, 387408, 1066, 388474, 37.93, 752, 752),
(753, 18018, 7, 18025, 1.76, 753, 753),
(754, 8259, 9, 8268, 0.81, 754, 754),
(755, 6983, 9, 6992, 0.68, 755, 755),
(756, 5716, 5, 5721, 0.56, 756, 756),
(757, 3634, 4, 3638, 0.36, 757, 757),
(758, 2529, 3, 2532, 0.25, 758, 758),
(759, 23881, 23, 23904, 2.33, 759, 759),
(760, 492732, 2228, 494960, 51.36, 760, 760),
(761, 390469, 2679, 393148, 40.8, 761, 761),
(762, 12234, 142, 12376, 1.28, 762, 762),
(763, 9209, 2, 9211, 0.96, 763, 763),
(764, 5616, 13, 5629, 0.58, 764, 764),
(765, 4708, 19, 4727, 0.49, 765, 765),
(766, 4495, 10, 4505, 0.47, 766, 766),
(767, 4233, 1, 4234, 0.44, 767, 767),
(768, 4098, 5, 4103, 0.43, 768, 768),
(769, 3023, 12, 3035, 0.31, 769, 769),
(770, 2800, 21, 2821, 0.29, 770, 770),
(771, 2692, 9, 2701, 0.28, 771, 771),
(772, 2531, 23, 2554, 0.27, 772, 772),
(773, 2370, 14, 2384, 0.25, 773, 773),
(774, 17177, 111, 17288, 1.79, 774, 774),
(775, 510329, 1537, 511866, 48.15, 775, 775),
(776, 383065, 1621, 384686, 36.19, 776, 776),
(777, 29900, 92, 29992, 2.82, 777, 777),
(778, 29145, 127, 29272, 2.75, 778, 778),
(779, 12988, 14, 13002, 1.22, 779, 779),
(780, 12253, 16, 12269, 1.15, 780, 780),
(781, 11138, 2, 11140, 1.05, 781, 781),
(782, 8531, 9, 8540, 0.8, 782, 782),
(783, 6716, 0, 6716, 0.63, 783, 783),
(784, 6673, 39, 6712, 0.63, 784, 784),
(785, 5942, 27, 5969, 0.56, 785, 785),
(786, 42713, 150, 42863, 4.03, 786, 786),
(787, 613106, 2612, 615718, 53.29, 787, 787),
(788, 442553, 3060, 445613, 38.57, 788, 788),
(789, 17241, 4, 17245, 1.49, 789, 789),
(790, 8591, 88, 8679, 0.75, 790, 790),
(791, 7113, 4, 7117, 0.62, 791, 791),
(792, 6153, 8, 6161, 0.53, 792, 792),
(793, 4701, 20, 4721, 0.41, 793, 793),
(794, 2671, 4, 2675, 0.23, 794, 794),
(795, 1983, 7, 1990, 0.17, 795, 795),
(796, 1971, 7, 1978, 0.17, 796, 796),
(797, 1793, 8, 1801, 0.16, 797, 797),
(798, 1694, 7, 1701, 0.15, 798, 798),
(799, 1680, 0, 1680, 0.15, 799, 799),
(800, 1308, 10, 1318, 0.11, 800, 800),
(801, 36836, 91, 36927, 3.2, 801, 801),
(802, 440352, 2683, 443035, 47.88, 802, 802),
(803, 299044, 1400, 300444, 32.47, 803, 803),
(804, 85696, 684, 86380, 9.33, 804, 804),
(805, 16112, 11, 16123, 1.74, 805, 805),
(806, 13021, 8, 13029, 1.41, 806, 806),
(807, 12954, 259, 13213, 1.43, 807, 807),
(808, 8944, 26, 8970, 0.97, 808, 808),
(809, 5765, 8, 5773, 0.62, 809, 809),
(810, 5709, 3, 5712, 0.62, 810, 810),
(811, 5356, 22, 5378, 0.58, 811, 811),
(812, 4611, 7, 4618, 0.5, 812, 812),
(813, 3230, 13, 3243, 0.35, 813, 813),
(814, 2954, 10, 2964, 0.32, 814, 814),
(815, 2895, 14, 2909, 0.31, 815, 815),
(816, 2509, 15, 2524, 0.27, 816, 816),
(817, 10960, 95, 11055, 1.19, 817, 817),
(818, 508179, 867, 509046, 51.98, 818, 818),
(819, 395696, 868, 396564, 40.5, 819, 819),
(820, 13841, 34, 13875, 1.42, 820, 820),
(821, 12313, 53, 12366, 1.26, 821, 821),
(822, 8604, 21, 8625, 0.88, 822, 822),
(823, 6532, 10, 6542, 0.67, 823, 823),
(824, 6025, 8, 6033, 0.62, 824, 824),
(825, 26148, 34, 26182, 2.67, 825, 825),
(826, 532138, 894, 533032, 48.73, 826, 826),
(827, 347989, 874, 348863, 31.9, 827, 827),
(828, 73532, 352, 73884, 6.76, 828, 828),
(829, 25993, 17, 26010, 2.38, 829, 829),
(830, 18064, 10, 18074, 1.65, 830, 830),
(831, 14307, 18, 14325, 1.31, 831, 831),
(832, 12488, 25, 12513, 1.14, 832, 832),
(833, 11638, 35, 11673, 1.07, 833, 833),
(834, 10843, 19, 10862, 0.99, 834, 834),
(835, 8556, 21, 8577, 0.78, 835, 835),
(836, 35846, 82, 35928, 3.28, 836, 836),
(837, 378922, 1659, 380581, 36.89, 837, 837),
(838, 273546, 1177, 274723, 26.63, 838, 838),
(839, 253088, 788, 253876, 24.61, 839, 839),
(840, 23549, 108, 23657, 2.29, 840, 840),
(841, 21357, 26, 21383, 2.07, 841, 841),
(842, 10983, 23, 11006, 1.07, 842, 842),
(843, 9634, 19, 9653, 0.94, 843, 843),
(844, 7661, 3, 7664, 0.74, 844, 844),
(845, 6315, 9, 6324, 0.61, 845, 845),
(846, 5891, 28, 5919, 0.57, 846, 846),
(847, 5527, 58, 5585, 0.54, 847, 847),
(848, 5003, 3, 5006, 0.49, 848, 848),
(849, 4641, 5, 4646, 0.45, 849, 849),
(850, 21548, 47, 21595, 2.09, 850, 850),
(851, 565025, 2067, 567092, 48.41, 851, 851),
(852, 516199, 1030, 517229, 44.15, 852, 852),
(853, 14452, 46, 14498, 1.24, 853, 853),
(854, 12307, 10, 12317, 1.05, 854, 854),
(855, 10828, 43, 10871, 0.93, 855, 855),
(856, 8473, 14, 8487, 0.72, 856, 856),
(857, 6303, 37, 6340, 0.54, 857, 857),
(858, 5875, 14, 5889, 0.5, 858, 858),
(859, 5866, 18, 5884, 0.5, 859, 859),
(860, 22866, 73, 22939, 1.96, 860, 860),
(861, 537331, 1326, 538657, 50.73, 861, 861),
(862, 375988, 1538, 377526, 35.55, 862, 862),
(863, 27370, 25, 27395, 2.58, 863, 863),
(864, 24478, 5, 24483, 2.31, 864, 864),
(865, 19487, 8, 19495, 1.84, 865, 865),
(866, 13894, 159, 14053, 1.32, 866, 866),
(867, 8256, 54, 8310, 0.78, 867, 867),
(868, 7892, 12, 7904, 0.74, 868, 868),
(869, 6142, 20, 6162, 0.58, 869, 869),
(870, 2806, 43, 2849, 0.27, 870, 870),
(871, 2434, 9, 2443, 0.23, 871, 871),
(872, 1478, 28, 1506, 0.14, 872, 872),
(873, 31056, 55, 31111, 2.93, 873, 873),
(874, 402470, 380, 402850, 35, 874, 874),
(875, 342795, 363, 343158, 29.81, 875, 875),
(876, 309011, 253, 309264, 26.87, 876, 876),
(877, 11815, 3, 11818, 1.03, 877, 877),
(878, 11300, 2, 11302, 0.98, 878, 878),
(879, 9992, 1, 9993, 0.87, 879, 879),
(880, 9522, 2, 9524, 0.83, 880, 880),
(881, 7575, 4, 7579, 0.66, 881, 881),
(882, 7299, 3, 7302, 0.63, 882, 882),
(883, 6055, 0, 6055, 0.53, 883, 883),
(884, 3758, 5, 3763, 0.33, 884, 884),
(885, 3525, 0, 3525, 0.31, 885, 885),
(886, 24953, 13, 24966, 2.17, 886, 886),
(887, 639758, 891, 640649, 52.96, 887, 887),
(888, 464982, 1133, 466115, 38.53, 888, 888),
(889, 15423, 11, 15434, 1.28, 889, 889),
(890, 12947, 44, 12991, 1.07, 890, 890),
(891, 11320, 2, 11322, 0.94, 891, 891),
(892, 11127, 22, 11149, 0.92, 892, 892),
(893, 10665, 9, 10674, 0.88, 893, 893),
(894, 8720, 16, 8736, 0.72, 894, 894),
(895, 32557, 68, 32625, 2.7, 895, 895),
(896, 552705, 723, 553428, 53.85, 896, 896),
(897, 400909, 574, 401483, 39.07, 897, 897),
(898, 13365, 5, 13370, 1.3, 898, 898),
(899, 7197, 26, 7223, 0.7, 899, 899),
(900, 7046, 4, 7050, 0.69, 900, 900),
(901, 4980, 3, 4983, 0.48, 901, 901),
(902, 4620, 3, 4623, 0.45, 902, 902),
(903, 4492, 6, 4498, 0.44, 903, 903),
(904, 4460, 4, 4464, 0.43, 904, 904),
(905, 2095, 2, 2097, 0.2, 905, 905),
(906, 1998, 9, 2007, 0.2, 906, 906),
(907, 1780, 3, 1783, 0.17, 907, 907),
(908, 20691, 28, 20719, 2.02, 908, 908),
(909, 527974, 1559, 529533, 52.22, 909, 909),
(910, 425887, 995, 426882, 42.09, 910, 910),
(911, 14830, 8, 14838, 1.46, 911, 911),
(912, 13359, 43, 13402, 1.32, 912, 912),
(913, 7750, 17, 7767, 0.77, 913, 913),
(914, 21662, 25, 21687, 2.14, 914, 914),
(915, 547814, 2332, 550146, 48.3, 915, 915),
(916, 467412, 1864, 469276, 41.2, 916, 916),
(917, 21016, 7, 21023, 1.85, 917, 917),
(918, 15718, 13, 15731, 1.38, 918, 918),
(919, 13809, 16, 13825, 1.21, 919, 919),
(920, 12143, 137, 12280, 1.08, 920, 920),
(921, 9455, 31, 9486, 0.83, 921, 921),
(922, 7470, 37, 7507, 0.66, 922, 922),
(923, 5366, 9, 5375, 0.47, 923, 923),
(924, 4893, 20, 4913, 0.43, 924, 924),
(925, 4124, 16, 4140, 0.36, 925, 925),
(926, 3410, 18, 3428, 0.3, 926, 926),
(927, 21920, 31, 21951, 1.93, 927, 927),
(928, 618569, 1180, 619749, 55.71, 928, 928),
(929, 383759, 1063, 384822, 34.59, 929, 929),
(930, 17225, 0, 17225, 1.55, 930, 930),
(931, 15617, 1, 15618, 1.4, 931, 931),
(932, 8692, 8, 8700, 0.78, 932, 932),
(933, 7309, 1, 7310, 0.66, 933, 933),
(934, 6530, 17, 6547, 0.59, 934, 934),
(935, 5157, 1, 5158, 0.46, 935, 935),
(936, 4791, 1, 4792, 0.43, 936, 936),
(937, 4121, 10, 4131, 0.37, 937, 937),
(938, 3897, 0, 3897, 0.35, 938, 938),
(939, 3225, 0, 3225, 0.29, 939, 939),
(940, 2890, 3, 2893, 0.26, 940, 940),
(941, 2445, 8, 2453, 0.22, 941, 941),
(942, 1968, 3, 1971, 0.18, 942, 942),
(943, 1852, 5, 1857, 0.17, 943, 943),
(944, 1840, 3, 1843, 0.17, 944, 944),
(945, 1811, 1, 1812, 0.16, 945, 945),
(946, 1778, 1, 1779, 0.16, 946, 946),
(947, 1730, 1, 1731, 0.16, 947, 947),
(948, 1595, 3, 1598, 0.14, 948, 948),
(949, 1521, 1, 1522, 0.14, 949, 949),
(950, 1170, 4, 1174, 0.11, 950, 950),
(951, 1115, 1, 1116, 0.1, 951, 951),
(952, 984, 3, 984, 0.09, 952, 952),
(953, 965, 3, 965, 0.09, 953, 953),
(954, 7539, 49, 7588, 0.68, 954, 954),
(955, 557054, 2368, 559422, 48.88, 955, 955),
(956, 388052, 2256, 390308, 34.11, 956, 956),
(957, 25286, 5, 25291, 2.21, 957, 957),
(958, 18571, 5, 18576, 1.62, 958, 958),
(959, 18472, 8, 18480, 1.61, 959, 959),
(960, 15233, 99, 15332, 1.34, 960, 960),
(961, 14746, 4, 14750, 1.29, 961, 961),
(962, 9593, 9, 9602, 0.84, 962, 962),
(963, 7878, 9, 7887, 0.69, 963, 963),
(964, 6804, 2, 6806, 0.59, 964, 964),
(965, 6665, 27, 6692, 0.58, 965, 965),
(966, 6232, 6, 6238, 0.55, 966, 966),
(967, 5515, 5, 5520, 0.48, 967, 967),
(968, 3922, 10, 3932, 0.34, 968, 968),
(969, 3840, 5, 3845, 0.34, 969, 969),
(970, 3599, 3, 3602, 0.31, 970, 970),
(971, 3369, 18, 3387, 0.3, 971, 971),
(972, 3341, 4, 3345, 0.29, 972, 972),
(973, 2724, 5, 2729, 0.24, 973, 973),
(974, 2456, 12, 2468, 0.22, 974, 974),
(975, 2397, 18, 2415, 0.21, 975, 975),
(976, 2331, 9, 2340, 0.2, 976, 976),
(977, 2108, 2, 2110, 0.18, 977, 977),
(978, 1971, 9, 1980, 0.17, 978, 978),
(979, 1937, 12, 1949, 0.17, 979, 979),
(980, 1867, 13, 1880, 0.16, 980, 980),
(981, 1595, 2, 1597, 0.14, 981, 981),
(982, 1491, 14, 1505, 0.13, 982, 982),
(983, 1177, 1, 1178, 0.1, 983, 983),
(984, 19110, 107, 19217, 1.68, 984, 984),
(985, 408537, 2071, 410608, 47.2, 985, 985),
(986, 340562, 2376, 342938, 39.42, 986, 986),
(987, 39391, 128, 39519, 4.54, 987, 987),
(988, 29444, 238, 29682, 3.41, 988, 988),
(989, 16240, 76, 16316, 1.88, 989, 989),
(990, 7727, 9, 7736, 0.89, 990, 990),
(991, 5886, 3, 5889, 0.68, 991, 991),
(992, 4558, 32, 4590, 0.53, 992, 992),
(993, 12555, 37, 12592, 1.45, 993, 993),
(994, 578959, 1462, 580421, 53.43, 994, 994),
(995, 441363, 2490, 443853, 40.86, 995, 995),
(996, 13139, 6, 13145, 1.21, 996, 996),
(997, 10913, 49, 10962, 1.01, 997, 997),
(998, 8992, 2, 8994, 0.83, 998, 998),
(999, 8496, 9, 8505, 0.78, 999, 999),
(1000, 4922, 3, 4925, 0.45, 1000, 1000);
SELECT * from Votes;



select* from Party;
select* from Constituency;





























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































