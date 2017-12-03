[![Build Status](https://travis-ci.org/alexscotttonge/bank-tech-test.svg?branch=master)](https://travis-ci.org/alexscotttonge/bank-tech-test)

### Challenge

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

#### User stories

```
As a user
So I can be a functioning member of society
I want to open a bank account

As a user
So I can save money
I want to be able to deposit cash in the account

As a user
So I can spend money
I want to be able to withdraw cash

As a user
So I can track spending
I want to be able to see my account statement

```

#### Functionality

```
Beaver:bank-tech-test alex1$ irb
2.4.0 :001 > Dir["./lib/*.rb"].each {|file| require file}
 => ["./lib/bank.rb", "./lib/statement.rb"]
2.4.0 :002 > bank = Bank.new(Statement.new)
 => #<Bank:0x007f90338bd7e0 @balance=0, @store_transactions=[], @statement=#<Statement:0x007f90338bd880 @header="date || credit || debit || balance">>
2.4.0 :003 > bank.deposit(1000)
 => [{:date=>"03/12/2017", :deposit=>"£1000", :withdrawal=>"", :balance=>"£1000"}]
2.4.0 :004 > bank.deposit(2000)
 => [{:date=>"03/12/2017", :deposit=>"£1000", :withdrawal=>"", :balance=>"£1000"}, {:date=>"03/12/2017", :deposit=>"£2000", :withdrawal=>"", :balance=>"£3000"}]
2.4.0 :005 > bank.withdraw(500)
 => [{:date=>"03/12/2017", :deposit=>"£1000", :withdrawal=>"", :balance=>"£1000"}, {:date=>"03/12/2017", :deposit=>"£2000", :withdrawal=>"", :balance=>"£3000"}, {:date=>"03/12/2017", :deposit=>"£2000", :withdrawal=>"500", :balance=>"£2500"}]
2.4.0 :006 > bank.print_transactions
date || credit || debit || balance
03/12/2017||£1000||||£1000
03/12/2017||£2000||||£3000
03/12/2017||£2000||500||£2500
 => nil
2.4.0 :007 >

```


#### Notes
- further work on testing Bank to test print statement method
