import 'dart:io';
import 'dart:math';

List stuff = [];


String? pin1 = '2015';
String? pin2 = '2016';
String? pin3 = '2018';
int? accountBalance2015 = 2000;
int? accountBalance2016 = 40000;
int? accountBalance2018 = 60000;
int? one = 1000;
int? two = 2000;
int? thr = 3000;
int? fou = 5000;
int? fiv = 10000;
int? six = 15000;
int? sev = 20000;
String? accountNumber1 = '6080630351';
String? accountNumber2 = '6080630352';
String? accountNumber3 = '6080630353';

// Enclosure for the Cash Denominations on ATM
void cashdenomination() {
  print(
      'Remember this ATM only dispenses 1000 Notes, so ma lo try anything less');
  print('''
      \'one\' for #1,000
      \'two\' for #2,000
      \'thr\' for #3,000
      \'fou\' for #5,000
      \'fiv\' for #10,000
      \'six\' for #15,000
      \'sev\' for #20,000
      \'eight\' for  Other
    ''');
}

void cashw() {
  print('Input the amount you would like to have in 1000 denomination');
}


// Enclosure for all the operations on ATM
void activities() {
  print('''
      1 for  Transactions
      2 for  Create Account
    ''');
  String? opt = stdin.readLineSync();
  if (opt == '1') {
    print('\n Kindly insert your ATM card');
    transactions();
  } else if (opt == '2') {
    // createAccount();
  } else {
    yetToMakeChoice();
  }
}

void inPut() {
  print('ERROR!\n \n Input your 4-digit pin');
  String? pin = stdin.readLineSync()!;
}


// Enclosure for transactions on ATM
void transactions() {
  print('''
      1 for Cash Withdrawal
      2 for  Transfer
      4 for  Recharge
      5 for Deposit
      6 for  Balance Inquiry
      8 for  Cancel
    ''');

  String? opt = stdin.readLineSync();
  if (opt == '1') {
    cashWithdrawal();
  } else if (opt == '2') {
    transfer();
  } else if (opt == '8') {
    // cancel();
    // anotherOperation();
  } else if (opt == '6') {
    balanceInquiry();
    anotherOperation();
  } else if (opt != '1' ||
      opt != '2' ||
      opt != '4' ||
      opt != '5' ||
      opt != '6' ||
      opt != '8') {
    print('You are yet to choose a valid option \n');
    anotherOperation();
  }
}

