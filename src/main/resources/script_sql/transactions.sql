CREATE TABLE "transactions"(
    id                    SERIAL PRIMARY KEY,
    type                  Varchar (50),
    date                  Date,
    amount                decimal,
    id_accounts           INT REFERENCES accounts(id),
    id_category_operation INT REFERENCES category_operation(id)
);

ALTER TABLE transactions
    ADD COLUMN effective_date TIMESTAMP,
ADD COLUMN registration_date TIMESTAMP;

ALTER TABLE transactions
DROP COLUMN date;


INSERT INTO "transactions" (type, date, amount, id_accounts, id_category_operation) VALUES
('Deposit', '2023-01-01', 200.00, '1', '4');
('Withdraw', '2023-02-15', 50.00, '12', '1'),
('Deposit', '2023-03-10', 300.00, '13', '4'),
('Withdraw', '2023-04-05', 100.00, '14', '5'),
('Deposit', '2023-05-20', 150.00, '15', '4'),
('Deposit', '2023-01-05', 300.00, '16', '4'),
('Withdraw', '2023-02-20', 100.00, '17', '2'),
('Deposit', '2023-03-15', 400.00, '12', '4'),
('Withdraw', '2023-04-10', 200.00, '18', '5'),
('Deposit', '2023-05-25', 250.00, '19', '4');

