import 'bankLoanSystem.dart';

void main() {
  PersonalLoan personalLoan = PersonalLoan(
    borrowName: "Abanop",
    loanAmount: 100000,
  );
  CarLoan carLoan = CarLoan(borrowName: "Mina", loanAmount: 40000);
  carLoan.setLoanAmount();
  HomeLoan homeLoan = HomeLoan(borrowName: "George", loanAmount: 400000);
  homeLoan.setInterest();
  LoanProcessingSystem loanProcessingSystem = LoanProcessingSystem();
  loanProcessingSystem.applyLoan(personalLoan);
  loanProcessingSystem.applyLoan(carLoan);
  loanProcessingSystem.applyLoan(homeLoan);
  print(loanProcessingSystem.calculateInstallments(2));
}
