import 'package:intl/intl.dart';

class DateTimeHelper {
  static formatDate(DateTime datetime) {
    return DateFormat('dd/MM/yyyy').format(datetime);
  }
}
