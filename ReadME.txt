This is a Weight Tracker for D&D, Pathfinder and Call of Cthulhu 

There will be two parts to this website, and a server 

The Website 

- There will need to be functionality for 3 roles, un logged in, logged in as player, and loggged in as dm 
- These roles will have different functioanlity

- unlogged will only be able to sign in or create an account. The only account thsdey can create will have the player role 
- The player will have options to view their party (and view their visible items), view their player sheet, choose what is shown to party members, 
suggest additional items for item database, addiontional items are charatcer images PLAYER CANNOT ADD THIS OR INTERACT ROLE OF dm, 
Add to their items list. Anoptehr thing to add, if a player has an Item equipped, it cannot be hidden 
- DM can see all items in players characters, party, edit items, add pictures to profiles, assign users to a party, etc. 
DM cna do actions of player for them 



The Server 
- The API will be made using Swagger
- Express will be used to create the backend 


TABLES HERE 
- There will be 5 tables: USERS, CHARACTERS, ITEMS,  PARTIES, USER ITEMS 

USERS 
- User ID, non zero assigned, PRIMARY 
- NAME - UNIQUE
- HASH 
- REFRESH TOKEN 

CHARACTERS
- USER ID - FOREIGN
- CHARACTER ID - PRIMARY
- NAME 
- DISCRIPTION 
- PICTURE, Default Null
- STR
- CHA
- WIS 
- DEX 
- CON 
- INT 
- PARTY ID, NOT NULL 

PARTIES 
- PARTY ID
- PARTY Name 

ITEMS
- ITEM ID
- NAME
- DESCRIPTION
- Weight
- Regular Value (gold) 
- Status (approved or not) 

USER ITEMS
- USER ITEM ID
- CHARACTER ID
- ITEM ID 
- NICKNAME 
- DESCRIPTION
- Worn Status 
- Hidden Status 








