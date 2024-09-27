DROP DATABASE IF EXISTS employee_db; --erases database prior
CREATE DATABASE employee_db;


\c employee_db;

CREATE TABLE department (
    id SERIAL PRIMARY KEY, --Serial 1,2,3 etc assigns to department
    department_name VARCHAR(30) NOT NULL --VARCHAR is a string with a (x) limit on characters
);

CREATE TABLE role (
    id SERIAL PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL, --set up our foreign id keys
    FOREIGN KEY (department_id)references department(id) --whatever the value is in this column has to exist in department table id column as reference. 
);

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id)references role(id),
    manager_id INT,
    FOREIGN KEY (manager_id)references employee(id)
);


