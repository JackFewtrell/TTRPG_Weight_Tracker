CREATE DATABASE IF NOT EXISTS weightTracker;
USE weightTracker; 


CREATE TABLE IF NOT EXISTS users(
	userID INT NOT NULL auto_increment,
    username varchar(255) NOT NULL, 
    hash varchar(60) NOT NULL,
    refreshToken varchar(255) DEFAULT NULL,
    PRIMARY KEY(userID),
    UNIQUE KEY name_UNIQUE (username)
);

CREATE TABLE IF NOT EXISTS parties(
	partyID INT NOT NULL auto_increment,
    partyName varchar(255) NOT NULL, 
    PRIMARY KEY(partyID)
);

CREATE TABLE IF NOT EXISTS characters(
	characterID INT NOT NULL auto_increment,
    userID INT NOT NULL, 
    partyID INT NOT NULL, 
    characterName varchar(255) NOT NULL, 
    characterDescription MEDIUMTEXT DEFAULT NULL, 
    picture varchar(255) DEFAULT NULL, 
    str int DEFAULT NULL, 
	cha int DEFAULT NULL, 
    wis int DEFAULT NULL,
    inte int DEFAULT NULL,
	con int DEFAULT NULL,
    dex int DEFAULT NULL,
    PRIMARY KEY(characterID),
    FOREIGN KEY(userID) REFERENCES users(userID),
    FOREIGN KEY(partyID) REFERENCES parties(partyID)
);

CREATE TABLE IF NOT EXISTS items(
	itemID INT NOT NULL auto_increment,
    itemName varchar(255) NOT NULL,
    itemDescription MEDIUMTEXT NOT NULL,
    weight int NOT NULL,
    regularPrice INT DEFAULT NULL, 
    itemApproved BOOL DEFAULT 0, 
    PRIMARY KEY (itemID)
);

CREATE TABLE IF NOT EXISTS userItems(
	userItemID INT NOT NULL auto_increment,
    characterID INT NOT NULL,
    itemID INT NOT NULL,
    nickname varchar(255) DEFAULT NULL, 
    userITemDescription MEDIUMTEXT DEFAULT NULL, 
    wornStatus BOOL DEFAULT 0, 
    hiddenStatus BOOL DEFAULT 0, 
    PRIMARY KEY (userITemID),
    FOREIGN KEY (characterID) REFERENCES characters(characterID),
    FOREIGN KEY (itemID) REFERENCES items(itemID)
);