import 'dart:math';

import 'package:intl/intl.dart';

class TransactionData {
  static List<Map> transaction = [];

  static addTransaction({
    required List items,
  }) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd-MM-yyyy | kk:mm').format(now);

    transaction.add({
      'order_id': 'FS00001${Random().nextInt(1000)}',
      'order_date': '${formattedDate}',
      'status': 'In Progress',
      'items': items.toList(),
    });
  }
}