// Enclosure for Cash Withdrawal on ATM
void cashWithdrawal() {
  print('Input your 4-digit pin');
  String? pin = stdin.readLineSync()!;
  if (pin == pin1) {
    print('\nAtinuke, how much would you like to withdraw? \n');
    cashdenomination();
    String? cash = stdin.readLineSync();
    if (pin == pin1 && cash == 'one' || cash == 'two') {
      print('\nTake your cash');
    } else if (pin == pin1 && cash == 'eight' ||
        cash != 'one' ||
        cash != 'two') {
      print('Hello \n');
      cashw();
      int? cashOther = int.parse(stdin.readLineSync()!);
      if (cashOther < 1000 || cashOther % 1000 != 0 || cashOther > 2000) {
        print('O wrong nau');
      } else if (cashOther <= 2000) {
        print('Take your cash');
      }
    }
    print('Would you like to view your balance? \'Y\' for Yes or \'N\' for No');
    String? balanceAfterWithdrawal = stdin.readLineSync()!;
    if (balanceAfterWithdrawal != 'Y') {
      print('Okay');
    } else if (balanceAfterWithdrawal == 'Y') {
      print('Input your 4-digit pin');
      String? pin = stdin.readLineSync();
      if (pin == pin1) {
        if (cash == 'one') {
          int? onek = 2000 - 1000;
          print('\u{020A6}$onek is what you have left');
        } else if (cash == 'two') {
          int? onek = 2000 - 2000;
          print('\u{020A6}$onek is what you have left');
        } else if (cash == 'eight') {
          if (cash == cash) {
            print('\u{020A6}1000 is what you have left');
          } else if (cash == 2000) {
            int? onek = 2000 - 2000;
            print('\u{020A6}onek is what you have left');
          }
        }
      }
    }
  } else if (pin == pin2) {
    print('\nBadekale, how much would you like to withdraw? \n');
    cashdenomination();
    String? cash = stdin.readLineSync();
    if (pin == pin2 && cash == 'one' ||
        cash == 'two' ||
        cash == 'thr' ||
        cash == 'fou' ||
        cash == 'fiv' ||
        cash == 'six' ||
        cash == 'sev') {
      print('\nTake your cash');
    } else if (pin == pin2 && cash == 'eight' ||
        cash != 'one' ||
        cash != 'two' ||
        cash != 'thr' ||
        cash != 'fou' ||
        cash != 'fiv' ||
        cash != 'six' ||
        cash != 'sev') {
      print('Hello \n');
      cashw();
      int? cash = int.parse(stdin.readLineSync()!);
      if (cash < 1000 || cash % 1000 != 0 || cash > 40000) {
        print('O wrong nau');
      } else if (cash <= 40000) {
        print('Take your cash');
      }
    }

    print('Would you like to view your balance? \'Y\' for Yes or \'N\' for No');
    String? balanceAfterWithdrawal = stdin.readLineSync()!;
    if (pin == pin2) {
      if (cash == 'one') {
        int? onek = 40000 - 1000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'two') {
        int? onek = 40000 - 2000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'thr') {
        int? onek = 40000 - 3000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'fou') {
        int? onek = 40000 - 5000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'fiv') {
        int? onek = 40000 - 10000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'six') {
        int? onek = 40000 - 15000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'sev') {
        int? onek = 40000 - 20000;
        print('\u{020A6}$onek is what you have left');
      }
    }
  } else if (pin == pin3) {
    print('\nAdekunle, how much would you like to withdraw? \n');
    cashdenomination();
    String? cash = stdin.readLineSync();
    if (pin == pin3 && cash == 'one' ||
        cash == 'two' ||
        cash == 'thr' ||
        cash == 'fou' ||
        cash == 'fiv' ||
        cash == 'six' ||
        cash == 'sev') {
      print('\nTake your cash');
    } else if (pin == pin3 && cash == 'eight' ||
        cash != 'one' ||
        cash != 'two' ||
        cash != 'thr' ||
        cash != 'fou' ||
        cash != 'fiv' ||
        cash != 'six' ||
        cash != 'sev') {
      print('Hello \n');
      cashw();
      int? cash = int.parse(stdin.readLineSync()!);
      if (cash < 1000 || cash % 1000 != 0 || cash > 60000) {
        print('O wrong nau');
      } else if (cash <= 60000) {
        print('Take your cash');
      }
    }
    print('Would you like to view your balance? \'Y\' for Yes or \'N\' for No');
    String? balanceAfterWithdrawal = stdin.readLineSync()!;
    if (pin == pin3) {
      if (cash == 'one') {
        int? onek = 60000 - 1000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'two') {
        int? onek = 60000 - 2000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'thr') {
        int? onek = 60000 - 3000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'fou') {
        int? onek = 60000 - 5000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'fiv') {
        int? onek = 60000 - 10000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'six') {
        int? onek = 60000 - 15000;
        print('\u{020A6}$onek is what you have left');
      } else if (cash == 'sev') {
        int? onek = 60000 - 20000;
        print('\u{020A6}$onek is what you have left');
      }
    }
  } else if (pin.length == 4 && pin != pin1 && pin != pin2 && pin != pin3) {
    print(
        'Hi there!, insufficient fund you\'ve got! \n Kindly click option \'5\' below if you would like to make a Deposit or option \'8\' to check out');
    String? option = stdin.readLineSync();
    if (option == 'fiv') {
      transactions();
    } else if (option == 'eight') {
      transactions();
    } else {
      print('Wrong input');
      transactions();
    }
  } else if (pin != pin1 || pin != pin2 || pin != pin3 || pin.length != 4) {
    print('ERROR \n Check that you input the right pin ');
    String? newPin = stdin.readLineSync()!;
    if (newPin == pin1 ||
        newPin == pin2 ||
        newPin == pin3 ||
        newPin.length == 4) {
      transactions();
    } else {
      print(
          'Wrong, input \'C\' to Continue \n \'T\' to treminate this operation and go inside the bank to rectify the error');
      String? rectify = stdin.readLineSync();
      if (rectify == 'C') {
        transactions();
      } else if (rectify == 'T' || rectify != 'C') {
        print(
            'Thank you for choosing Adbrig \n You should have your ATM card now. . . .');
      }
    }
  }
}

