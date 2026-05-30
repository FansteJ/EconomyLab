SELECT 
    l.Naziv AS Laboratorija,
    e.Naziv AS Naziv_Eksperimenta,
    te.Naziv AS Tip_Trzista,
    ROUND(AVG(iz.Cena), 2) AS Prosecna_Cena_Simulacije,
    SUM(iz.Kolicina) AS Ukupna_Kolicina_Razmene
FROM Laboratorija l
JOIN Izvodjenje iz ON l.ID_Laboratorija = iz.ID_Laboratorija
JOIN Eksperiment e ON iz.ID_Eksperiment = e.ID_Eksperiment
JOIN Tip_Eksperiment te ON e.ID_Tip = te.ID_Tip
WHERE iz.Status = 'Zavrseno uspesno' 
  AND (te.Naziv LIKE '%Monopol%' OR te.Naziv LIKE '%konkurencija%')
GROUP BY l.Naziv, e.Naziv, te.Naziv
ORDER BY Ukupna_Kolicina_Razmene DESC;
