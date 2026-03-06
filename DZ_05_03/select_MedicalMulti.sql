SELECT p.PatientID,p.FirstName,p.LastName,p.BirthDate,p.Phone,p.Living_Address,p.SNILS
FROM Patients p JOIN Admissions a ON p.PatientID = a.PatientID
WHERE a.DischargeDate IS NULL OR a.DischargeDate > DATE('now');

SELECT p.PatientID,p.FirstName || ' ' || p.LastName,d.DepartmentName,doc.FirstName || ' ' || doc.LastName,
STRFTIME('%d.%m.%Y', a.AdmissionDate),
STRFTIME('%d.%m.%Y', a.DischargeDate)
FROM Patients p
JOIN Admissions a ON p.PatientID = a.PatientID
JOIN Departments d ON a.DepartmentID = d.DepartmentID
JOIN Doctors doc ON a.DoctorID = doc.DoctorID
WHERE d.DepartmentName = 'Хирургическое отделение'
AND (a.DischargeDate IS NULL 
OR a.DischargeDate > DATE('now'));

SELECT p.PatientID,p.FirstName || ' ' || p.LastName,d.DepartmentName,doc.FirstName || ' ' || doc.LastName,
STRFTIME('%d.%m.%Y', a.AdmissionDate),
STRFTIME('%d.%m.%Y', a.DischargeDate)
FROM Patients p
JOIN Admissions a ON p.PatientID = a.PatientID
JOIN Departments d ON a.DepartmentID = d.DepartmentID
JOIN Doctors doc ON a.DoctorID = doc.DoctorID
WHERE d.DepartmentName = 'Терапевтическое отделение'
AND a.AdmissionDate BETWEEN DATE('now', 'start of year', '+1 month')
AND DATE('now', 'start of year', '+2 months');


SELECT p.PatientID,p.FirstName || ' ' || p.LastName,d.DepartmentName,
STRFTIME('%d.%m.%Y', a.AdmissionDate),
STRFTIME('%d.%m.%Y', a.DischargeDate)
FROM Patients p
JOIN Admissions a ON p.PatientID = a.PatientID
JOIN Departments d ON a.DepartmentID = d.DepartmentID
JOIN Doctors doc ON a.DoctorID = doc.DoctorID
WHERE doc.FirstName = 'Петр' 
AND doc.LastName = 'Андреев'
ORDER BY a.AdmissionDate;