// Enclosure for Available Options
void availableOptions() {
  print('''
      \'one\' for #1,000
      \'two\' for #2,000
      \'thr\' for #3,000
      \'fou\' for #5,000
      \'fiv\' for #10,000
      \'six\' for #15,000
      \'sev\' for #20,000
      \'eight\' for  Other
    ''');
}

// Enclosure for Viewing Balance
void viewBalance() {
  print('Would you like to view your balance? \'Y\' for Yes or \'N\' for No');
  String? balanceAfterTransfer = stdin.readLineSync()!;
  if (balanceAfterTransfer != 'Y') {
    print('Okay');
    anotherOperation();
  } else if (balanceAfterTransfer == 'Y') {
    print('Input your 4-digit pin');
    String? pin = stdin.readLineSync();
    if (pin == pin1) {
      if (transfer == 'one') {
        int? onek = 2000 - 1000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'two') {
        int? onek = 2000 - 2000;
        print('\u{020A6}$onek is what you have left');
      }
    } else if (pin == pin2) {
      if (transfer == 'one') {
        int? onek = 40000 - 1000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'two') {
        int? onek = 40000 - 2000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'thr') {
        int? onek = 40000 - 3000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'fou') {
        int? onek = 40000 - 5000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'fiv') {
        int? onek = 40000 - 10000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'six') {
        int? onek = 40000 - 15000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'sev') {
        int? onek = 40000 - 20000;
        print('\u{020A6}$onek is what you have left');
      }
    } else if (pin == pin3) {
      if (transfer == 'one') {
        int? onek = 60000 - 1000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'two') {
        int? onek = 60000 - 2000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'thr') {
        int? onek = 60000 - 3000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'fou') {
        int? onek = 60000 - 5000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'fiv') {
        int? onek = 60000 - 10000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'six') {
        int? onek = 60000 - 15000;
        print('\u{020A6}$onek is what you have left');
      } else if (transfer == 'sev') {
        int? onek = 60000 - 20000;
        print('\u{020A6}$onek is what you have left');
      }
    }
    print(
        'Would you like to perform another operation? \n \'Y\' for Yes \n \'N\' for No');
    String? reply = stdin.readLineSync();
    if (reply != 'Y') {
      print(
          'Thank you for banking with the Adbrig! \n You can have your ATM card');
    } else {
      print('Hello, input:');
      transactions();
    }
  }
}

// Enclosure for performing Another Operation on ATM
void anotherOperation() {
  print(
      'Would you like to perform another operation? \n \'Y\' for Yes \n \'N\' for No');
  String? reply = stdin.readLineSync();
  if (reply != 'Y') {
    print('Take your ATM card\n');
    print('Thank you for banking with the Adbrig!');
  } else {
    print('Hello, input:');
    transactions();
  }
}

