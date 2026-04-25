# Database System and Design

## Project Summary
This project develops a robust and normalized relational database system for "The Lakeside Haven," a charming bed and breakfast lodge. The system aims to modernize operations, enhance guest management, streamline reservations, support diverse payment methods, and enable strategic growth initiatives like loyalty programs and new lodging options.

### 📝 Problem Statement
The Lakeside Haven faced significant operational challenges due to fragmented and manual data management:
- **Disorganized Guest & Reservation Data**: Manual records and disparate spreadsheets led to data inconsistencies, difficulty tracking guest history (including payment behavior like delinquencies), and inefficient booking processes.
- **Limited Payment Options**: Acceptance of only cash/cashier's checks restricted guest reach and increased administrative burden.
- **Inefficient Management of New Offerings**: Recent remodeling introduced new "cottage-style" lodging, which couldn't be seamlessly integrated or effectively managed with existing systems.
- **Stagnant Bookings**: A lack of infrastructure to implement membership tiers and exclusive deals hindered efforts to attract and retain guests, contributing to slow bookings.

### 💡 Solution Overview
The proposed database system is designed to centralize all critical B&B data and automate key operational workflows. It includes entities for Guests, Hosts (managing property types), Listings (accommodations), Reservations, Payments, Membership Deals, and Guest Membership History, linked by carefully defined relationships. This structured approach ensures data integrity, improves accessibility, and provides the foundation for enhanced guest services and business growth.

## 🛠️ Technologies Used
- **Oracle Database 11g**: The relational database management system hosting the schema.
- **SQL (Structured Query Language)**: For defining schema (DDL) and manipulating data (DML).
- **Oracle SQL Developer Data Modeler**: Used for conceptual and logical ERD design, and generating physical DDL scripts.
- **Oracle APEX**: Utilized for running SQL commands, managing database objects, and potentially for future web-based application development.

### 🔑 Key SQL Features Implemented
- **Database Normalization**: Schema designed primarily in 3rd Normal Form (3NF) to minimize data redundancy and enhance data integrity, leveraging proper entity separation and relationship resolution.
- **Primary Key (PK) Constraints**: Uniquely identify each record within a table, ensuring data integrity and efficient retrieval.
- **Foreign Key (FK) Constraints**: Enforce referential integrity, maintaining consistent relationships between tables (e.g., ensuring a payment always links to an existing reservation).
- **Unique Key (UK) Constraints**: Guarantee uniqueness for specific non-primary key attributes (e.g., `EMAIL` for guests and hosts, `LISTING_NAME`).
- **Check (CK) Constraints**: Enforce domain integrity by restricting column values to a predefined set or range (e.g., `HOSTS.TYPE` must be one of 'Owner-operated', 'Property Manager', etc.; `IS_DELINQUENT` must be 'Y' or 'N').
- **Sequences**: Utilized for automatic, unique, and sequential generation of primary key values for new records (e.g., `GUESTS_ID_SEQ`, `LISTINGS_ID_SEQ`, `RESERVATIONS_ID_SEQ`), streamlining data insertion.
- **Indexes**: Created on frequently queried columns to significantly improve data retrieval performance for `SELECT` statements, especially those involving `WHERE` clauses or `JOIN` conditions.
- **Views**: (Placeholder for 3 views to be created) Provide simplified, customized, or aggregated perspectives of the underlying table data, enhancing data access and security.
- **Synonyms**: (Placeholder for 2 synonyms to be created) Offer alternative, often simpler, names for database objects (tables, views, sequences), improving ease of use and abstraction.

## Database Schema (Entity-Relationship Diagram)
The core of this project is a meticulously designed Entity-Relationship Diagram (ERD), ensuring data normalization (aiming for 3NF) and robust referential integrity.

![Logical Model](Img/logical.pdf) 

> Figure 1: Logical Entity-Relationship Diagram for The Lakeside Haven B&B Database.

![Relational Model](Img/relational.pdf) 
> Figure 2: Relational Entity-Relationship Diagram for The Lakeside Haven B&B Database.

## Implementation Details
The database schema is implemented using Oracle SQL Data Definition Language (DDL) scripts for creating tables, defining primary/foreign keys, unique constraints, and check constraints. Data is populated using Data Manipulation Language (DML) scripts.

### Sample Data Insertion Examples
**Guests Table Data**:
- Here's a snippet of the data inserted into the GUESTS table, demonstrating auto-incrementing IDs via sequence and various guest attributes.

![GUESTS SNIPPET](Img/GUESTS.png)

> Figure 3: Sample data from the GUESTS table.

**Listings Table Data**:
- Sample data illustrating the various listing types, addresses, and amenities.

![LISTINGS SNIPPET](Img/LISTINGS.png)

> Figure 4: Sample data from the LISTINGS table.

**Payments Table Data**:
- Example payment records linked to reservations, showcasing different payment methods and statuses.

![PAYMENTS SNIPPET](Img/PAYMENTS.png)

> Figure 5: Sample data from the PAYMENTS table.

## License
For academic use
