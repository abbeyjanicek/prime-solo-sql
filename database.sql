--1. All users from Chicago.
SELECT * FROM "accounts" WHERE "city" ILIKE 'chicago';

--2. All users w/usernames that contain letter a.
SELECT * FROM "accounts" WHERE "username" ILIKE '%a%';

--3. Update all records w/ balance=0.00, transactions_attempted=0. New account balance=10.00.
UPDATE "accounts" SET "account_balance" = '10.00' WHERE "transactions_attempted" = '0' AND "account_balance" = '0.00';

--4. Select all users that have attempted 9 or more transactions.
SELECT * FROM "accounts" WHERE "transactions_attempted" >= '9';

--5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance.
SELECT "username", "account_balance" FROM "accounts" ORDER BY "account_balance" DESC LIMIT 3;
--6.


--7. Get all users with account balances that are more than $100.
SELECT * FROM "accounts" WHERE "account_balance" > '100';

--8. Add a new record.
INSERT INTO "accounts" (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('abbey', 'minneapolis', 2000, 2000, 5.10);

--9. Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM "accounts" WHERE "city" = 'miami' OR "city" = 'phoenix' AND "transactions_completed" < '5';