// Enclosure for Cash Transfer on ATM
void transfer() {
  print('Hi there!, input your 4-digit pin');
  String? pin = stdin.readLineSync()!;

// pinTransfer
  void pinOne() {
    print('You can not transfer more than $accountBalance2015');
    availableOptions();
    print('Select');
    String? transfer = stdin.readLineSync()!;

    if (pin == pin1) {
      if (transfer == 'eight') {
        cashw();
        int? cash = int.parse(stdin.readLineSync()!);

        if (cash > 500 && cash < 2000) {
          print('Successfully sent \u{020A6}$cash!');
        } else if (cash < 500 || cash > 2000) {
          print('O wrong nau');
        }
      } else if (transfer == 'one' || transfer == 'two') {
        print('Successfully sent');
      } else if (transfer != 'one' ||
          transfer != 'two' ||
          transfer != 'thr' ||
          transfer == 'thr' ||
          transfer != 'fou' ||
          transfer == 'fou' ||
          transfer != 'fiv' ||
          transfer == 'fiv' ||
          transfer != 'six' ||
          transfer == 'six' ||
          transfer != 'sev' ||
          transfer == 'sev' ||
          transfer != 'eight') {
        print('Low balance!');
      }
    }
    viewBalance();
  }

  void pinTwo() {
    print('You can not transfer more than $accountBalance2016');
    availableOptions();
    print('Select');
    String? transfer = stdin.readLineSync()!;

    if (pin == pin2) {
      if (transfer == 'eight') {
        cashw();
        int? cash = int.parse(stdin.readLineSync()!);
        if (cash > 500 && cash < 40000) {
          print('Successfully sent \u{020A6}$cash!');
        } else if (cash < 500 || cash > 40000) {
          print('O wrong nau');
        }
      } else if (transfer == 'one' ||
          transfer == 'two' ||
          transfer == 'thr' ||
          transfer == 'fou' ||
          transfer == 'fiv' ||
          transfer == 'six' ||
          transfer == 'sev') {
        print('Successfully sent');
      } else if (transfer != 'one' ||
          transfer != 'two' ||
          transfer != 'thr' ||
          transfer != 'fou' ||
          transfer != 'fiv' ||
          transfer != 'six' ||
          transfer != 'sev' ||
          transfer != 'eight') {
        print('Do something!');
      }
    }
    viewBalance();
  }

  void pinThree() {
    print('You can not transfer more than $accountBalance2018');
    availableOptions();
    print('Select');
    String? transfer = stdin.readLineSync()!;

    if (pin == pin3) {
      if (transfer == 'eight') {
        cashw();
        int? cash = int.parse(stdin.readLineSync()!);
        // int ? cash;
        if (cash > 500 && cash < 60000) {
          print('Successfully sent \u{020A6}$cash!');
        } else if (cash < 500 || cash > 60000) {
          print('O wrong nau');
        }
      } else if (transfer == 'one' ||
          transfer == 'two' ||
          transfer == 'thr' ||
          transfer == 'fou' ||
          transfer == 'fiv' ||
          transfer == 'six' ||
          transfer == 'sev') {
        print('Successfully sent');
      } else if (transfer != 'one' ||
          transfer != 'two' ||
          transfer != 'thr' ||
          transfer != 'fou' ||
          transfer != 'fiv' ||
          transfer != 'six' ||
          transfer != 'sev' ||
          transfer != 'eight') {
        print('Do something!');
      }
    }
    viewBalance();
  }

  if (pin == pin1) {
    pinOne();
  } else if (pin == pin2) {
    pinTwo();
  } else if (pin == pin3) {
  } else if (pin.length == 4) {
    print(
        'You do not have a sufficient balance, would you like to deposit? \'Y\' for Yes or \'N\' for No');
  } else if (pin.length < 4 || pin.length > 4) {
    print('ERROR!\n \n Input your 4-digit pin');
    String? pin = stdin.readLineSync()!;
    if (pin.length < 4 || pin.length > 4) {
      print('ERROR!\n \n Input your 4-digit pin');
      String? pin = stdin.readLineSync()!;
    } else if (pin == pin1) {
      pinOne();
    } else if (pin == pin2) {
      pinTwo();
    } else if (pin == pin3) {
      pinThree();
    } else if (pin.length == 4 && pin != pin1 && pin != pin2 && pin != pin3) {
      print(
          'You do not have a sufficient balance, would you like to deposit? \'Y\' for Yes or \'N\' for No');
      String? depositToAllowTransfer = stdin.readLineSync();
      if (depositToAllowTransfer == 'Y') {
        print(
            'Hi there, input the account number you\'d like to make a deposit into');
        String? accountNumber = stdin.readLineSync();
        if (accountNumber == accountNumber1 ||
            accountNumber == accountNumber2 ||
            accountNumber == accountNumber3) {
          print('Input the amount would you like to deposit');
          int? amountDeposited = int.parse(stdin.readLineSync()!);
        }
      }
    }
    inPut();
  }
}
// else {
//   print('Thank you for banking with Adbrig \n You can have your ATM card');
// }


void yetToMakeChoice() {
  print(
      'You are yet to make your choice. . . . \n Would you like to perform another operation? \n \'Y\' for Yes \n \'N\' for No');
  String? YesorNo = stdin.readLineSync();
  if (YesorNo == 'Y') {
    print('Hi there, what would you like to do?');
    activities();
  } else {
    print('Thank you for banking with Adbrig. \n Cheers!');
  }
}

void balanceInquiry() {
  print('Input your security pin');
  String? pin = stdin.readLineSync();
  if (pin == pin1) {
    print('Your account balance is: \n \u{020A6} $accountBalance2015');
  } else if (pin == pin2) {
    print('Your account balance is: \n \u{020A6} $accountBalance2016');
  } else if (pin == pin3) {
    print('Your account balance is: \n \u{020A6} $accountBalance2018');
  } else {
    print('Nothing to show here guy');
  }
}
// fourDigits();
// int? pin = int.parse(stdin.readLineSync()!);

