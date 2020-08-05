INSERT INTO dbo.Students VALUES (1,N'Trần Công Phong', '10-04-2001', 'false', 'Ha Noi', 'avd@gmail.com', 'tcp', 123, 0354484850, 'bum')
INSERT INTO dbo.Students VALUES (2,N'MA', '20-1-2001', 'false', 'Ha Noi', 'ktd@gmail.com', 'nma', 456, 0354484850, 'bum')
INSERT INTO dbo.Students VALUES (3,N'PIA', '20-11-2001', 'false', 'Ha Noi', 'hcmm@gmail.com', 'lpa', 789, 0354484850, 'bum')
INSERT INTO dbo.Students VALUES (4,N'QA', '20-8-2002', 'false', 'Ha Noi', 'dpqa@gmail.com', 'qa', 258, 0354484850, 'bum')

INSERT INTO dbo.Class VALUES (1,N'LPL', '01-12-2020', '01-12-2021', 0)
INSERT INTO dbo.Class VALUES (2,N'LCK', '01-12-2020', '01-12-2021', 0)
INSERT INTO dbo.Class VALUES (3,N'VCS', '01-12-2020', '01-12-2021', 0)

INSERT INTO dbo.ClassDetails VALUES (1,1,'01-12-2020','01-05-2021',0)
INSERT INTO dbo.ClassDetails VALUES (2,2,'01-12-2020','01-05-2021',0)
INSERT INTO dbo.ClassDetails VALUES (3,3,'01-12-2020','01-05-2021',0)

UPDATE dbo.Students set Note=N'Rất đệp trai' where Code=1
UPDATE dbo.Students set Note=N'Cực đệp trai' where Code=2

UPDATE dbo.Class set EndDate='01-12-2021' where Code=2

DELETE ClassDetails where CodeClass = 2;