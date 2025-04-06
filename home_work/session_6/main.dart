import 'class_loan.dart';

void main() {
  LoanProcessingSystem loanProcessingSystem = LoanProcessingSystem();
  PersonalLoan personalLoan = PersonalLoan(
    borrowerName: 'humam',
    loanAmount: 10000,
  );
  HomeLoan homeLoan = HomeLoan(borrowerName: 'humam2', loanAmount: 600000);
  CarLoan carLoan = CarLoan(borrowerName: 'mohamed', loanAmount: 70000);
  loanProcessingSystem.applyLoan(personalLoan);
  loanProcessingSystem.applyLoan(homeLoan);
  loanProcessingSystem.applyLoan(carLoan);
  loanProcessingSystem.calculateInstallments(12);
}
