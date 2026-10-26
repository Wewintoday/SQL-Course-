/*
Example lesson stub
*/
SELECT		ps.PatientId,
			ps.Hospital,
			PS.Ward,
			ps.AdmittedDate,
			DATEADD(WEEK, -2, PS.ADMITTEDDATE) AS ReminderDate,
			DATEADD(MONTH, 3, PS.DischargeDate) AS APPTDATE,
			DATEDIFF(DAY,PS.AdmittedDate, PS.DischargeDate) AS lengthofstay,
			PS.DischargeDate
FROM		PatientStay AS ps
WHERE		ps.Hospital IN ('Kingston', 'PRUH')
			AND ps.ward LIKE '%SURGERY'
			AND PS.ADMITTEDDATE BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	PS.AdmittedDate, PS.DischargeDate;


--SELECT DATEADD(WEEK, -2,'2026-10-26')AS TestValue