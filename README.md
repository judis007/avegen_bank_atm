
**

# Avegen ATM

> Operating System I used: Ubuntu 20.04.2 LTS

This is a web application which simulates an  ATM machine. Users can withdraw, deposit and check their balance amount through this. Since this is an ATM, we cannot directly create the users. We have to pass the users via back-end through something called as a seed file ( Don't worry! we will see how to add new users to the seed file. )

## How to set up the application in your computer

First clone the repository to your computer. For that take the terminal application in your computer. In that type

    git clone https://github.com/judis007/avegen_bank_atm.git

Now move to that folder by typing

    cd avegen_bank_atm

You need you setup the databases and seeds file of the application. For that type

    rails db:setup

Now everything has been setup in order to run the application. Now type 

    rails server

Now go to a web browser ( Firefox or Google Chrome ) and type `localhost:3000` in the search bar. Enjoy!

## How to add new users and user accounts to the application

If you want to add new users and their corresponding user accounts so that those accounts will be detected by the ATM, go to the seeds file in your application. The seeds file is located at

    db/seeds.rb

of your application. Now in that file, add new users by adding the line

    User.create!(first_name: "Micheal", last_name: "Antony", age: 45)

Add new user accounts by adding the line

    UserAccount.create!(account_number: 1234567890, password_digest: 8796, user_id: 1, account_id: 1)

 Here the `user_id` specifies which user you are referring to. The `account_id` specifies which account is that. There are two accounts, which are Savings and Current. Savings has the `account_id` of 1 and Current has the `account_id` of 2.

Now you have setup your application successfully. Well done!

If you want to see a live preview of the application, go to

[https://avegen-atm.herokuapp.com/](https://avegen-atm.herokuapp.com/)

### User details in the live preview

1. First name: Anna
    Last name: Mary
    Age: 24
    Account number: 1234
    PIN: 1234
    Account type: Savings

2. First name: Dan
    Last name: Brown
    Age: 48
    Account number: 2345
    PIN: 2468
    Account type: Current

3. First name: John
    Last name: Gomez
    Age: 34
    Account number: 6789
    PIN: 2145
    Account type: Current
#

**