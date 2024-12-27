class BankAccount {
  String? _accountId;
  int? _balance;

  // Main constructor to initialize the BankAccount with ID
  BankAccount(String accountId){
    _accountId = accountId;
  }
  // Named constructor to initialize the BankAccount with account ID and balance set to 0
  BankAccount.setBalance(String accountId) {
    _accountId = accountId;
    _balance = 0;
  }

  // Getter for the account ID, no need for setter 
  String getAccountId() {
    return _accountId!;
  }

  // Getter and setter for the account balance
  int? getBalance() {
    return _balance;
  }
  void setBalance(int? balance) {
    _balance = balance;
  }

  /* Method to withdraw an ammount of money from the balance 
   but only if the the right conditions are met */
  void withdraw(int amount) {
    // ensure the balance is initialized
    if (_balance == null){
      print('No balance to withdraw \n hint: use setBalance()');
      return;
    }
    // ensure the amount is positive
    if (amount < 0) {
      print('Invalid withdrawal amount');
      return;
    }
    // ensure the balance is sufficient to cover the withdrawal
    if (_balance! > amount) {
      _balance = _balance! - amount;
      print('Withdrawal successful with amount of $amount');
    } else { 
      print('Insufficient funds');
    }
  }

   // Method to deposit an ammount of money to the balance
  void deposit(int amount) {
    // ensure the amount is positive
    if (amount < 0) {
      print('Invalid deposit amount');
      return;
    }
    // update the balance
    _balance = (_balance?? 0) + amount;
    print('Deposit successful with amount of $amount');
  }

  // Method to display information about the account
  void displayAccountInfo() {
    print('Account ID is: $_accountId');
    print('Balance is: $_balance');
  }
}