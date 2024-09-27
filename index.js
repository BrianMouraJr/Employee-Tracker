// Older codebase
// const inquirer = require("inquirer");

// // Connect to database
// const pool = new Pool(
//   {
//     // Enter PostgreSQL username
//     user: process.env.DB_USER,
//     // Enter PostgreSQL password
//     password: process.env.DB_PW,
//     host: "localhost",
//     database: process.env.DB_DATABASE,
//   },
//   console.log("Connected to the courses_db database!")
// );

// pool.connect();
// function menu() {
//   inquirer
//     .prompt([
//       {
//         type: "list",
//         message: "What would you like to do?",
//         choices: [
//           "view all departments",
//           "view all roles",
//           "view all employees",
//           "add a department",
//           "add a role",
//           "add an employee",
//           "update an employee role",
//         ],
//         name: "Selection",
//       },
//       // we set up responses to selection
//     ])
//     .then((res) => {
//       if (res.Selection === "view all departments") {
//         viewDepartments()
//       } else if (res.Selection === "view all roles") {
//       } else if (res.Selection === "view all employees") {
//       } else if (res.Selection === "add a department") {
//       } else if (res.Selection === "add a role") {
//       } else if (res.Selection === "add an employee") {
//       } else if (res.Selection === "update an employee role") {
//       }
//     });
// }

// // use postgres (pg) package here
// function viewDepartments() {
//   pool.query("SELECT * FROM department", function (err, { rows }) {
//     console.table(rows);
//     menu()
//   });
// }
