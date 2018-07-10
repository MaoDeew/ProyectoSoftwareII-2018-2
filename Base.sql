CODIGO SUICIDA

DROP database dbSoftware;
CREATE database dbSoftware;
USE dbSoftware;

-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

CREATE TABLE Promocion (
	
	idPromocion int NOT NULL AUTO_INCREMENT,
	nombre varchar(255) NOT NULL,
	valor float NOT NULL,
	descripcion varchar(255) NOT NULL,
	PRIMARY KEY (idPromocion)
);

CREATE TABLE Usuario (
	idUsuario int NOT NULL AUTO_INCREMENT,
	nombre varchar(255) NOT NULL,
	apellido varchar(255) NOT NULL,
	cedula varchar(255) NOT NULL,
	username varchar(255) NOT NULL,
	password varchar(255) not null,
	PRIMARY KEY (idUsuario)
);

CREATE TABLE Promocion_Usuario (
	idPromocionUsuario int NOT NULL AUTO_INCREMENT,
	idUsuario int NOT NULL,
	idPromocion int NOT NULL,
	PRIMARY KEY (idPromocionUsuario),
	FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
	FOREIGN KEY (idPromocion) REFERENCES Promocion(idPromocion)
);

CREATE TABLE Codigo (
	idCodigo int NOT NULL AUTO_INCREMENT,
	idPromocion int NOT NULL,
	direccionImagen varchar(255) NOT NULL,
	FOREIGN KEY (idPromocion) REFERENCES Promocion(idPromocion),
	PRIMARY KEY (idCodigo)
);

CREATE TABLE Look (
	idLook int NOT NULL AUTO_INCREMENT,
	idUsuario int NOT NULL,
	nombre varchar(255) NOT NULL,
<<<<<<< HEAD
	direccionImagen varchar(10000) NOT NULL,
=======
	direccionImagen MEDIUMTEXT NOT NULL,
>>>>>>> master
	descripcion varchar(255) NOT NULL,
	FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
	PRIMARY KEY (idLook)
);

CREATE TABLE Producto (
	idProducto int NOT NULL AUTO_INCREMENT,
	idCodigo int NOT NULL,
	nombre varchar(255) NOT NULL,
	valor int NOT NULL,
	descripcion varchar(255) NOT NULL,
	FOREIGN KEY (idCodigo) REFERENCES Codigo(idCodigo),
	PRIMARY KEY (idProducto)
);





SELECT C.idCodigo Codigo,P.nombre Producto, Pr.descripcion Descripcion 
from Producto P INNER JOIN Codigo C ON p.idCodigo = c.idCodigo
INNER JOIN Promocion Pr ON C.idPromocion = Pr.idPromocion
where C.idCodigo = id;

select nombre, descripcion, direccionImagen from Look where idUsuario=((select idUsuario from Usuario where username=?));

insert into Promocion values("Coloracion Gratuita",2.000,"Te coloramos el pelo muy barato");

insert into Usuario values(1,"Andrea","Jimenez","85.689.545","andreaji",md5("andrea123"));

INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (2,"Giselle","Marsh","1620021172599","ante",""md5("FOA05ZSR5QE")""),(3,"MacKenzie","Logan","1673120997599","hendrerit",""md5("XTA58LCA7WX")""),(4,"Mollie","Wong","1649061696799","non,",""md5("UVJ35HXC5NL")""),(5,"Aurelia","Rodriquez","1641110213699","arcu.",""md5("JJA80DTC4BR")""),(6,"Stella","Good","1696101691099","elit,",""md5("QXE02CHB5PB")""),(7,"Amy","Mcmahon","1681102328999","neque.",""md5("CGB10BMP5LY")""),(8,"Martina","Robinson","1614030136999","In",""md5("WBF28ACM0GS")""),(9,"Lila","Cherry","1639011709799","pharetra",""md5("RTO08VPK4QW")""),(10,"Sybil","Erickson","1631121599899","dui,",""md5("NQC31RGT2BP")""),(11,"Erin","Massey","1670053025699","quam",""md5("LYB37QUU7FJ")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (12,"Gillian","Oconnor","1672010325599","Donec",""md5("EMW45YIF0VV")""),(13,"Meghan","Henderson","1613121854899","lorem,",""md5("VWV30CEG7MR")""),(14,"Emerald","Garrett","1681070280399","aliquam",""md5("PBT99VTR1VO")""),(15,"April","Mcintosh","1672110668299","rutrum,",""md5("RIQ01ZCF5UY")""),(16,"Frances","Weeks","1696031090299","orci.",""md5("GVM37TKV9QZ")""),(17,"Ariana","Francis","1686021612199","commodo",""md5("DBW51DUH3MO")""),(18,"Jillian","Fox","1681050409899","vitae",""md5("YEX19XZE9VP")""),(19,"Kevyn","Benton","1622030948499","felis",""md5("DQF74ZKC3UP")""),(20,"Rylee","Spears","1628112814699","diam.",""md5("JCE32ETB9MR")""),(21,"Kessie","Dorsey","1635061276499","rhoncus",""md5("VZC81DTC9BW")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (22,"Desirae","Gutierrez","1696072415899","justo",""md5("RVT92MHO3VC")""),(23,"Imani","Curry","1675032506899","elementum,",""md5("WXV10NRC9KO")""),(24,"Stella","Obrien","1674072877799","euismod",""md5("OCL64TZK8OL")""),(25,"Gwendolyn","Castaneda","1641110157199","consectetuer",""md5("CCR58TMU3BO")""),(26,"MacKensie","Ellis","1688100789599","et",""md5("BKY56CRD7FX")""),(27,"Lilah","Church","1619052646499","velit.",""md5("BCC24SBB6ER")""),(28,"Wynter","Stark","1629110646099","purus,",""md5("SQG72ZKB2FW")""),(29,"Minerva","Wiley","1615030421699","fermentum",""md5("DHN00PEG1QV")""),(30,"Carla","Heath","1672120652299","id,",""md5("LVF31IWP1HV")""),(31,"Bianca","Wilkerson","1687052419299","dolor.",""md5("AER05HDT4QH")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (32,"Ivy","Mcintyre","1604070540999","nonummy",""md5("FGG20SFS8IQ")""),(33,"Rhona","Ayers","1604050146899","ligula",""md5("OMC75XAG1ZY")""),(34,"Macey","Witt","1660042836299","non",""md5("XCM89MHS6GB")""),(35,"Dana","Oneill","1614091605499","Quisque",""md5("ZME32HKZ0NC")""),(36,"TaShya","Cole","1682051044899","malesuada",""md5("BZB90ZEE7VN")""),(37,"Candace","Good","1641092610899","eros",""md5("ITX44QNB0IA")""),(38,"Alfreda","Coleman","1683091617099","pede.",""md5("ZXB06KZL1UJ")""),(39,"Amity","Christian","1659101442199","interdum",""md5("AKW74JOO0XG")""),(40,"Alice","House","1667103069699","natoque",""md5("NIS90HLF9IA")""),(41,"Kristen","Valencia","1682101061399","lorem",""md5("VLB38DDJ5IP")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (42,"Cameron","Middleton","1647101109299","Phasellus",""md5("TYJ83NXQ2YK")""),(43,"Anjolie","Randall","1643090862499","sit",""md5("JEQ03DVO7FQ")""),(44,"Illiana","Johnston","1621091395499","eleifend",""md5("VXZ11XRR4UE")""),(45,"Leigh","Meyers","1631120554599","facilisis,",""md5("FBD63YOY3XV")""),(46,"Kiayada","Goff","1659032415499","Phasellus",""md5("PZL24WYS0VU")""),(47,"Serina","Woodward","1660122762899","at,",""md5("SVU37GBN4VT")""),(48,"Karyn","Osborn","1676121507399","malesuada",""md5("JKK77GAS2AQ")""),(49,"Adena","Whitaker","1671031938399","consectetuer",""md5("TOQ41GBL3JL")""),(50,"Justine","Pacheco","1643072132699","amet,",""md5("YRZ95TCS3EP")""),(51,"Amela","Lancaster","1645020539999","euismod",""md5("CAN07USZ1MI")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (52,"Fredericka","Mendoza","1644100290999","et",""md5("TUW35NZL8WJ")""),(53,"Hilary","Larson","1693042257399","quam.",""md5("GRS65GDA2FH")""),(54,"Geraldine","Eaton","1682051163499","convallis",""md5("IBX66WAM3LG")""),(55,"Colette","Ramsey","1675050191799","pharetra,",""md5("LII38GQK3EJ")""),(56,"Emma","Mendoza","1649052100799","volutpat",""md5("SBU09ZIU0KV")""),(57,"Heather","Duncan","1614080655899","Pellentesque",""md5("FHG49BVU4KT")""),(58,"Tasha","Hudson","1611021669099","inceptos",""md5("RUP01GFJ1CS")""),(59,"Geraldine","Salinas","1664101906099","Etiam",""md5("RAM12DAT7AC")""),(60,"Alexa","Ware","1644051607399","erat.",""md5("UGC79MYG3IW")""),(61,"Mallory","Owens","1643051341199","placerat,",""md5("FSK67BSF8NW")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (62,"Ava","Hendricks","1654062401599","taciti",""md5("FHQ01JPI5RU")""),(63,"Haley","Patel","1668020214899","massa",""md5("OBB88XOU7QR")""),(64,"Rhonda","Morrow","1610092651299","eget",""md5("AFP97JKE0GI")""),(65,"Veronica","Bates","1671012137999","ante",""md5("CVF88LDG7KV")""),(66,"Jocelyn","Mccullough","1631040679999","Fusce",""md5("JTD31NXB1CO")""),(67,"Iona","Benton","1636121585199","dapibus",""md5("XCB76XNA4YF")""),(68,"Cameran","Bradley","1637042516899","vel,",""md5("BCN01BRI8MZ")""),(69,"Rae","Sharp","1683061815899","tincidunt",""md5("IXZ94PMA7NR")""),(70,"Chastity","Burt","1657042497299","magna",""md5("JFU71SKH9UR")""),(71,"Lavinia","Atkinson","1656011721999","cursus",""md5("LVQ02EFT7ZR")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (72,"Clementine","Stein","1676092931799","interdum.",""md5("MJF83AEF6GL")""),(73,"Veronica","Decker","1640080996999","arcu",""md5("YIL17ZNP3JL")""),(74,"Noel","Witt","1626032016099","scelerisque",""md5("ERB52EOW2JI")""),(75,"Sage","Snow","1622060670899","Sed",""md5("NKQ74FYL0TO")""),(76,"Tamekah","Puckett","1659082358199","felis.",""md5("MIH29QLL8TX")""),(77,"Stephanie","Burgess","1674122568399","vitae,",""md5("ZLM91FQH9PM")""),(78,"Kaitlin","Gillespie","1623070276499","egestas.",""md5("TSI84FFA0OB")""),(79,"Latifah","Bonner","1638121470199","sollicitudin",""md5("TWK38PUT9AW")""),(80,"Ocean","Pruitt","1616080605299","vel,",""md5("BXR44KHD9JI")""),(81,"Ifeoma","Roberts","1656101382999","ac",""md5("IHO13SHH6CT")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (82,"Claudia","English","1667020302599","nisl.",""md5("WKZ58KFV1WT")""),(83,"Yvonne","Stephens","1638042445499","blandit",""md5("SRO52VEW8RP")""),(84,"Illana","Mcdaniel","1668072882399","scelerisque",""md5("NBK47PVZ1XD")""),(85,"Hedda","Molina","1616022564799","ultricies",""md5("FTB63RIQ7QX")""),(86,"Jane","Vang","1686070305999","consectetuer,",""md5("AQG73BYB4QF")""),(87,"Adele","Randall","1687110376199","ac,",""md5("UBG00LTJ2FY")""),(88,"Minerva","Serrano","1671062470099","pellentesque.",""md5("YJJ55UTA7OV")""),(89,"Megan","Collins","1690051853399","Maecenas",""md5("ODX56JBT6OZ")""),(90,"Wilma","Neal","1625110578199","ut",""md5("FUC45RTW9IM")""),(91,"Hedwig","Clemons","1614031137999","neque",""md5("PDO69IOL3ZC")"");
INSERT INTO Usuario (idUsuario,nombre,apellido,cedula,username,password) VALUES (92,"Jessamine","Morse","1622122644899","libero",""md5("SFG15TPX9SH")""),(93,"Melanie","Schultz","1619110656999","arcu.",""md5("PNZ15VUC5WR")""),(94,"Rylee","Guerrero","1695031961299","id",""md5("YSX94HXF4PH")""),(95,"Keelie","Odonnell","1689022460999","mus.",""md5("NGQ04USV7YT")""),(96,"Leila","Walton","1613120607799","neque",""md5("WFH57YNE4YK")""),(97,"Freya","Charles","1659081789499","est",""md5("UNX39VGZ3MK")""),(98,"Kameko","Frazier","1679100894099","ac",""md5("AUB79XXQ4SH")""),(99,"Amy","Guthrie","1648121421199","Aenean",""md5("QRU49BJL0CT")""),(100,"Tara","Solomon","1617052564899","et",""md5("UJL29UJD2LR")""),(101,"Wynne","Lott","1696082843199","a,",""md5("EBA59AWD9HF")"");


insert into Look (idUsuario, nombre, direccionImagen, descripcion) values ((select idUsuario from Usuario where username=?),?,?,?)
