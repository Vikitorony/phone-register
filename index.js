const readLine = require('readline-sync');
const { table } = require('table');
const knex = require('knex')({
  client: 'mysql',
  version: '5.7.29',
  connection: {
    host: '127.0.0.1',
    user: 'root',
    password: 'toor',
    database: 'phone_register'
  }
});

const phonebook = 'phonebook'; // MySQL table name

const pBook = {
  firstName: 'firstName',
  lastName: 'lastName',
  phoneNumber: 'phoneNumber'
};

const drawTable = async () => {
  const data = [
    [
      pBook.firstName,
      pBook.lastName,
      pBook.phoneNumber
    ]
  ];
  await knex.select().from(phonebook) // SELECT * FROM phonebook;
    .then((res) => {
      res.forEach(i =>
        data.push([
          i.firstName,
          i.lastName,
          i.phoneNumber
        ])
      );
      console.log(table(data));
    });
  backToMainOrExit('Here is your phone register.');
};

const searchByName = async () => {
  const searchFName = readLine.question('First Name: ');
  const searchLName = readLine.question('Last Name: ');
  const data = [
    [
      pBook.firstName,
      pBook.lastName,
      pBook.phoneNumber
    ]
  ];
  await knex.select().from(phonebook).where('firstName', searchFName).andWhere('lastName', searchLName) // SELECT * FROM phonebook WHERE firstName="searchFName" AND lastName="searchLName";
    .then((res) => {
      res.forEach(i =>
        data.push([
          i.firstName,
          i.lastName,
          i.phoneNumber
        ])
      );
      console.log(table(data));
    });
  backToMainOrExit('Your requested contact(s).');
};

const newContact = async () => {
  const newFirstName = readLine.question('First Name: ');
  const newLastName = readLine.question('Last Name: ');
  const newNumber = readLine.question('Phone Number: ');
  await knex.insert([{ firstName: newFirstName, lastName: newLastName, phoneNumber: newNumber }]).into(phonebook); // INSERT INTO phonebook (firstName, lastName, phoneNumber) values ("newFirstName", "newLastName", "newNumber");
  backToMainOrExit('Record added successfully!');
};

const modifyNumber = async () => {
  const oldNumber = readLine.question('Number to change: ');
  const newNumber = readLine.question('New number: ');
  await knex(phonebook).where('phoneNumber', oldNumber).update({ phoneNumber: newNumber }); // UPDATE phonebook SET phoneNumber = "newNumber" WHERE phoneNumber = "oldNumber";
  backToMainOrExit('Phone number modified successfully!');
};

const deleteContact = async () => {
  const deleteNumber = readLine.question('Number of the contact you would like to delete: ');
  await knex(phonebook).where('phoneNumber', deleteNumber).del(); // DELETE FROM phonebook WHERE phoneNumber = "deleteNumber";
  backToMainOrExit('Record deleted successfully!');
};

const menuPoints = ['List phone register', 'Search phone number by name', 'Add new contact', 'Modify number', 'Delete contact'];

const main = () => {
  console.clear();
  const menu = readLine.keyInSelect(menuPoints, 'What would you like to do?');
  switch (menu) {
    case 0:
      drawTable();
      break;
    case 1:
      searchByName();
      break;
    case 2:
      newContact();
      break;
    case 3:
      modifyNumber();
      break;
    case 4:
      deleteContact();
      break;
    default:
      process.exit(0);
  }
};

const backToMainOrExit = (string) => {
  console.log(string);
  if (readLine.keyInYN('Do you want to return to Main Menu?') === true) {
    main();
  } else {
    process.exit(0);
  }
};

main();
