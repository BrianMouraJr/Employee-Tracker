INSERT INTO department (department_name) --Don't need serial due to it being auto incrementing by SQL
VALUES ('Sales'), --projected id of 1
('Engineering'), --projected id of 2
('Accounting'); --projected id of 3

INSERT INTO role (title, salary, department_id)
VALUES ('Team Lead', 500000.00, 1), --What is the projected role that team lead will have inside of the table? (1)
('SalesGuy', 50000.00, 1) --projected id of 2



