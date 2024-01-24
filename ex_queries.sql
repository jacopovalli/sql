
-- 01# Tutti i docenti:
/* SELECT * FROM docenti; */

-- 02# Email studenti maggiorenni:
/* SELECT email FROM studenti
WHERE data_nascita >= 2005; */

-- 03# Corsi già terminati:
/* SELECT nome AS corso FROM corsi
WHERE completato = TRUE; */

-- 04# Prossimi corsi in programma (Query fatta il 17/01/2024):
/* SELECT nome AS corso, data_inizio AS inizio_corso FROM corsi
WHERE data_inizio > '2024-01-17'; */

-- 05# Prossimi corsi in programma che costano meno di 200 euro:
/* SELECT nome AS corso FROM corsi
WHERE costo < 200; */

-- 06# Tutti i corsi di un docente:
/* SELECT nome AS corso FROM corsi
WHERE id_docente = 1; */

-- 07# Numeri studenti iscritti ad un particolare corso:
/* SELECT corsi.nome AS corso, count(*) FROM studenti_corsi
INNER JOIN corsi ON studenti_corsi.id_corso = corsi.id_corso
GROUP BY studenti_corsi.id_corso; */

-- 08# Corsi che hanno raggiunto la capacità massima:
/* SELECT corsi.nome AS corso, corsi.max_partecipanti, count(*) AS numero_iscritti FROM studenti_corsi
INNER JOIN corsi ON studenti_corsi.id_corso = corsi.id_corso
GROUP BY studenti_corsi.id_corso */

-- 09# Numero di corsi frequentati da uno studente:
/* SELECT studenti.nome, studenti.cognome, count(*) AS numero_corsi_seguiti FROM studenti_corsi
INNER JOIN studenti ON studenti_corsi.id_studente = studenti.id_studente
GROUP BY studenti_corsi.id_studente */

-- 10# Lista corsi frequentati da uno studente [come evidente, si possono concatenare più JOIN uno dopo l'altro]:
/* SELECT corsi.nome AS corso, studenti.nome AS nome_studente, studenti.cognome AS cognome_studente FROM corsi
INNER JOIN studenti_corsi ON corsi.id_corso = studenti_corsi.id_corso
INNER JOIN studenti ON studenti.id_studente = studenti_corsi.id_studente
WHERE studenti_corsi.id_studente = 3; */

-- 11# L'insegnate che presenta più corsi:
/* SELECT docenti.nome AS nome_docente, docenti.cognome AS cognome_docente, count(*) AS docenza_per_numero_corsi FROM corsi
INNER JOIN docenti on corsi.id_docente = docenti.id_docente
GROUP BY corsi.id_docente */

-- 12# Top 3 studenti più partecipi:
/* SELECT studenti.nome AS nome_studente, studenti.cognome AS cognome_studente, count(*) AS numero_corsi_seguiti FROM studenti_corsi
INNER JOIN studenti ON studenti_corsi.id_studente = studenti.id_studente
GROUP BY studenti_corsi.id_studente
ORDER BY count(*) DESC
LIMIT 3; */

--13# Il primissimo corso che abbiamo fatto:
/* SELECT nome FROM corsi
WHERE id_corso = 1; */