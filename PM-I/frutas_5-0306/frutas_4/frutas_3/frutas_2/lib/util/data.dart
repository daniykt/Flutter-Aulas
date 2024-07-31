import 'package:intl/intl.dart';

final _formatadorData = DateFormat("dd/MM/yyyy hh:mm:ss");

String formataData(DateTime Value) {
  return _formatadorData.format(Value);
}
