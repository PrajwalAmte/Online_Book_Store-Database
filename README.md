# Online Book Store Database

This repository contains the SQL schema and database queries for an Online Book Store. The purpose of this project is to provide a structured database for managing the inventory, sales, and customers of an online bookstore.
## Table of Contents

- [Description](#description)
- [Database Schema](#database-schema)
- [Class Diagram](#class-diagram)
- [ER Diagram](#er-diagram)
- [Queries](#queries)
  - [Table Creation](#table-creation)
  - [Adding Data](#adding-data)
  - [Example Queries to Retrieve Data](#example-queries-to-retrieve-data)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Description

The Online Book Store Database is designed to store and manage information about authors, publishers, warehouses, books, customers, and shopping carts. It serves as a comprehensive system for an online bookstore, covering aspects such as inventory management, sales tracking, customer information, and order processing.

## Database Schema

The database schema includes the following tables:

- Authors
- Publisher
- Warehouses
- Books
- Customer
- ShoppingCart

For detailed information about the structure of each table, refer to the [create_tables.sql](queries/create_tables.sql) file.

## Class Diagram

[Class Diagram](diagrams/class_diagram.png)

## ER Diagram

[ER Diagram](diagrams/er_diagram.png)

## Queries

### Table Creation

The structure of all tables is defined in a common SQL file using MySQL:

- [create_tables.sql](queries/create_tables.sql)

### Adding Data

To populate the database with sample data, use the common SQL file for adding data:

- [add_data.sql](queries/add_data.sql)

### Example Queries to Retrieve Data

Sample SQL queries to retrieve data from the database are provided in the following file:

- [retrieve_data_examples.sql](queries/retrieve_data_examples.sql)

## Usage

To set up the Online Book Store Database, follow these steps:

1. Clone this repository to your local machine.
2. Use a MySQL database management tool to execute the SQL files for table creation and adding data.

Modify and customize the SQL files as needed to fit your specific project requirements.

## Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please create a GitHub issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

Feel free to organize the structure and content of your README file as per your files and project setup. This example provides a guideline for including information about common files for table creation and adding data, as well as incorporating class and ER diagrams.
