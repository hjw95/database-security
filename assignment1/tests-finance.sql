
SET SERVEROUTPUT ON;
SET ROLE FINANCE;

SELECT * FROM dev.Payroll;

SELECT * FROM dev.Bill;

INSERT INTO dev.Bill (bill_id, semester, fee_type, amount, payment_method, payment_date, student_id)
VALUES (100, 1, 'school',222, 'online', '01 Jan 2018', 'STUDENT2');

UPDATE dev.Bill SET amount=999 WHERE bill_id = 100;

INSERT INTO dev.Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (9000, 2222, '01 Mar 2018', 'salary', 'salary', 'LECTURER2');

UPDATE dev.Payroll SET payroll_type = 'stock bonus' WHERE payroll_id=9000;