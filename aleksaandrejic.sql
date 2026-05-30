SELECT 
    l.Naziv AS Laboratorija,
    COUNT(lr.ID_Resurs) AS Broj_Razlicitih_Resursa,
    SUM(lr.Kolicina) AS Ukupna_Kolicina_Resursa,
    SUM(lr.Kolicina * r.Cena) AS Ukupna_Vrednost_Inventara
FROM Laboratorija l
JOIN Laboratorija_Resurs lr ON l.ID_Laboratorija = lr.ID_Laboratorija
JOIN Resurs r ON lr.ID_Resurs = r.ID_Resurs
GROUP BY l.ID_Laboratorija, l.Naziv
ORDER BY Ukupna_Vrednost_Inventara DESC;