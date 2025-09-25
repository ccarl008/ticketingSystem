-- Clients
CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    company VARCHAR(100)
);

-- Technicians
CREATE TABLE technicians (
    technician_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

-- Categories
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Status
CREATE TABLE status (
    status_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Tickets
CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES clients(client_id),
    technician_id INT REFERENCES technicians(technician_id),
    category_id INT REFERENCES categories(category_id),
    status_id INT REFERENCES status(status_id),
    title VARCHAR(200) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Comments
CREATE TABLE comments (
    comment_id SERIAL PRIMARY KEY,
    ticket_id INT REFERENCES tickets(ticket_id),
    technician_id INT REFERENCES technicians(technician_id),
    comment_text TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Clients
INSERT INTO clients (name, email, phone, company) VALUES
('Alice Johnson', 'alice@example.com', '555-1111', 'TechCorp'),
('Bob Smith', 'bob@example.com', '555-2222', 'NetSolutions');

-- Insert Technicians
INSERT INTO technicians (name, email, phone) VALUES
('Charlie Brown', 'charlie@itbiz.com', '555-3333'),
('Dana White', 'dana@itbiz.com', '555-4444');

-- Insert Categories
INSERT INTO categories (name) VALUES
('Network'), ('Hardware'), ('Software');

-- Insert Status
INSERT INTO status (name) VALUES
('Open'), ('In Progress'), ('Resolved'), ('Closed');

-- Insert Tickets
INSERT INTO tickets (client_id, technician_id, category_id, status_id, title, description)
VALUES
(1, 1, 1, 1, 'Internet Down', 'Client reports no internet connectivity.'),
(2, 2, 3, 2, 'Software Crash', 'Application crashes when opening a file.');

-- Insert Comments
INSERT INTO comments (ticket_id, technician_id, comment_text) VALUES
(1, 1, 'Checked router, appears offline.'),
(2, 2, 'Investigating software logs for errors.');

SELECT * FROM clients;
SELECT * FROM tickets;
SELECT * FROM comments;-- Clients
CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    company VARCHAR(100)
);

-- Technicians
CREATE TABLE technicians (
    technician_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

-- Categories
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Status
CREATE TABLE status (
    status_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Tickets
CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES clients(client_id),
    technician_id INT REFERENCES technicians(technician_id),
    category_id INT REFERENCES categories(category_id),
    status_id INT REFERENCES status(status_id),
    title VARCHAR(200) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Comments
CREATE TABLE comments (
    comment_id SERIAL PRIMARY KEY,
    ticket_id INT REFERENCES tickets(ticket_id),
    technician_id INT REFERENCES technicians(technician_id),
    comment_text TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Clients
INSERT INTO clients (name, email, phone, company) VALUES
('Alice Johnson', 'alice@example.com', '555-1111', 'TechCorp'),
('Bob Smith', 'bob@example.com', '555-2222', 'NetSolutions');

-- Insert Technicians
INSERT INTO technicians (name, email, phone) VALUES
('Charlie Brown', 'charlie@itbiz.com', '555-3333'),
('Dana White', 'dana@itbiz.com', '555-4444');

-- Insert Categories
INSERT INTO categories (name) VALUES
('Network'), ('Hardware'), ('Software');

-- Insert Status
INSERT INTO status (name) VALUES
('Open'), ('In Progress'), ('Resolved'), ('Closed');

-- Insert Tickets
INSERT INTO tickets (client_id, technician_id, category_id, status_id, title, description)
VALUES
(1, 1, 1, 1, 'Internet Down', 'Client reports no internet connectivity.'),
(2, 2, 3, 2, 'Software Crash', 'Application crashes when opening a file.');

-- Insert Comments
INSERT INTO comments (ticket_id, technician_id, comment_text) VALUES
(1, 1, 'Checked router, appears offline.'),
(2, 2, 'Investigating software logs for errors.');

SELECT * FROM clients;
SELECT * FROM comments;
SELECT * FROM clients;