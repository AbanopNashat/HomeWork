abstract class Loan {
  String? borrowName;
  double? loanAmount;
  double? intersetRate;
  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  final String borrowName;
  final double loanAmount;
  final double intersetRate = 0.1;

  PersonalLoan({required this.borrowName, required this.loanAmount});

  @override
  double calculateMonthlyInstallment(int months) {
    double installment = loanAmount * months * intersetRate;
    return installment;
  }
}

class HomeLoan extends Loan {
  final String borrowName;
  final double loanAmount;
  final double intersetRate = 0.08;

  HomeLoan({required this.borrowName, required this.loanAmount});

  void setInterest() {
    if (this.loanAmount > 500000) {
      this.intersetRate += 0.015;
    }
  }

  @override
  double calculateMonthlyInstallment(int months) {
    double installment = loanAmount * months * intersetRate;
    return installment;
  }
}

class CarLoan extends Loan {
  final String borrowName;
  final double loanAmount;
  final double intersetRate = 0.07;

  CarLoan({required this.borrowName, required this.loanAmount});

  void setLoanAmount() {
    if (this.loanAmount > 50000) {
      this.loanAmount += this.loanAmount * 0.02;
    }
  }

  @override
  double calculateMonthlyInstallment(int months) {
    double installment = loanAmount * months * intersetRate;
    return installment;
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];
  applyLoan(Loan loan) {
    loans.add(loan);
  }

  double calculateInstallments(int months) {
    double monthlyInstallments = 0;
    for (var loan in loans) {
      monthlyInstallments += loan.calculateMonthlyInstallment(months);
    }
    return monthlyInstallments;
  }
}
