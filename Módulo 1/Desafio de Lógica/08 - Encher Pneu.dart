import 'dart:io';
import 'dart:convert';

void main() {
  // your code goes here
  stdout.write("Informe a pressão desejada\n");
  var valueN = int.parse(stdin.readLineSync(encoding: utf8).toString());
  stdout.write("Informe a pressão da bomba\n");
  var valueM = int.parse(stdin.readLineSync(encoding: utf8).toString());

  final result = valueN - valueM;
  print(result);
}
