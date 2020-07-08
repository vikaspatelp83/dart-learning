void main() {
  // OK
  try {
    depositMoney(1500);
  } catch (e, s) {
    print(e.errorMessage());
    print(s);
  }

  // OK
  try {
    depositMoney(0);
  } catch (e, s) {
    print(e.errorMessage());
    print(s);
  }

  // Exception
  try {
    depositMoney(-1233);
  } catch (e, s) {
    print(e.errorMessage());
    print(s);
  }
}

// custom exception class
class DepositAmountLessThanZeroException implements Exception {
  String errorMessage() {
    return "Ammount cannot be less than 0";
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw new DepositAmountLessThanZeroException();
  } else {
    print("Successful, Deposited $amount");
  }
}
