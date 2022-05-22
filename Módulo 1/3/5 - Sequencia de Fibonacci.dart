import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write("Informe o Número: ");
  final valor = int.parse(stdin.readLineSync(encoding: utf8).toString());
  String sequencia = "";

  int fib(int valor) {
    if (valor < 2) {
      return valor;
    }
    return fib(valor - 1) + fib(valor - 2);
  }

  for (int i = 1; i <= valor; i++) {
    if (fib(i) <= valor) {
      sequencia = sequencia == "" ? sequencia + "${fib(i)}" : sequencia + ", ${fib(i)}";
      if (i == valor) {
        sequencia = sequencia + ".";
      }
    }
  }
  print("Sequência de Fibonacci: $sequencia");
}


/////////////////////

// void main() {
//   stdout.write("Informe o Número: ");
//   final valor = int.parse(stdin.readLineSync(encoding: utf8).toString());
//   String sequencia = "";
//
//   int fib(int valor) {
//     if (valor < 2) {
//       return valor;
//     }
//     return fib(valor - 1) + fib(valor - 2);
//   }
//
//   for (int i = 1; i <= valor; i++) {
//     if (fib(i) <= valor) {
//       sequencia = sequencia == "" ? sequencia + "${fib(i)}" : sequencia + ", ${fib(i)}";
//       if (i == valor) {
//         sequencia = sequencia + ".";
//       }
//     }
//   }
//   print("Sequência de Fibonacci: $sequencia");
// }