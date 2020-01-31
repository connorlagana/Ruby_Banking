# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Banking With Ruby

![gif](https://media2.giphy.com/media/y3B74VeWI2QQE/giphy.gif)

| Language | Type          | Date  | Duration | Author               |
| -------- | ------------- | ----- | -------- | -------------------- |
| Ruby     | Micro-Project | 01/31 | 6 Hrs    | Suresh Melvin Sigera |

This micro-project is a full-day Ruby build. You will break into groups, complete the Ruby micro-project, and present your projects to the classroom at 4:00PM.

Treat this like your P3– one of your groupmates should be the Git Czar and initialize the repo on their personal github accounts. (If you were a Git Czar for P3, please enourage someone else to be the Czar for this project!) Branch as needed and merge your working code with master.

## Prompt

ACME is a bank which utilizes the following file structure.

| Customer        | Account                    | Account Type | Transaction        |
| --------------- | -------------------------- | ------------ | ------------------ |
| customer number | account num                | savings      | transaction number |
| first name      | account type               | checking     | transaction type   |
| last name       | balance                    |              | amount             |
| SSN             | overdrafts                 |              | time stamp         |
| address         | last accessed (time stamp) |              | account from       |
| account numbers | customer number            |              | account to         |

Given the above, your team is going to design the file database for the ACME Bank. Write the entire Ruby program using classes, class methods, file handling, and exception handling to meet the functional requirements below:

## Requirements

You should have **a minimum of**:

- 3 classes;
- 3 files;

<br>

Your app should have the following functionality:

1. Add New Customer

   - customer can have a checking account
   - customer can have a savings account
   - customer can have both a checking and a savings account

<br>

2. Withdraw Money from Account

   - withdraw from savings
   - withdraw from checking

<br>

3. Deposit Money into Account

   - can deposit into savings
   - can deposit into checking

<br>

4. Transfer Money Between Accounts

   - can transfer from savings to checking
   - can transfer from checking to savings
   - can transfer from checking or savings to another customer's account

<br>

5. Display Transaction Data

   - index all transactions for a customer account
   - show one transaction details
   - show historical data of transactions (date and time of transaction, type of transaction, resulting balance, etc.)

<br>

6. Build Overdraft Protection

   - charge customer ACME overdraft protection fee of \$35 when overdrafting
   - prevent customer from withdrawing more than \$100 USD if account is currently negative
     - _the account cannot have a resulting balance of less than -\$100_
       OR
     - _the customer cannot make a withdrawal of greater than \$100_
   - deactivate the account after 2 overdrafts
     - reactivate the account if the customer brings the account current, paying both the overdraft amount and the resulting overdraft fees

<br>

## Get Started!

![gif](https://media1.tenor.com/images/757db74e0691919301cb3414f642beef/tenor.gif?itemid=3561747)
