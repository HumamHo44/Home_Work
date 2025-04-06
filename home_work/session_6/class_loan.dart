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
