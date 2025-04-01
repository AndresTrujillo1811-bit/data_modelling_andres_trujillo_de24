SET search_path TO yrkes_co;


INSERT INTO Consult (consult_id, name, organization_number, f_tax, address, hourly_honorarium) VALUES
(1, 'Sjöström AB', '556677887', TRUE, 'Stockholm', 600);


SELECT * FROM yrkes_co.consult;
