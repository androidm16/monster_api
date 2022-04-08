CREATE TABLE monsters(
    id serial,
    name character varying(50),
    personality character varying(50)
);

CREATE TABLE habitats(
    id serial,
    name character varying(50),
    climate character varying(50),
    temperature int
);

CREATE TABLE lives(
    monster character varying(50),
    habitat character varying(50)
);

INSERT INTO monsters(name, personality)
VALUES
('Anxiety', 'numbing'),
('Anger', 'aggressive'),
('Love', 'overwhelming');

INSERT INTO habitats(name, climate, temperature)
VALUES
('subconcious', 'lonesome', 100),
('frontal-lobe', 'chaotic', 75),
('cortex', 'joyful', 50);

INSERT INTO lives(monster, habitat)
VALUES
('Anxiety', 'subconcious'),
('Anger', 'frontal-lobe'),
('Love', 'cortex');