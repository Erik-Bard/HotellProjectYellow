CREATE TRIGGER AddedEmployee
	ON [dbo].Employees
	FOR INSERT
	AS
	BEGIN
	PRINT ('Added new employee');
	END