import 'dart:io';

void main() {
  stdout.write("Informe o Ano: ");
  final ano = int.parse(stdin.readLineSync().toString());

  if (ano % 4 == 0) {
    if (ano % 100 == 0) {
      if (ano % 400 == 0) {
        print("O ano $ano é bissexto");
      } else {
        print("O ano $ano não é bissexto");
      }
    } else {
      print("O ano $ano é bissexto");
    }
  } else {
    print("O ano $ano não é bissexto");
  }
}