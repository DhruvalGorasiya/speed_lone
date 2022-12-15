import 'package:intl/intl.dart';

String? birthDateValidator(String value) {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy');
  final String formatted = formatter.format(now);
  String str1 = value;
  List<String> str2 = str1.split('/');
  print(str2.length);
  if(str2.length != 3){
    return 'Please Enter A Your BirthDate In Valid Format';
  }
  String day = str2.length > 1 ? str2[0] : '';
  String month = str2.isNotEmpty ? str2[1] : '';
  String year = str2.length > 2 ? str2[2] : '';
  if (value.isEmpty) {
    return 'BirthDate is Empty';
  } else if (int.parse(month) > 13) {
    return 'Please Enter A Valid Month';
  } else if (int.parse(day) > 32) {
    return 'Please Enter A Valid Day';
  } else if ((int.parse(year) > int.parse(formatted))) {
    return 'Please Enter A Valid Year';
  } else if ((int.parse(year) < 1920)) {
    return 'Please Enter A Valid Year';
  }
  return null;
}
