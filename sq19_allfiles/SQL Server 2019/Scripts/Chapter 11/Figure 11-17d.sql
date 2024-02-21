USE AR;

ALTER TABLE employees
ALTER COLUMN EmployeeName VARCHAR(200)
                          COLLATE Latin1_General_100_CI_AS_SC_UTF8;