void cancel() {
  print('Thank you for banking with Adbrig \n You can have your ATM card');
}

void thankYou() {
  print('Thank you for banking with Adbrig \n Have a great day!');
}


void activitiesContinuation() {
  print('Another Operation? \n \'Y\' for Yes \n \'N\' for No.');
  String? YesorNo = stdin.readLineSync();
  if (YesorNo == 'Y') {
    print('Hi there, what would you like to do?');
    activities();
  } else {
    print('\n Proceed into the bank to get your ATM card \n Thank You!');
  }
}


// Enclosure for Creasting An Account on ATM
void createAccount() {
  print('Hi esteemed customer, thank you for choosing Adbrig bank');

  print('Input your full name, format:First-Last-Middle name');
  String name = stdin.readLineSync()!;
  print('State of origin, format:Oyo');
  String? origin = stdin.readLineSync();
  if (origin == 'Oyo' ||
      origin == 'Osun' ||
      origin == 'Ogun' ||
      origin == 'Lagos' ||
      origin == 'Kwara' ||
      origin == 'Ondo' ||
      origin == 'Akwa-Ibom' ||
      origin == 'Delta') {
    print('Phone number, format: 08060165154, ELEVEN digits');
    String? phone = stdin.readLineSync()!;
    if (phone.length > 11 || phone.length < 11) {
      print('Phone number, format: 08060165154, ELEVEN digits');
      String? phone = stdin.readLineSync()!;
    }
    print('Select your 4-digit security pin');
    String? myPin = stdin.readLineSync()!;
    if (myPin.length > 4 || myPin.length < 4) {
      print('A 4-digit security pin');
      String? myPin = stdin.readLineSync();
    }
    print(
        'Select: \n \'Prov\' if you would like that we provide your Account Number \n or \n \'P\' to use your provided Phone Number?');
    String? accountNumber = stdin.readLineSync();
    Random randomAccountNumber = Random();
    // int number = rand.nextInt(1000000000) + 10;
    int number = randomAccountNumber.nextInt(1000000000);
    
    if (accountNumber == 'Prov') {
      int? accountNumberGenerated = number.toInt();
      print('$name here is your account number: \n $accountNumberGenerated');
    } else if (accountNumber == 'P') {
      int? number = int.parse(phone);
      print('$name here is your account number: \n $number');
    }
    print(
        'Would you like to view your details? \n \'Y\' for Yes; \n \'N\' for No');
    String? option = stdin.readLineSync();
    // activities();
    // MAP
    if (option == 'Y') {
      Map account = {
        'Name': name,
        'State Of Origin': origin,
        'Phone Number': phone,
        'Account Number': number
      };
      stuff.add(account);
      print('Here are your details, kindly VERIFY \n ${stuff} \n');

      print('If your details are correct input \'Y\' or \'N\' if not');
      String? detailsVerification = stdin.readLineSync();
      if (detailsVerification == 'Y') {
        print('Another operation? \n \'Y\' for Yes \n \'N\' for No');
        String? YesorNo = stdin.readLineSync();
        if (YesorNo == 'Y') {
          activitiesContinuation();
          activities();
        } else {
          print(
              '\n Proceed into the bank to get your ATM card \n Thank You $name!');
        }
      } else if (detailsVerification == 'N') {
        print(
            "What would you like to correct? If \n 'Name' input \'N\' \n 'State Of Origin' input \'O\' \n 'Phone Number' input \'P\' \n 'Account Number' input \'A\'");
        String? correct = stdin.readLineSync();
        if (correct == 'N') {
          String? newName = stdin.readLineSync();
          // stuff.add(newName);
          // stuff.insert(0, newName);
          // stuff[1] = newName;

          // print(stuff);
          print('Here are your details, kindly VERIFY \n ${stuff} \n');
        } else {
          print(
              '\n Proceed into the bank to get your ATM card \n Thank You $name!');
        }
        // activities();
        // stuff.remove(name);
        // print('Proceed into the bank to get your ATM card \n Thank You $name!');

      }
    } else if (option == 'N') {
      activitiesContinuation();
    } else {
      print(
          'Registration is not allowed here, kindly find an Adbrig bank in your state of origin \n');
      // anotherOperation();
      activitiesContinuation();
      activities();
    }
  }
}

void main() {
    print(
        'Hi esteemed customer, welcome to the Adbrig Bank. Thank you for banking with us, what would you like to do?\n');
    activities();
  }
