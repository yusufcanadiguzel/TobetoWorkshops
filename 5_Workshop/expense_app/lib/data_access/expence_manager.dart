import 'package:expense_app/data/expence_bank.dart';

import '../models/expence.dart';

class ExpenseManager {
  ExpenceBank _expenceBank = ExpenceBank();

  List<Expence> getExpances() {
    var result = _expenceBank.expences;

    return result;
  }
}
