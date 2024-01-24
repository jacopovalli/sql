CREATE TABLE IF NOT EXISTS corsi(
    id_corso INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY REFERENCES studenti_corsi(id_corso),
    nome VARCHAR(30) NOT NULL,
    max_partecipanti INT NOT NULL,
    data_inizio DATE NOT NULL,
    data_fine DATE NOT NULL,
    costo DECIMAL (10, 2) NOT NULL,
    id_docente INT UNSIGNED NOT NULL,
    completato BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS docenti(
    id_docente INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY REFERENCES studenti_corsi(id_docente),
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS studenti(
    id_studente INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY REFERENCES studenti_corsi(id_studente),
    nome VARCHAR(40) NOT NULL,
    cognome VARCHAR(40) NOT NULL,
    data_nascita DATE NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS studenti_corsi(
    id_relazione INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_studente INT UNSIGNED NOT NULL,
    id_corso INT UNSIGNED NOT NULL
);