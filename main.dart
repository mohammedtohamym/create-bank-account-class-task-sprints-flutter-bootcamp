import 'bank_account_managment.dart';

void main(){
  // Using both kinds of Contructor to make an object of type BankAccount
  BankAccount bankAccount1 = new BankAccount('1');
  BankAccount bankAccount2 = new BankAccount.setBalance('2');

  /* Preforming basic operations on first object
  to demonstrate it works with as inteded */
  bankAccount1.deposit(1000);
  bankAccount1.withdraw(500);
  bankAccount1.displayAccountInfo();

  // Entering the wrong ammount to withraw
  bankAccount1.withdraw(9000);

  // Depositing the wrong amount
  bankAccount1.deposit(-5000);

  // Diaplaying account information to show nothing has changed
  bankAccount1.displayAccountInfo();

  print('________________________________________________________________');

   /* Preforming basic operations on second object
  to demonstrate it works with as inteded */
  bankAccount2.displayAccountInfo();

  // Trying to withdraw more money than the balance
  bankAccount2.withdraw(10000);

  // Displaying account information to show nothing has changed
  bankAccount2.displayAccountInfo();

  // Depositing an acceptable ammount
  bankAccount2.deposit(2000);

  // Displaying account information to show balance has increased
  bankAccount2.displayAccountInfo();

  // Withdrawing an acceptable ammount 
  bankAccount2.withdraw(500);

  // Displaying account information to show balance has decreased 
  bankAccount2.displayAccountInfo();


  print('________________________________________________________________');

  // Creating a third obejct with main constructor
  BankAccount bankAccount3 = new BankAccount('3');

  //Using getter method to display account ID
  print("bankAccount3's ID is: ${bankAccount3.getAccountId()}");

  // Using gettter method before initializing the balance
  print("Account 3's balance is now: ${bankAccount3.getBalance()}");

  // Withdrawing before initializing the balance
  bankAccount3.withdraw(20000);

  // Using setter method to initialize the balance
  bankAccount3.setBalance(15000);
  bankAccount3.displayAccountInfo();
}