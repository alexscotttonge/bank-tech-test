[![Build Status](https://travis-ci.org/alexscotttonge/bank-tech-test.svg?branch=master)](https://travis-ci.org/alexscotttonge/bank-tech-test)

#Challenge

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

##How to run

```
irb
```

##User stories

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

##Notes
- further work on testing Bank to test print statement method
