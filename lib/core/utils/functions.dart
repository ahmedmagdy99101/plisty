

import 'package:intl/intl.dart';

class AllFunctions {

  // numbers format
  static String formatNumber(num number) {
    if (number == number.toInt()) {
      return NumberFormat('#,###').format(number);
    } else {
      return NumberFormat('#,###.##').format(number);
    }
  }
  static String formatDoubleNumbers(double value) {
    NumberFormat formatter = NumberFormat("0.##");
    return formatter.format(value);
  }

}


