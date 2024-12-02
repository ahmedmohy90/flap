
class Formatter {
  static double parsePrice(String price) {
    return double.parse(price.replaceAll(RegExp(r'[^0-9.]'), ''));
  }

  static DateTime parseDate(String date) {
    return DateTime.parse(date);
  }
}
