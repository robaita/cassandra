// https://cassandra.apache.org/doc/stable/cassandra/cql/types.html
// 1. int
// Purpose: Stores a 32-bit integer value.
// Example:
CREATE TABLE users (
    id UUID PRIMARY KEY,
    age int
);
INSERT INTO users (id, age) VALUES (uuid(), 25);
// Here, age is of type int and stores age as an integer.

// 2. bigint
// Purpose: Stores a 64-bit signed integer value. (2^64-1)
// Example:
CREATE TABLE transactions (
    transaction_id UUID PRIMARY KEY,
    amount bigint
);
// amount is stored as a bigint to accommodate large monetary values.

// 3. float
// Purpose: Stores a 32-bit single precision floating-point number. (-3.4*e^38 -1.1*e^-38 )
// Example:
CREATE TABLE products (
    id UUID PRIMARY KEY,
    price float
);
// Here, price can store values like 19.99.

// 4. double
// Purpose: Stores a 64-bit double precision floating-point number.
// Example:
CREATE TABLE sensors (
    id UUID PRIMARY KEY,
    temperature double
);
// temperature can store values like 36.6, with higher precision.

// 5. text
// Purpose: Stores a string of text with variable length.
// Example:
CREATE TABLE books (
    id UUID PRIMARY KEY,
    title text
);
// title stores a string, e.g., "The Catcher in the Rye."

// 6. varchar
// Purpose: Similar to text, stores a variable-length string.
// Example:
CREATE TABLE employees (
    id UUID PRIMARY KEY,
    name varchar
);
// name can store a string like "John Doe."

// 7. uuid
// Purpose: Stores a universally unique identifier (UUID).
// Example:
CREATE TABLE orders (
    order_id uuid PRIMARY KEY,
    customer_id uuid
);
// Both order_id and customer_id are UUIDs.

// 8. timeuuid
// Purpose: Stores a UUID that is time-based, useful for generating ordered UUIDs.
// Example:
CREATE TABLE events (
    event_id timeuuid PRIMARY KEY,
    event_time timestamp
);
INSERT INTO events (event_id, event_time) VALUES (now(), '2024-11-08 14:30:00');
// event_id is a time-based UUID, ensuring events are ordered chronologically.

// 9. boolean
// Purpose: Stores a boolean value (true/false).
// Example:
CREATE TABLE users (
    id UUID PRIMARY KEY,
    is_active boolean
);
INSERT INTO users (id, is_active) VALUES (uuid(), true);
// is_active can be true or false to denote if a user is active.

// 10. date
// Purpose: Stores a date without a time component (year, month, day).
// Example:
CREATE TABLE meetings (
    id UUID PRIMARY KEY,
    meeting_date date
);
INSERT INTO meetings (id, meeting_date) VALUES (uuid(), '2024-11-08');
// meeting_date stores just the date, e.g., "2024-11-08."

// 11. timestamp
// Purpose: Stores a date and time, including milliseconds.
// Example:
CREATE TABLE logs (
    log_id UUID PRIMARY KEY,
    log_time timestamp
);
INSERT INTO logs (log_id, log_time) VALUES (uuid(), '2024-11-08 14:30:00');
// log_time stores a timestamp, e.g., "2024-11-08 14:30:00."

// 12. time
// Purpose: Stores the time of day without the date.
// Example:
CREATE TABLE schedule (
    id UUID PRIMARY KEY,
    start_time time
);
INSERT INTO schedule (id, start_time) VALUES (uuid(), '14:30:00');
// start_time stores just the time, e.g., "14:30:00."

// 13. inet
// Purpose: Stores an IP address (either IPv4 or IPv6).
// Example:
CREATE TABLE servers (
    id UUID PRIMARY KEY,
    ip_address inet
);
INSERT INTO servers (id, ip_address) VALUES (uuid(), '192.168.1.1');
// ip_address stores the server's IP address, e.g., "192.168.1.1."

// 14. decimal
// Purpose: Stores arbitrary precision decimal numbers.
// Example:
CREATE TABLE products (
    product_id UUID PRIMARY KEY,
    price decimal
);
// price stores values like "19.99" with precision for financial calculations.

// 15. set<type>
// Purpose: Stores a collection of unique values of a specified type.
// Example:
CREATE TABLE students (
    id UUID PRIMARY KEY,
    subjects set<text>
);
INSERT INTO students (id, subjects) VALUES (uuid(), {'Math', 'Science', 'History'});
// subjects stores a unique collection of subjects a student is enrolled in, e.g., {"Math", "Science"}.

// 16. list<type>
// Purpose: Stores an ordered collection of values of a specified type.
// Example:
CREATE TABLE books (
    id UUID PRIMARY KEY,
    chapters list<text>
);
INSERT INTO books (id, chapters) VALUES (uuid(), ['Introduction', 'Chapter 1', 'Chapter 2']);
// chapters stores an ordered list of chapter titles in a book.

// 17. map<key_type, value_type>
// Purpose: Stores a collection of key-value pairs.
// Example:
CREATE TABLE user_profiles (
    user_id UUID PRIMARY KEY,
    preferences map<text, text>
);
INSERT INTO user_profiles (user_id, preferences) VALUES (uuid(), {'color': 'blue', 'language': 'English'});
// preferences stores key-value pairs, such as {"color": "blue", "language": "English"}.

// User-Defined Type (UDT)
// In Cassandra, a User-Defined Type (UDT) allows you to define a custom data type, which can be used to model more complex structures within your tables. A UDT is essentially a structured type that groups related fields together.

CREATE TYPE address (
    street text,
    city text,
    state text,
    zip_code text
);


CREATE TABLE users (
    id UUID PRIMARY KEY,
    name text,
    address frozen<address>
);

// The frozen keyword is used to make the entire UDT immutable, meaning that the entire address needs to be updated as a single unit.

INSERT INTO users (id, name, address)
VALUES (
    uuid(), 
    'John Doe', 
    { 'street': '123 Main St', 'city': 'Springfield', 'state': 'IL', 'zip_code': '62701' }
);

