import 'dart:io';

void main() {
  stdout.write("Iniciando Contagens:");

  for (var i = 1; i <= 200; i += 2) {
    print("$i * $i" + " = " + (i * i).toString());
    if (i == 199) {
      print("Fim da contagem");
    }
  }
}