CREATE DATABASE assignment;
USE assignment;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO user (email, `password`)
VALUES
('test@gmail.com', 'abc123');


CREATE TABLE article (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  authorID INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (authorID) REFERENCES user(id)
);

INSERT INTO article (title, content, authorID)
VALUES
('The Catcher in the Rye', 'Holden Caulfield struggles with the hypocrisy and phoniness of the adult world.', 1),
('The Great Gatsby','ay Gatsby pursues his obsession with Daisy Buchanan in the glittering world of the Roaring Twenties.',5),
('The Lord of the Rings','Frodo Baggins embarks on a perilous journey to destroy the One Ring and save Middle-earth.',4),
('1984','Winston Smith rebels against a totalitarian government that controls every aspect of citizens lives.',2),
('Animal Farm','The animals on Manor Farm overthrow their human owner and try to create a utopian society, but corruption and greed set in.',1),
('Fahrenheit 451',"Fireman Guy Montag questions his society's ban on books and becomes a fugitive from the law.",1),
('The Picture of Dorian Gray',' A young man remains young and beautiful while his portrait ages and reflects the ugliness of his soul.',3),
('The Adventures of Huckleberry Finn','Huck Finn and his friend Jim, a runaway slave, journey down the Mississippi River and confront the racial prejudices of their society.',1),
('To Kill a Mockingbird','A group of boys stranded on a deserted island descend into savagery and violence.',1),
('The Chronicles of Narnia','Four siblings discover a magical world full of talking animals and mythical creatures.',5),
('The Hobbit','Bilbo Baggins goes on an adventure with dwarves and a wizard to reclaim a treasure stolen by a dragon.',5),
("The Hitchhiker's Guide to the Galaxy",'Arthur Dent is taken on a wild ride through space by his alien friend Ford Prefect.',6),
("Harry Potter and the Sorcerer's Stone",'Harry Potter learns he is a wizard and attends Hogwarts School of Witchcraft and Wizardry, where he must confront the evil Lord Voldemort.',3),
('The Diary of a Young Girl','Anne Frank writes about her experiences hiding from the Nazis during World War II.',4),
('The Bell Jar','Esther Greenwood struggles with depression and the pressures of being a young woman in the 1950s.',4),
('The Time Machine','The Time Traveller journeys to the future and discovers a world divided into two species: the peaceful Eloi and the savage Morlocks.',2),
('Wuthering Heights','The passionate love affair between Catherine Earnshaw and Heathcliff leads to tragedy for everyone around them.',4),
('The Scarlet Letter','Hester Prynne wears the letter "A" on her chest as punishment for adultery in Puritan Boston.',2),
('One Hundred Years of Solitude',"The Buendía family's history and the town of Macondo are intertwined in this epic novel by Gabriel García Márquez.",5),
('Crime and Punishment','Raskolnikov commits a murder to prove his own superiority, but his conscience torments him.',2),
('The Old Man and the Sea','Santiago, an old Cuban fisherman, struggles to catch a giant marlin in the Gulf Stream.',3),
('Dracula','The vampire Count Dracula terrorizes Victorian England and seeks to spread his curse to new victims.',1),
('The Odyssey','The Greek hero Odysseus faces many trials and battles on his journey home from the Trojan War.',3),
('Frankenstein','Victor Frankenstein creates a monster from human parts and is horrified by his own creation.',4),
('The Sun Also Rises','American expatriates drink and party in Paris and Pamplona, but struggle to find meaning in their lives after the devastation of World War I.', 6),
('The Power of Positive Thinking','Believing in yourself and your abilities can help you overcome obstacles and achieve your goals.',1),
('The Future of Renewable Energy','As we continue to shift away from fossil fuels, renewable energy sources like wind and solar power are becoming increasingly important.', 5),
("The Benefits of Mindfulness Meditation","Practicing mindfulness meditation can help reduce stress and anxiety, improve focus and concentration, and promote overall well-being.",2),
("The Art of Effective Communication","Mastering the art of effective communication involves not just speaking clearly and concisely, but also listening actively and empathetically.",2),
("The Power of Positive Thinking","Believing in yourself and your abilities can help you overcome obstacles and achieve your goals.",6),
("The Future of Renewable Energy","As we continue to shift away from fossil fuels, renewable energy sources like wind and solar power are becoming increasingly important.",3),
("The Benefits of Mindfulness Meditation","Practicing mindfulness meditation can help reduce stress and anxiety, improve focus and concentration, and promote overall well-being.",3),
("The Art of Effective Communication","Mastering the art of effective communication involves not just speaking clearly and concisely, but also listening actively and empathetically.",2);
