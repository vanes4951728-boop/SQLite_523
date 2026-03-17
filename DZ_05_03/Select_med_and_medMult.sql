SELECT 
ID AS 'ID пациента',
FirstName || ' ' || LastName AS 'ФИО пациента',
Medical_Department AS 'Отделение',
SNILS AS 'СНИЛС',
BirthDate AS 'Дата рождения',
strftime('%d.%m.%Y', BirthDate) AS 'Дата рождения (формат)',
Living_Address AS 'Адрес проживания',
Phone AS 'Телефон',
Admission AS 'Дата поступления',
strftime('%d.%m.%Y', Admission) AS 'Дата поступления (формат)',
Discharge AS 'Дата выписки',
strftime('%d.%m.%Y', Discharge) AS 'Дата выписки (формат)',
(SELECT DiagnosisName 
FROM Diagnoses d 
JOIN Appointments a ON d.DiagnosisID = a.DiagnosisID
WHERE a.PatientID = p.ID
ORDER BY AppointmentDate DESC 
LIMIT 1) AS 'Текущий диагноз',
(SELECT doc.FirstName || ' ' || doc.LastName 
FROM Doctors doc 
JOIN Appointments a ON doc.DoctorID = a.DoctorID
WHERE a.PatientID = p.ID
ORDER BY AppointmentDate DESC 
LIMIT 1) AS 'Лечащий врач'FROM Patients p;


SELECT 
COUNT(*) AS 'Количество пациентов',
Medical_Department AS 'Отделение'
FROM Patients
WHERE 
Medical_Department = 'хирургия'
AND Discharge IS NULL;


SELECT COUNT(*) AS 'Количество пациентов' FROM Patients WHERE 
Medical_Department = 'Терапевтическое отделение'
AND Admission BETWEEN date('2025-10-01') AND date('2025-12-31');


SELECT 
p.ID AS 'ID пациента',
p.FirstName || ' ' || p.LastName AS 'ФИО пациента',
d.FirstName || ' ' || d.LastName AS 'Лечащий врач',
d.Specialty AS 'Специальность врача',
a.AppointmentDate AS 'Дата приема',
strftime('%d.%m.%Y', a.AppointmentDate) AS 'Дата приема (формат)',
diag.DiagnosisName AS 'Диагноз'
FROM Patients p
JOIN Appointments a ON p.ID = a.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID
LEFT JOIN Diagnoses diag ON a.DiagnosisID = diag.DiagnosisID
WHERE d.DoctorID =5
ORDER BY a.AppointmentDate DESC;