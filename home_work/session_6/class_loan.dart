/*
Abstract Class: Loan
Create an abstract class Loan with the following properties and methods:
- borrowerName (String)
- loanAmount (double)
- interestRate (double)
- Abstract method: double calculateMonthlyInstallment(int months).
Loan Subclasses
Three types of loans should be implemented:
- PersonalLoan: Has a fixed 10% interest rate.
- HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
- CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee.
LoanProcessingSystem Class
Create a LoanProcessingSystem class that:
- Stores a list of loans.
- Provides methods to:
- applyLoan(Loan loan): Adds a loan application to the system.
- calculateInstallments(int months): Calculates the monthly installment for all loans.

*/

abstract class Loan {
  final String borrowerName;
  final double loanAmount;
  final double interestRate;

  Loan({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate,
  });

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: 10.0,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    return (loanAmount + (loanAmount * interestRate / 100)) / months;
  }
}

class HomeLoan extends Loan {
  HomeLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: loanAmount >= 500000 ? 9.5 : 8.0,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    return (loanAmount + (loanAmount * interestRate / 100)) / months;
  }
}

class CarLoan extends Loan {
  CarLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: 7.0,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    double totalLoan = loanAmount;
    if (loanAmount > 50000) {
      totalLoan += loanAmount * 0.02;
    }
    return (totalLoan + (totalLoan * interestRate / 100)) / months;
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
        'Monthly installment for ${loan.borrowerName}: \$${installment.toStringAsFixed(2)}',
      );
    }
  }
}
