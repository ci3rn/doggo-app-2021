-- TODO: ADD user creation

-- ALTER USER 'root' IDENTIFIED WITH mysql_native_password BY 'pwd';
-- flush privileges;

-- CREATE DATABASE doggo_app;
-- drop table doggo_app.doggos


CREATE TABLE IF NOT EXISTS doggo_app.doggos (
    id VARCHAR(37) PRIMARY KEY DEFAULT (uuid()),
    name VARCHAR(255),
    image_url VARCHAR(1000),
    breed_group VARCHAR(255),
    country_code VARCHAR(3),
    height VARCHAR(50),
    weight VARCHAR(50),
    life_span VARCHAR(50),
    temperament VARCHAR(200)
);

select * from doggo_app.doggos;

-- TRUNCATE TABLE doggo_app.doggos;

INSERT INTO doggo_app.doggos(name, image_url, breed_group, country_code, height, weight, life_span, temperament)
SELECT 'Affenpinscher', 'https://cdn2.thedogapi.com/images/BJa4kxc4X.jpg', 'Toy', 'N/A', '23 - 29', '3 - 6', '10 - 12 years', 'Stubborn, Curious, Playful, Adventurous, Active, Fun-loving' FROM DUAL UNION ALL
SELECT 'Afghan Hound', 'https://cdn2.thedogapi.com/images/hMyT4CDXR.jpg', 'Hound', 'AG', '64 - 69', '23 - 27', '10 - 13 years', 'Aloof, Clownish, Dignified, Independent, Happy' FROM DUAL UNION ALL
SELECT 'African Hunting Dog', 'https://cdn2.thedogapi.com/images/rkiByec47.jpg', 'none', 'N/A', '76', '20 - 30', '11 years', 'Wild, Hardworking, Dutiful' FROM DUAL UNION ALL
SELECT 'Airedale Terrier', 'https://cdn2.thedogapi.com/images/1-7cgoZSh.jpg', 'Terrier', 'N/A', '53 - 58', '18 - 29', '10 - 13 years', 'Outgoing, Friendly, Alert, Confident, Intelligent, Courageous' FROM DUAL UNION ALL
SELECT 'Akbash Dog', 'https://cdn2.thedogapi.com/images/26pHT3Qk7.jpg', 'Working', 'N/A', '71 - 86', '41 - 54', '10 - 12 years', 'Loyal, Independent, Intelligent, Brave' FROM DUAL UNION ALL
SELECT 'Akita', 'https://cdn2.thedogapi.com/images/BFRYBufpm.jpg', 'Working', 'N/A', '61 - 71', '29 - 52', '10 - 14 years', 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous' FROM DUAL UNION ALL
SELECT 'Alapaha Blue Blood Bulldog', 'https://cdn2.thedogapi.com/images/33mJ-V3RX.jpg', 'Mixed', 'N/A', '46 - 61', '25 - 41', '12 - 13 years', 'Loving, Protective, Trainable, Dutiful, Responsible' FROM DUAL UNION ALL
SELECT 'Alaskan Husky', 'https://cdn2.thedogapi.com/images/-HgpNnGXl.jpg', 'Mixed', 'N/A', '58 - 66', '17 - 23', '10 - 13 years', 'Friendly, Energetic, Loyal, Gentle, Confident' FROM DUAL UNION ALL
SELECT 'Alaskan Malamute', 'https://cdn2.thedogapi.com/images/dW5UucTIW.jpg', 'Working', 'N/A', '58 - 64', '29 - 45', '12 - 15 years', 'Friendly, Affectionate, Devoted, Loyal, Dignified, Playful' FROM DUAL UNION ALL
SELECT 'American Bulldog', 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg', 'Working', 'N/A', '56 - 69', '27 - 54', '10 - 12 years', 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant' FROM DUAL UNION ALL
SELECT 'American Bully', 'https://cdn2.thedogapi.com/images/sqQJDtbpY.jpg', 'none', 'US', '36 - 43', '14 - 68', '8 – 15 years', 'Strong Willed, Stubborn, Friendly, Clownish, Affectionate, Loyal, Obedient, Intelligent, Courageous' FROM DUAL UNION ALL
SELECT 'American Eskimo Dog', 'https://cdn2.thedogapi.com/images/Bymjyec4m.jpg', 'Non-Sporting', 'US', '38 - 48', '9 - 18', '12 - 15 years', 'Friendly, Alert, Reserved, Intelligent, Protective' FROM DUAL UNION ALL
SELECT 'American Eskimo Dog (Miniature)', 'https://cdn2.thedogapi.com/images/_gn8GLrE6.jpg', 'none', 'US', '23 - 30', '3 - 5', '13 – 15 years', 'Friendly, Alert, Reserved, Intelligent, Protective' FROM DUAL UNION ALL
SELECT 'American Foxhound', 'https://cdn2.thedogapi.com/images/S14n1x9NQ.jpg', 'Hound', 'US', '53 - 71', '29 - 34', '8 - 15 years', 'Kind, Sweet-Tempered, Loyal, Independent, Intelligent, Loving' FROM DUAL UNION ALL
SELECT 'American Pit Bull Terrier', 'https://cdn2.thedogapi.com/images/HkC31gcNm.png', 'Terrier', 'US', '43 - 53', '14 - 27', '10 - 15 years', 'Strong Willed, Stubborn, Friendly, Clownish, Affectionate, Loyal, Obedient, Intelligent, Courageous' FROM DUAL UNION ALL
SELECT 'American Staffordshire Terrier', 'https://cdn2.thedogapi.com/images/rJIakgc4m.jpg', 'Terrier', 'US', '43 - 48', '23 - 27', '12 - 15 years', 'Tenacious, Friendly, Devoted, Loyal, Attentive, Courageous' FROM DUAL UNION ALL
SELECT 'American Water Spaniel', 'https://cdn2.thedogapi.com/images/SkmRJl9VQ.jpg', 'Sporting', 'US', '38 - 46', '11 - 20', '10 - 12 years', 'Friendly, Energetic, Obedient, Intelligent, Protective, Trainable' FROM DUAL UNION ALL
SELECT 'Anatolian Shepherd Dog', 'https://cdn2.thedogapi.com/images/BJT0Jx5Nm.jpg', 'Working', 'N/A', '69 - 74', '36 - 68', '11 - 13 years', 'Steady, Bold, Independent, Confident, Intelligent, Proud' FROM DUAL UNION ALL
SELECT 'Appenzeller Sennenhund', 'https://cdn2.thedogapi.com/images/HkNkxlqEX.jpg', 'none', 'N/A', '51 - 56', '22 - 25', '12 – 14 years', 'Reliable, Fearless, Energetic, Lively, Self-assured' FROM DUAL UNION ALL
SELECT 'Australian Cattle Dog', 'https://cdn2.thedogapi.com/images/IBkYVm4v1.jpg', 'Herding', 'AU', '43 - 51', '20 - 28', '12 - 14 years', 'Cautious, Energetic, Loyal, Obedient, Protective, Brave' FROM DUAL UNION ALL
SELECT 'Australian Kelpie', 'https://cdn2.thedogapi.com/images/Hyq1ge9VQ.jpg', 'Herding', 'AU', '43 - 51', '14 - 21', '10 - 13 years', 'Friendly, Energetic, Alert, Loyal, Intelligent, Eager' FROM DUAL UNION ALL
SELECT 'Australian Shepherd', 'https://cdn2.thedogapi.com/images/B1-llgq4m.jpg', 'Herding', 'AU', '46 - 58', '16 - 29', '12 - 16 years', 'Good-natured, Affectionate, Intelligent, Active, Protective' FROM DUAL UNION ALL
SELECT 'Australian Terrier', 'https://cdn2.thedogapi.com/images/r1Ylge5Vm.jpg', 'Terrier', 'AU', '25 - 28', '6 - 7', '15 years', 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous' FROM DUAL UNION ALL
SELECT 'Azawakh', 'https://cdn2.thedogapi.com/images/SkvZgx94m.jpg', 'Hound', 'N/A', '58 - 74', '15 - 25', '10 - 13 years', 'Aloof, Affectionate, Attentive, Rugged, Fierce, Refined' FROM DUAL UNION ALL
SELECT 'Barbet', 'https://cdn2.thedogapi.com/images/HyWGexcVQ.jpg', 'none', 'N/A', '51 - 66', '18 - 29', '13 – 15 years', 'Obedient, Companionable, Intelligent, Joyful' FROM DUAL UNION ALL
SELECT 'Basenji', 'https://cdn2.thedogapi.com/images/H1dGlxqNQ.jpg', 'Hound', 'N/A', '41 - 43', '10 - 11', '10 - 12 years', 'Affectionate, Energetic, Alert, Curious, Playful, Intelligent' FROM DUAL UNION ALL
SELECT 'Basset Bleu de Gascogne', 'https://cdn2.thedogapi.com/images/BkMQll94X.jpg', 'Hound', 'N/A', '33 - 38', '16 - 18', '10 - 14 years', 'Affectionate, Lively, Agile, Curious, Happy, Active' FROM DUAL UNION ALL
SELECT 'Basset Hound', 'https://cdn2.thedogapi.com/images/Sy57xx9EX.jpg', 'Hound', 'N/A', '36', '23 - 29', '12 - 15 years', 'Tenacious, Friendly, Affectionate, Devoted, Sweet-Tempered, Gentle' FROM DUAL UNION ALL
SELECT 'Beagle', 'https://cdn2.thedogapi.com/images/Syd4xxqEm.jpg', 'Hound', 'N/A', '33 - 38', '9 - 16', '13 - 16 years', 'Amiable, Even Tempered, Excitable, Determined, Gentle, Intelligent' FROM DUAL UNION ALL
SELECT 'Bearded Collie', 'https://cdn2.thedogapi.com/images/A09F4c1qP.jpg', 'Herding', 'N/A', '51 - 56', '20 - 25', '12 - 14 years', 'Self-confidence, Hardy, Lively, Alert, Intelligent, Active' FROM DUAL UNION ALL
SELECT 'Beauceron', 'https://cdn2.thedogapi.com/images/HJQ8ge5V7.jpg', 'Herding', 'N/A', '61 - 70', '36 - 50', '10 - 12 years', 'Fearless, Friendly, Intelligent, Protective, Calm' FROM DUAL UNION ALL
SELECT 'Bedlington Terrier', 'https://cdn2.thedogapi.com/images/ByK8gx947.jpg', 'Terrier', 'N/A', '38 - 41', '8 - 10', '14 - 16 years', 'Affectionate, Spirited, Intelligent, Good-tempered' FROM DUAL UNION ALL
SELECT 'Belgian Malinois', 'https://cdn2.thedogapi.com/images/r1f_ll5VX.jpg', 'Herding', 'N/A', '56 - 66', '18 - 36', '12 - 14 years', 'Watchful, Alert, Stubborn, Friendly, Confident, Hard-working, Active, Protective' FROM DUAL UNION ALL
SELECT 'Belgian Tervuren', 'https://cdn2.thedogapi.com/images/B1KdxlcNX.jpg', 'Herding', 'N/A', '56 - 66', '18 - 29', '10 - 12 years', 'Energetic, Alert, Loyal, Intelligent, Attentive, Protective' FROM DUAL UNION ALL
SELECT 'Bernese Mountain Dog', 'https://cdn2.thedogapi.com/images/S1fFlx5Em.jpg', 'Working', 'N/A', '58 - 70', '29 - 54', '7 - 10 years', 'Affectionate, Loyal, Intelligent, Faithful' FROM DUAL UNION ALL
SELECT 'Bichon Frise', 'https://cdn2.thedogapi.com/images/HkuYlxqEQ.jpg', 'Non-Sporting', 'N/A', '24 - 29', '5 - 8', '15 years', 'Feisty, Affectionate, Cheerful, Playful, Gentle, Sensitive' FROM DUAL UNION ALL
SELECT 'Black and Tan Coonhound', 'https://cdn2.thedogapi.com/images/HJAFgxcNQ.jpg', 'Hound', 'N/A', '58 - 69', '29 - 45', '10 - 12 years', 'Easygoing, Gentle, Adaptable, Trusting, Even Tempered, Lovable' FROM DUAL UNION ALL
SELECT 'Bloodhound', 'https://cdn2.thedogapi.com/images/Skdcgx9VX.jpg', 'Hound', 'N/A', '58 - 69', '36 - 50', '8 - 10 years', 'Stubborn, Affectionate, Gentle, Even Tempered' FROM DUAL UNION ALL
SELECT 'Bluetick Coonhound', 'https://cdn2.thedogapi.com/images/rJxieg9VQ.jpg', 'Hound', 'N/A', '53 - 69', '20 - 36', '12 - 14 years', 'Friendly, Intelligent, Active' FROM DUAL UNION ALL
SELECT 'Boerboel', 'https://cdn2.thedogapi.com/images/HyOjge5Vm.jpg', 'Working', 'N/A', '56 - 69', '50 - 91', '10 - 12 years', 'Obedient, Confident, Intelligent, Dominant, Territorial' FROM DUAL UNION ALL
SELECT 'Border Collie', 'https://cdn2.thedogapi.com/images/sGQvQUpsp.jpg', 'Herding', 'N/A', '46 - 56', '14 - 20', '12 - 16 years', 'Tenacious, Keen, Energetic, Responsive, Alert, Intelligent' FROM DUAL UNION ALL
SELECT 'Border Terrier', 'https://cdn2.thedogapi.com/images/HJOpge9Em.jpg', 'Terrier', 'N/A', '28 - 41', '5 - 7', '12 - 14 years', 'Fearless, Affectionate, Alert, Obedient, Intelligent, Even Tempered' FROM DUAL UNION ALL
SELECT 'Boston Terrier', 'https://cdn2.thedogapi.com/images/rkZRggqVX.jpg', 'Non-Sporting', 'N/A', '41 - 43', '5 - 11', '11 - 13 years', 'Friendly, Lively, Intelligent' FROM DUAL UNION ALL
SELECT 'Bouvier des Flandres', 'https://cdn2.thedogapi.com/images/Byd0xl5VX.jpg', 'Herding', 'N/A', '60 - 70', '32 - 50', '10 - 15 years', 'Protective, Loyal, Gentle, Intelligent, Familial, Rational' FROM DUAL UNION ALL
SELECT 'Boxer', 'https://cdn2.thedogapi.com/images/ry1kWe5VQ.jpg', 'Working', 'N/A', '55 - 64', '23 - 32', '8 - 10 years', 'Devoted, Fearless, Friendly, Cheerful, Energetic, Loyal, Playful, Confident, Intelligent, Bright, Brave, Calm' FROM DUAL UNION ALL
SELECT 'Boykin Spaniel', 'https://cdn2.thedogapi.com/images/ryHJZlcNX.jpg', 'Sporting', 'N/A', '36 - 46', '11 - 18', '10 - 14 years', 'Friendly, Energetic, Companionable, Intelligent, Eager, Trainable' FROM DUAL UNION ALL
SELECT 'Bracco Italiano', 'https://cdn2.thedogapi.com/images/S13yZg5VQ.jpg', 'Sporting', 'N/A', '55 - 67', '25 - 40', '10 - 12 years', 'Stubborn, Affectionate, Loyal, Playful, Companionable, Trainable' FROM DUAL UNION ALL
SELECT 'Briard', 'https://cdn2.thedogapi.com/images/rkVlblcEQ.jpg', 'Herding', 'N/A', '56 - 69', '32 - 41', '10 - 12 years', 'Fearless, Loyal, Obedient, Intelligent, Faithful, Protective' FROM DUAL UNION ALL
SELECT 'Brittany', 'https://cdn2.thedogapi.com/images/HJWZZxc4X.jpg', 'Sporting', 'N/A', '44 - 52', '14 - 20', '12 - 14 years', 'Agile, Adaptable, Quick, Intelligent, Attentive, Happy' FROM DUAL UNION ALL
SELECT 'Bull Terrier', 'https://cdn2.thedogapi.com/images/VSraIEQGd.jpg', 'Terrier', 'N/A', '53 - 56', '23 - 32', '10 - 12 years', 'Trainable, Protective, Sweet-Tempered, Keen, Active' FROM DUAL UNION ALL
SELECT 'Bull Terrier (Miniature)', 'https://cdn2.thedogapi.com/images/BkKZWlcVX.jpg', 'none', 'N/A', '25 - 36', '11 - 15', '11 – 14 years', 'Trainable, Protective, Sweet-Tempered, Keen, Active, Territorial' FROM DUAL UNION ALL
SELECT 'Bullmastiff', 'https://cdn2.thedogapi.com/images/r1ifZl5E7.jpg', 'Working', 'N/A', '61 - 69', '45 - 59', '8 - 12 years', 'Docile, Reliable, Devoted, Alert, Loyal, Reserved, Loving, Protective, Powerful, Calm, Courageous' FROM DUAL UNION ALL
SELECT 'Cairn Terrier', 'https://cdn2.thedogapi.com/images/Sk7Qbg9E7.jpg', 'Terrier', 'N/A', '23 - 25', '5 - 6', '14 - 15 years', 'Hardy, Fearless, Assertive, Gay, Intelligent, Active' FROM DUAL UNION ALL
SELECT 'Cane Corso', 'https://cdn2.thedogapi.com/images/r15m-lc4m.jpg', 'Working', 'N/A', '60 - 70', '40 - 54', '10 - 11 years', 'Trainable, Reserved, Stable, Quiet, Even Tempered, Calm' FROM DUAL UNION ALL
SELECT 'Cardigan Welsh Corgi', 'https://cdn2.thedogapi.com/images/SyXN-e9NX.jpg', 'Herding', 'N/A', '27 - 32', '11 - 17', '12 - 14 years', 'Affectionate, Devoted, Alert, Companionable, Intelligent, Active' FROM DUAL UNION ALL
SELECT 'Catahoula Leopard Dog', 'https://cdn2.thedogapi.com/images/BJcNbec4X.jpg', 'Herding', 'N/A', '51 - 66', '23 - 43', '10 - 12 years', 'Energetic, Inquisitive, Independent, Gentle, Intelligent, Loving' FROM DUAL UNION ALL
SELECT 'Caucasian Shepherd (Ovcharka)', 'https://cdn2.thedogapi.com/images/r1rrWe5Em.jpg', 'Working', 'N/A', '61 - 85', '36 - 45', '10 - 12 years', 'Alert, Quick, Dominant, Powerful, Calm, Strong' FROM DUAL UNION ALL
SELECT 'Cavalier King Charles Spaniel', 'https://cdn2.thedogapi.com/images/HJRBbe94Q.jpg', 'Toy', 'N/A', '30 - 33', '6 - 8', '10 - 14 years', 'Fearless, Affectionate, Sociable, Patient, Playful, Adaptable' FROM DUAL UNION ALL
SELECT 'Chesapeake Bay Retriever', 'https://cdn2.thedogapi.com/images/9BXwUeCc2.jpg', 'Sporting', 'N/A', '53 - 66', '25 - 36', '10 - 13 years', 'Affectionate, Intelligent, Quiet, Dominant, Happy, Protective' FROM DUAL UNION ALL
SELECT 'Chinese Crested', 'https://cdn2.thedogapi.com/images/B1pDZx9Nm.jpg', 'Toy', 'N/A', '28 - 33', '5 - 6', '10 - 14 years', 'Affectionate, Sweet-Tempered, Lively, Alert, Playful, Happy' FROM DUAL UNION ALL
SELECT 'Chinese Shar-Pei', 'https://cdn2.thedogapi.com/images/B1ruWl94Q.jpg', 'Non-Sporting', 'N/A', '46 - 51', '20 - 27', '10 years', 'Suspicious, Affectionate, Devoted, Reserved, Independent, Loving' FROM DUAL UNION ALL
SELECT 'Chinook', 'https://cdn2.thedogapi.com/images/Sypubg54Q.jpg', 'Working', 'N/A', '56 - 66', '23 - 41', '12 - 15 years', 'Friendly, Alert, Dignified, Intelligent, Calm' FROM DUAL UNION ALL
SELECT 'Chow Chow', 'https://cdn2.thedogapi.com/images/ry8KWgqEQ.jpg', 'Non-Sporting', 'N/A', '43 - 51', '18 - 32', '12 - 15 years', 'Aloof, Loyal, Independent, Quiet' FROM DUAL UNION ALL
SELECT 'Clumber Spaniel', 'https://cdn2.thedogapi.com/images/rkeqWgq4Q.jpg', 'Sporting', 'N/A', '43 - 51', '25 - 39', '10 - 12 years', 'Affectionate, Loyal, Dignified, Gentle, Calm, Great-hearted' FROM DUAL UNION ALL
SELECT 'Cocker Spaniel', 'https://cdn2.thedogapi.com/images/1lFmrzECl.jpg', 'Sporting', 'N/A', '36 - 38', '9 - 14', '12 - 15 years', 'Trainable, Friendly, Affectionate, Playful, Quiet, Faithful' FROM DUAL UNION ALL
SELECT 'Cocker Spaniel (American)', 'https://cdn2.thedogapi.com/images/HkRcZe547.jpg', 'Sporting', 'N/A', '36 - 38', '9 - 14', '12 - 15 years', 'Outgoing, Sociable, Trusting, Joyful, Even Tempered, Merry' FROM DUAL UNION ALL
SELECT 'Coton de Tulear', 'https://cdn2.thedogapi.com/images/SyviZlqNm.jpg', 'Non-Sporting', 'N/A', '23 - 28', '4 - 7', '13 - 16 years', 'Affectionate, Lively, Playful, Intelligent, Trainable, Vocal' FROM DUAL UNION ALL
SELECT 'Dalmatian', 'https://cdn2.thedogapi.com/images/SkJ3blcN7.jpg', 'Non-Sporting', 'N/A', '48 - 58', '23 - 25', '10 - 13 years', 'Outgoing, Friendly, Energetic, Playful, Sensitive, Intelligent, Active' FROM DUAL UNION ALL
SELECT 'Doberman Pinscher', 'https://cdn2.thedogapi.com/images/HyL3bl94Q.jpg', 'Working', 'N/A', '61 - 71', '30 - 40', '10 years', 'Fearless, Energetic, Alert, Loyal, Obedient, Confident, Intelligent' FROM DUAL UNION ALL
SELECT 'Dogo Argentino', 'https://cdn2.thedogapi.com/images/S1nhWx94Q.jpg', 'Working', 'N/A', '60 - 69', '36 - 45', '10 - 12 years', 'Friendly, Affectionate, Cheerful, Loyal, Tolerant, Protective' FROM DUAL UNION ALL
SELECT 'Dutch Shepherd', 'https://cdn2.thedogapi.com/images/BkE6Wg5E7.jpg', 'none', 'N/A', '56 - 62', '23 - 32', '15 years', 'Reliable, Affectionate, Alert, Loyal, Obedient, Trainable' FROM DUAL UNION ALL
SELECT 'English Setter', 'https://cdn2.thedogapi.com/images/By4A-eqVX.jpg', 'Sporting', 'N/A', '61 - 64', '20 - 36', '12 years', 'Strong Willed, Mischievous, Affectionate, Energetic, Playful, Companionable, Gentle, Hard-working, Intelligent, Eager, People-Oriented' FROM DUAL UNION ALL
SELECT 'English Shepherd', 'https://cdn2.thedogapi.com/images/H1QyMe5EQ.jpg', 'Working', 'N/A', '46 - 58', '20 - 30', '10 - 13 years', 'Kind, Energetic, Independent, Adaptable, Intelligent, Bossy' FROM DUAL UNION ALL
SELECT 'English Springer Spaniel', 'https://cdn2.thedogapi.com/images/Hk0Jfe5VQ.jpg', 'Sporting', 'N/A', '48 - 51', '16 - 23', '12 - 14 years', 'Affectionate, Cheerful, Alert, Intelligent, Attentive, Active' FROM DUAL UNION ALL
SELECT 'English Toy Spaniel', 'https://cdn2.thedogapi.com/images/SkIgzxqNQ.jpg', 'Toy', 'N/A', '25', '4 - 6', '10 - 12 years', 'Affectionate, Reserved, Playful, Gentle, Happy, Loving' FROM DUAL UNION ALL
SELECT 'English Toy Terrier', 'https://cdn2.thedogapi.com/images/SJ6eMxqEQ.jpg', 'none', 'N/A', '25 - 30', '3 - 4', '12 - 13 years', 'Stubborn, Alert, Companionable, Intelligent, Cunning, Trainable' FROM DUAL UNION ALL
SELECT 'Eurasier', 'https://cdn2.thedogapi.com/images/S1VWGx9Nm.jpg', 'Non-Sporting', 'N/A', '52 - 60', '18 - 32', '12 - 14 years', 'Alert, Reserved, Intelligent, Even Tempered, Watchful, Calm' FROM DUAL UNION ALL
SELECT 'Field Spaniel', 'https://cdn2.thedogapi.com/images/SkJfGecE7.jpg', 'Sporting', 'N/A', '43 - 46', '16 - 23', '11 - 15 years', 'Docile, Cautious, Sociable, Sensitive, Adaptable, Familial' FROM DUAL UNION ALL
SELECT 'Finnish Lapphund', 'https://cdn2.thedogapi.com/images/S1KMGg5Vm.jpg', 'Herding', 'N/A', '41 - 53', '15 - 24', '12 - 15 years', 'Friendly, Keen, Faithful, Calm, Courageous' FROM DUAL UNION ALL
SELECT 'Finnish Spitz', 'https://cdn2.thedogapi.com/images/3PjHlQbkV.jpg', 'Non-Sporting', 'N/A', '39 - 51', '10 - 13', '12 - 15 years', 'Playful, Loyal, Independent, Intelligent, Happy, Vocal' FROM DUAL UNION ALL
SELECT 'French Bulldog', 'https://cdn2.thedogapi.com/images/HyWNfxc47.jpg', 'Non-Sporting', 'N/A', '28 - 30', '13 - 14', '9 - 11 years', 'Playful, Affectionate, Keen, Sociable, Lively, Alert, Easygoing, Patient, Athletic, Bright' FROM DUAL UNION ALL
SELECT 'German Pinscher', 'https://cdn2.thedogapi.com/images/B1u4zgqE7.jpg', 'Working', 'N/A', '43 - 51', '11 - 20', '12 - 14 years', 'Spirited, Lively, Intelligent, Loving, Even Tempered, Familial' FROM DUAL UNION ALL
SELECT 'German Shepherd Dog', 'https://cdn2.thedogapi.com/images/SJyBfg5NX.jpg', 'Herding', 'N/A', '56 - 66', '23 - 41', '10 - 13 years', 'Alert, Loyal, Obedient, Curious, Confident, Intelligent, Watchful, Courageous' FROM DUAL UNION ALL
SELECT 'German Shorthaired Pointer', 'https://cdn2.thedogapi.com/images/SJqBMg5Nm.jpg', 'Sporting', 'N/A', '53 - 64', '20 - 32', '12 - 14 years', 'Boisterous, Bold, Affectionate, Intelligent, Cooperative, Trainable' FROM DUAL UNION ALL
SELECT 'Giant Schnauzer', 'https://cdn2.thedogapi.com/images/H1NIzlcV7.jpg', 'Working', 'N/A', '60 - 70', '29 - 41', '10 - 12 years', 'Strong Willed, Kind, Loyal, Intelligent, Dominant, Powerful' FROM DUAL UNION ALL
SELECT 'Glen of Imaal Terrier', 'https://cdn2.thedogapi.com/images/H1oLMe94m.jpg', 'Terrier', 'N/A', '32 - 36', '15 - 18', '12 - 15 years', 'Spirited, Agile, Loyal, Gentle, Active, Courageous' FROM DUAL UNION ALL
SELECT 'Golden Retriever', 'https://cdn2.thedogapi.com/images/HJ7Pzg5EQ.jpg', 'Sporting', 'N/A', '55 - 61', '25 - 34', '10 - 12 years', 'Intelligent, Kind, Reliable, Friendly, Trustworthy, Confident' FROM DUAL UNION ALL
SELECT 'Gordon Setter', 'https://cdn2.thedogapi.com/images/SJ5vzx5NX.jpg', 'Sporting', 'N/A', '58 - 69', '20 - 36', '10 - 12 years', 'Fearless, Alert, Loyal, Confident, Gay, Eager' FROM DUAL UNION ALL
SELECT 'Great Dane', 'https://cdn2.thedogapi.com/images/B1Edfl9NX.jpg', 'Working', 'N/A', '71 - 81', '50 - 86', '7 - 10 years', 'Friendly, Devoted, Reserved, Gentle, Confident, Loving' FROM DUAL UNION ALL
SELECT 'Great Pyrenees', 'https://cdn2.thedogapi.com/images/B12uzg9V7.png', 'Working', 'N/A', '64 - 81', '39 - 52', '10 - 12 years', 'Strong Willed, Fearless, Affectionate, Patient, Gentle, Confident' FROM DUAL UNION ALL
SELECT 'Greyhound', 'https://cdn2.thedogapi.com/images/ryNYMx94X.jpg', 'Hound', 'N/A', '69 - 76', '23 - 32', '10 - 13 years', 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered' FROM DUAL UNION ALL
SELECT 'Griffon Bruxellois', 'https://cdn2.thedogapi.com/images/ryoYGec4Q.jpg', 'none', 'N/A', '23 - 28', '3-5', '10 – 15 years', 'Self-important, Inquisitive, Alert, Companionable, Sensitive, Watchful' FROM DUAL UNION ALL
SELECT 'Harrier', 'https://cdn2.thedogapi.com/images/B1IcfgqE7.jpg', 'Hound', 'N/A', '46 - 56', '18 - 27', '12 - 15 years', 'Outgoing, Friendly, Cheerful, Sweet-Tempered, Tolerant, Active' FROM DUAL UNION ALL
SELECT 'Havanese', 'https://cdn2.thedogapi.com/images/rkXiGl9V7.jpg', 'Toy', 'N/A', '22 - 29', '3 - 6', '14 - 15 years', 'Affectionate, Responsive, Playful, Companionable, Gentle, Intelligent' FROM DUAL UNION ALL
SELECT 'Irish Setter', 'https://cdn2.thedogapi.com/images/S1osGeqVm.jpg', 'Sporting', 'N/A', '61 - 69', '16 - 32', '10 - 11 years', 'Affectionate, Energetic, Lively, Independent, Playful, Companionable' FROM DUAL UNION ALL
SELECT 'Irish Terrier', 'https://cdn2.thedogapi.com/images/By-hGecVX.jpg', 'Terrier', 'N/A', '46', '11 - 12', '12 - 16 years', 'Respectful, Lively, Intelligent, Dominant, Protective, Trainable' FROM DUAL UNION ALL
SELECT 'Irish Wolfhound', 'https://cdn2.thedogapi.com/images/Hyd2zgcEX.jpg', 'Hound', 'N/A', '76 - 89', '48 - 82', '6 - 8 years', 'Sweet-Tempered, Loyal, Dignified, Patient, Thoughtful, Generous' FROM DUAL UNION ALL
SELECT 'Italian Greyhound', 'https://cdn2.thedogapi.com/images/SJAnzg9NX.jpg', 'Toy', 'N/A', '33 - 38', '3 - 7', '12 - 15 years', 'Mischievous, Affectionate, Agile, Athletic, Companionable, Intelligent' FROM DUAL UNION ALL
SELECT 'Japanese Chin', 'https://cdn2.thedogapi.com/images/r1H6feqEm.jpg', 'Toy', 'N/A', '20 - 28', '2 - 4', '12 - 14 years', 'Alert, Loyal, Independent, Intelligent, Loving, Cat-like' FROM DUAL UNION ALL
SELECT 'Japanese Spitz', 'https://cdn2.thedogapi.com/images/HksaMxqNX.jpg', 'none', 'N/A', '30 - 38', '7 - 9', '10 – 16 years', 'Affectionate, Obedient, Playful, Companionable, Intelligent, Proud' FROM DUAL UNION ALL
SELECT 'Keeshond', 'https://cdn2.thedogapi.com/images/S1GAGg9Vm.jpg', 'Non-Sporting', 'N/A', '43 - 46', '16 - 20', '12 - 15 years', 'Agile, Obedient, Playful, Quick, Sturdy, Bright' FROM DUAL UNION ALL
SELECT 'Komondor', 'https://cdn2.thedogapi.com/images/Bko0fl547.jpg', 'Working', 'N/A', '65 - 70', '36 - 45', '10 - 12 years', 'Steady, Fearless, Affectionate, Independent, Gentle, Calm' FROM DUAL UNION ALL
SELECT 'Kooikerhondje', 'https://cdn2.thedogapi.com/images/kOMy84GQE.jpg', 'Sporting', 'N/A', '36 - 41', '9 - 14', '12 - 15 years', 'Benevolent, Agile, Alert, Intelligent, Active, Territorial' FROM DUAL UNION ALL
SELECT 'Kuvasz', 'https://cdn2.thedogapi.com/images/BykZ7ecVX.jpg', 'Working', 'N/A', '66 - 76', '32 - 52', '8 - 10 years', 'Clownish, Loyal, Patient, Independent, Intelligent, Protective' FROM DUAL UNION ALL
SELECT 'Labrador Retriever', 'https://cdn2.thedogapi.com/images/B1uW7l5VX.jpg', 'Sporting', 'N/A', '55 - 62', '25 - 36', '10 - 13 years', 'Kind, Outgoing, Agile, Gentle, Intelligent, Trusting, Even Tempered' FROM DUAL UNION ALL
SELECT 'Lagotto Romagnolo', 'https://cdn2.thedogapi.com/images/ryzzmgqE7.jpg', 'Sporting', 'N/A', '41 - 48', '11 - 16', '14 - 16 years', 'Keen, Loyal, Companionable, Loving, Active, Trainable' FROM DUAL UNION ALL
SELECT 'Lancashire Heeler', 'https://cdn2.thedogapi.com/images/S1RGml5Em.jpg', 'none', 'N/A', '25 - 30', '3 - 6', '12 – 15 years', 'Clever, Friendly, Alert, Intelligent' FROM DUAL UNION ALL
SELECT 'Leonberger', 'https://cdn2.thedogapi.com/images/ByrmQlqVm.jpg', 'Working', 'N/A', '65 - 80', '54 - 77', '6 - 8 years', 'Obedient, Fearless, Loyal, Companionable, Adaptable, Loving' FROM DUAL UNION ALL
SELECT 'Lhasa Apso', 'https://cdn2.thedogapi.com/images/SJp7Qe5EX.jpg', 'Non-Sporting', 'N/A', '25 - 28', '5 - 8', '12 - 15 years', 'Steady, Fearless, Friendly, Devoted, Assertive, Spirited, Energetic, Lively, Alert, Obedient, Playful, Intelligent' FROM DUAL UNION ALL
SELECT 'Maltese', 'https://cdn2.thedogapi.com/images/B1SV7gqN7.jpg', 'Toy', 'N/A', '20 - 25', '2 - 3', '15 - 18 years', 'Playful, Docile, Fearless, Affectionate, Sweet-Tempered, Lively, Responsive, Easygoing, Gentle, Intelligent, Active' FROM DUAL UNION ALL
SELECT 'Miniature American Shepherd', 'https://cdn2.thedogapi.com/images/BkHHQgcN7.jpg', 'Herding', 'N/A', '33 - 46', '9 - 18', '12 - 15 years', 'Energetic, Loyal, Intelligent, Trainable' FROM DUAL UNION ALL
SELECT 'Miniature Pinscher', 'https://cdn2.thedogapi.com/images/Hy3H7g94X.jpg', 'Toy', 'N/A', '25 - 32', '4 - 5', '15 years', 'Clever, Outgoing, Friendly, Energetic, Responsive, Playful' FROM DUAL UNION ALL
SELECT 'Miniature Schnauzer', 'https://cdn2.thedogapi.com/images/SJIUQl9NX.jpg', 'Terrier', 'N/A', '30 - 36', '5 - 9', '12 - 14 years', 'Fearless, Friendly, Spirited, Alert, Obedient, Intelligent' FROM DUAL UNION ALL
SELECT 'Newfoundland', 'https://cdn2.thedogapi.com/images/Sk4DXl54m.jpg', 'Working', 'N/A', '66 - 71', '45 - 68', '8 - 10 years', 'Sweet-Tempered, Gentle, Trainable' FROM DUAL UNION ALL
SELECT 'Norfolk Terrier', 'https://cdn2.thedogapi.com/images/B1ADQg94X.jpg', 'Terrier', 'N/A', '23 - 25', '2 - 5', '12 - 15 years', 'Self-confidence, Fearless, Spirited, Companionable, Happy, Lovable' FROM DUAL UNION ALL
SELECT 'Norwich Terrier', 'https://cdn2.thedogapi.com/images/BkgKXlqE7.jpg', 'Terrier', 'N/A', '25', '2 - 5', '12 - 15 years', 'Hardy, Affectionate, Energetic, Sensitive, Intelligent' FROM DUAL UNION ALL
SELECT 'Nova Scotia Duck Tolling Retriever', 'https://cdn2.thedogapi.com/images/SyYtQe5V7.jpg', 'Sporting', 'N/A', '43 - 53', '16 - 23', '12 - 14 years', 'Outgoing, Alert, Patient, Intelligent, Loving' FROM DUAL UNION ALL
SELECT 'Old English Sheepdog', 'https://cdn2.thedogapi.com/images/HkZ57lq4m.jpg', 'Herding', 'N/A', '53', '27 - 45', '10 - 12 years', 'Sociable, Bubbly, Playful, Adaptable, Intelligent, Loving' FROM DUAL UNION ALL
SELECT 'Olde English Bulldogge', 'https://cdn2.thedogapi.com/images/B1d5me547.jpg', 'none', 'N/A', '38 - 48', '3 - 15', '9 – 14 years', 'Friendly, Alert, Confident, Loving, Courageous, Strong' FROM DUAL UNION ALL
SELECT 'Papillon', 'https://cdn2.thedogapi.com/images/SkJj7e547.jpg', 'Toy', 'N/A', '20 - 28', '1 - 5', '13 - 17 years', 'Hardy, Friendly, Energetic, Alert, Intelligent, Happy' FROM DUAL UNION ALL
SELECT 'Pekingese', 'https://cdn2.thedogapi.com/images/ByIiml9Nm.jpg', 'Toy', 'N/A', '15 - 23', '3 - 6', '14 - 18 years', 'Opinionated, Good-natured, Stubborn, Affectionate, Aggressive, Intelligent' FROM DUAL UNION ALL
SELECT 'Pembroke Welsh Corgi', 'https://cdn2.thedogapi.com/images/rJ6iQeqEm.jpg', 'Herding', 'N/A', '25 - 30', '11 - 14', '12 - 14 years', 'Tenacious, Outgoing, Friendly, Bold, Playful, Protective' FROM DUAL UNION ALL
SELECT 'Perro de Presa Canario', 'https://cdn2.thedogapi.com/images/S1V3Qeq4X.jpg', 'Working', 'N/A', '56 - 65', '40 - 50', '10 - 12 years', 'Strong Willed, Suspicious, Gentle, Dominant, Calm' FROM DUAL UNION ALL
SELECT 'Pharaoh Hound', 'https://cdn2.thedogapi.com/images/Byz6mgqEQ.jpg', 'Hound', 'N/A', '53 - 64', '18 - 27', '12 - 14 years', 'Affectionate, Sociable, Playful, Intelligent, Active, Trainable' FROM DUAL UNION ALL
SELECT 'Plott', 'https://cdn2.thedogapi.com/images/B1i67l5VQ.jpg', 'Hound', 'N/A', '51 - 64', '18 - 27', '12 - 14 years', 'Bold, Alert, Loyal, Intelligent' FROM DUAL UNION ALL
SELECT 'Pomeranian', 'https://cdn2.thedogapi.com/images/HJd0XecNX.jpg', 'Toy', 'N/A', '20 - 30', '1 - 3', '15 years', 'Extroverted, Friendly, Sociable, Playful, Intelligent, Active' FROM DUAL UNION ALL
SELECT 'Poodle (Miniature)', 'https://cdn2.thedogapi.com/images/Hkxk4ecVX.jpg', 'none', 'N/A', '28 - 38', '7 - 8', '12 – 15 years', 'good boi' FROM DUAL UNION ALL
SELECT 'Poodle (Toy)', 'https://cdn2.thedogapi.com/images/rJFJVxc4m.jpg', 'none', 'N/A', '23 - 28', '3 - 4', '18 years', 'good boi' FROM DUAL UNION ALL
SELECT 'Pug', 'https://cdn2.thedogapi.com/images/HyJvcl9N7.jpg', 'Toy', 'N/A', '25 - 30', '6 - 8', '12 - 14 years', 'Docile, Clever, Charming, Stubborn, Sociable, Playful, Quiet, Attentive' FROM DUAL UNION ALL
SELECT 'Puli', 'https://cdn2.thedogapi.com/images/ryPgVl5N7.jpg', 'Herding', 'N/A', '41 - 43', '11 - 16', '12 - 16 Years years', 'Energetic, Agile, Loyal, Obedient, Intelligent, Faithful' FROM DUAL UNION ALL
SELECT 'Pumi', 'https://cdn2.thedogapi.com/images/SyRe4xcN7.jpg', 'Herding', 'N/A', '38 - 47', '8 - 15', '13 - 15 years', 'Lively, Reserved, Intelligent, Active, Protective, Vocal' FROM DUAL UNION ALL
SELECT 'Rat Terrier', 'https://cdn2.thedogapi.com/images/HkXWNl9E7.jpg', 'Terrier', 'N/A', '25 - 33', '4 - 11', '12 - 18 years', 'Affectionate, Lively, Inquisitive, Alert, Intelligent, Loving' FROM DUAL UNION ALL
SELECT 'Redbone Coonhound', 'https://cdn2.thedogapi.com/images/HJMzEl5N7.jpg', 'Hound', 'N/A', '53 - 69', '20 - 36', '10 - 12 years', 'Affectionate, Energetic, Independent, Companionable, Familial, Unflappable' FROM DUAL UNION ALL
SELECT 'Rhodesian Ridgeback', 'https://cdn2.thedogapi.com/images/By9zNgqE7.jpg', 'Hound', 'N/A', '61 - 69', '34 - 36', '10 - 12 years', 'Strong Willed, Mischievous, Loyal, Dignified, Sensitive, Intelligent' FROM DUAL UNION ALL
SELECT 'Rottweiler', 'https://cdn2.thedogapi.com/images/r1xXEgcNX.jpg', 'Working', 'N/A', '56 - 69', '34 - 50', '8 - 10 years', 'Steady, Good-natured, Fearless, Devoted, Alert, Obedient, Confident, Self-assured, Calm, Courageous' FROM DUAL UNION ALL
SELECT 'Russian Toy', 'https://cdn2.thedogapi.com/images/HkP7Vxc4Q.jpg', 'Toy', 'N/A', '19 - 27', '1 - 3', '10 - 12 years', 'good boi' FROM DUAL UNION ALL
SELECT 'Saint Bernard', 'https://cdn2.thedogapi.com/images/_Qf9nfRzL.png', 'Working', 'N/A', '65 - 70', '59 - 82', '7 - 10 years', 'Friendly, Lively, Gentle, Watchful, Calm' FROM DUAL UNION ALL
SELECT 'Saluki', 'https://cdn2.thedogapi.com/images/fjFIuehNo.jpg', 'Hound', 'N/A', '58 - 71', '16 - 29', '12 - 14 years', 'Aloof, Reserved, Intelligent, Quiet' FROM DUAL UNION ALL
SELECT 'Samoyed', 'https://cdn2.thedogapi.com/images/S1T8Ee9Nm.jpg', 'Working', 'N/A', '48 - 60', '23 - 27', '12 - 14 years', 'Stubborn, Friendly, Sociable, Lively, Alert, Playful' FROM DUAL UNION ALL
SELECT 'Schipperke', 'https://cdn2.thedogapi.com/images/SyBvVgc47.jpg', 'Non-Sporting', 'N/A', '25 - 33', '5 - 7', '13 - 15 years', 'Fearless, Agile, Curious, Independent, Confident, Faithful' FROM DUAL UNION ALL
SELECT 'Scottish Deerhound', 'https://cdn2.thedogapi.com/images/SkNjqx9NQ.jpg', 'Hound', 'N/A', '71 - 81', '32 - 59', '8 - 10 years', 'Docile, Friendly, Dignified, Gentle' FROM DUAL UNION ALL
SELECT 'Scottish Terrier', 'https://cdn2.thedogapi.com/images/Bklnce5NX.jpg', 'Terrier', 'N/A', '25', '8 - 10', '11 - 13 years', 'Feisty, Alert, Independent, Playful, Quick, Self-assured' FROM DUAL UNION ALL
SELECT 'Shetland Sheepdog', 'https://cdn2.thedogapi.com/images/rJa29l9E7.jpg', 'Herding', 'N/A', '33 - 41', '14 - 16', '12 - 14 years', 'Affectionate, Lively, Responsive, Alert, Loyal, Reserved, Playful, Gentle, Intelligent, Active, Trainable, Strong' FROM DUAL UNION ALL
SELECT 'Shiba Inu', 'https://cdn2.thedogapi.com/images/Zn3IjPX3f.jpg', 'Non-Sporting', 'N/A', '34 - 42', '8 - 10', '12 - 16 years', 'Charming, Fearless, Keen, Alert, Confident, Faithful' FROM DUAL UNION ALL
SELECT 'Shih Tzu', 'https://cdn2.thedogapi.com/images/BkrJjgcV7.jpg', 'Toy', 'N/A', '20 - 28', '4 - 7', '10 - 18 years', 'Clever, Spunky, Outgoing, Friendly, Affectionate, Lively, Alert, Loyal, Independent, Playful, Gentle, Intelligent, Happy, Active, Courageous' FROM DUAL UNION ALL
SELECT 'Shiloh Shepherd', 'https://cdn2.thedogapi.com/images/SJJxjecEX.jpg', 'none', 'N/A', '66 - 76', '54 - 64', '9 – 14 years', 'Outgoing, Loyal, Companionable, Gentle, Loving, Trainable' FROM DUAL UNION ALL
SELECT 'Siberian Husky', 'https://cdn2.thedogapi.com/images/S17ZilqNm.jpg', 'Working', 'N/A', '51 - 60', '16 - 27', '12 years', 'Outgoing, Friendly, Alert, Gentle, Intelligent' FROM DUAL UNION ALL
SELECT 'Silky Terrier', 'https://cdn2.thedogapi.com/images/ByzGsl5Nm.jpg', 'Toy', 'N/A', '23 - 25', '4 - 5', '12 - 15 years', 'Friendly, Responsive, Inquisitive, Alert, Quick, Joyful' FROM DUAL UNION ALL
SELECT 'Smooth Fox Terrier', 'https://cdn2.thedogapi.com/images/Syszjx9Em.jpg', 'Terrier', 'N/A', '39', '6 - 8', '12 - 14 years', 'Fearless, Affectionate, Alert, Playful, Intelligent, Active' FROM DUAL UNION ALL
SELECT 'Soft Coated Wheaten Terrier', 'https://cdn2.thedogapi.com/images/HJHmix5NQ.jpg', 'Terrier', 'N/A', '41 - 46', '14 - 18', '12 - 15 years', 'Affectionate, Spirited, Energetic, Playful, Intelligent, Faithful' FROM DUAL UNION ALL
SELECT 'Spanish Water Dog', 'https://cdn2.thedogapi.com/images/HJf4jl9VX.jpg', 'Sporting', 'N/A', '41 - 51', '14 - 23', '12 - 15 years', 'Trainable, Diligent, Affectionate, Loyal, Athletic, Intelligent' FROM DUAL UNION ALL
SELECT 'Spinone Italiano', 'https://cdn2.thedogapi.com/images/rk5Eoe5Nm.jpg', 'Sporting', 'N/A', '57 - 70', '28 - 39', '10 - 12 years', 'Docile, Friendly, Affectionate, Loyal, Patient, Gentle' FROM DUAL UNION ALL
SELECT 'Staffordshire Bull Terrier', 'https://cdn2.thedogapi.com/images/H1zSie9V7.jpg', 'Terrier', 'N/A', '36 - 41', '11 - 17', '12 - 14 years', 'Reliable, Fearless, Bold, Affectionate, Loyal, Intelligent, Courageous' FROM DUAL UNION ALL
SELECT 'Standard Schnauzer', 'https://cdn2.thedogapi.com/images/tmzeu6ID_.jpg', 'Working', 'N/A', '44 - 50', '14 - 23', '13 - 15 years', 'Trainable, Good-natured, Devoted, Lively, Playful, Intelligent' FROM DUAL UNION ALL
SELECT 'Swedish Vallhund', 'https://cdn2.thedogapi.com/images/HJ-Dix94Q.jpg', 'Herding', 'N/A', '29 - 34', '9 - 14', '12 - 14 years', 'Fearless, Friendly, Energetic, Alert, Intelligent, Watchful' FROM DUAL UNION ALL
SELECT 'Thai Ridgeback', 'https://cdn2.thedogapi.com/images/zv89hR-O8.jpg', 'Hound', 'N/A', '51 - 61', '16 - 25', '10 - 12 years', 'Protective, Loyal, Independent, Intelligent, Loving, Familial' FROM DUAL UNION ALL
SELECT 'Tibetan Mastiff', 'https://cdn2.thedogapi.com/images/SkM9sec47.jpg', 'Working', 'N/A', '61 - 66', '39 - 64', '10 - 14 years', 'Strong Willed, Tenacious, Aloof, Stubborn, Intelligent, Protective' FROM DUAL UNION ALL
SELECT 'Tibetan Spaniel', 'https://cdn2.thedogapi.com/images/Hyjcol947.jpg', 'Non-Sporting', 'N/A', '25', '4 - 7', '12 - 15 years', 'Willful, Aloof, Assertive, Independent, Playful, Intelligent, Happy' FROM DUAL UNION ALL
SELECT 'Tibetan Terrier', 'https://cdn2.thedogapi.com/images/6f5n_42mB.jpg', 'Non-Sporting', 'N/A', '36 - 43', '9 - 11', '12 - 15 years', 'Affectionate, Energetic, Amiable, Reserved, Gentle, Sensitive' FROM DUAL UNION ALL
SELECT 'Toy Fox Terrier', 'https://cdn2.thedogapi.com/images/B17ase9V7.jpg', 'Toy', 'N/A', '20 - 28', '2 - 4', '12 - 15 years', 'Friendly, Spirited, Alert, Loyal, Playful, Intelligent' FROM DUAL UNION ALL
SELECT 'Treeing Walker Coonhound', 'https://cdn2.thedogapi.com/images/SkRpsgc47.jpg', 'Hound', 'N/A', '51 - 69', '20 - 36', '10 - 13 years', 'Clever, Affectionate, Confident, Intelligent, Loving, Trainable' FROM DUAL UNION ALL
SELECT 'Vizsla', 'https://cdn2.thedogapi.com/images/r1o0jx9Em.jpg', 'Sporting', 'N/A', '53 - 61', '23 - 29', '10 - 14 years', 'Affectionate, Energetic, Loyal, Gentle, Quiet' FROM DUAL UNION ALL
SELECT 'Weimaraner', 'https://cdn2.thedogapi.com/images/SyU12l9V7.jpg', 'Sporting', 'N/A', '58 - 69', '25 - 41', '12 - 15 years', 'Steady, Aloof, Stubborn, Energetic, Alert, Intelligent, Powerful, Fast' FROM DUAL UNION ALL
SELECT 'Welsh Springer Spaniel', 'https://cdn2.thedogapi.com/images/BJ1gnx5Vm.jpg', 'Sporting', 'N/A', '43 - 48', '16 - 25', '12 - 15 years', 'Stubborn, Friendly, Affectionate, Loyal, Playful, Active' FROM DUAL UNION ALL
SELECT 'West Highland White Terrier', 'https://cdn2.thedogapi.com/images/Bkdx2g5Em.jpg', 'Terrier', 'N/A', '25 - 28', '7 - 10', '15 - 20 years', 'Hardy, Friendly, Alert, Independent, Gay, Active, Courageous' FROM DUAL UNION ALL
SELECT 'Whippet', 'https://cdn2.thedogapi.com/images/Hyv-ne94m.jpg', 'Hound', 'N/A', '46 - 56', '11 - 16', '12 - 15 years', 'Friendly, Affectionate, Lively, Gentle, Intelligent, Quiet' FROM DUAL UNION ALL
SELECT 'White Shepherd', 'https://cdn2.thedogapi.com/images/r14M3e9E7.jpg', 'none', 'N/A', '56 - 64', '27 - 39', '12 – 14 years', 'Self-confidence, Aloof, Fearless, Alert, Companionable, Eager' FROM DUAL UNION ALL
SELECT 'Wire Fox Terrier', 'https://cdn2.thedogapi.com/images/SJ6f2g9EQ.jpg', 'none', 'N/A', '33 - 41', '7 - 9', '13 – 14 years', 'Fearless, Friendly, Bold, Keen, Alert, Quick' FROM DUAL UNION ALL
SELECT 'Wirehaired Pointing Griffon', 'https://cdn2.thedogapi.com/images/Bkam2l9Vm.jpg', 'Sporting', 'N/A', '51 - 61', '20 - 32', '12 - 14 years', 'Loyal, Gentle, Vigilant, Trainable, Proud' FROM DUAL UNION ALL
SELECT 'Wirehaired Vizsla', 'https://cdn2.thedogapi.com/images/r1I4hl5Em.jpg', 'Sporting', 'N/A', '55 - 64', '20 - 29', '12 - 14 years', 'good boi' FROM DUAL UNION ALL
SELECT 'Xoloitzcuintli', 'https://cdn2.thedogapi.com/images/HkNS3gqEm.jpg', 'Non-Sporting', 'N/A', '25 - 58', '4 - 14', '12 - 14 years', 'Cheerful, Alert, Companionable, Intelligent, Protective, Calm' FROM DUAL UNION ALL
SELECT 'Yorkshire Terrier', 'https://cdn2.thedogapi.com/images/B12BnxcVQ.jpg', 'Toy', 'N/A', '20 - 23', '2 - 3', '12 - 16 years', 'Bold, Independent, Confident, Intelligent, Courageous' FROM DUAL;
