import 'dart:async';
import 'dart:io';
import 'dart:convert';

void caixa(int value) {
  // Escreva seu programa a partir daqui
  int cem  =  0;
  int cinquenta = 0;
  int vinte = 0;
  int dez = 0;
  int cinco = 0;
  int dois = 0;
  int um = 0;
  String resultado = "";
  String espaco = "";


  if (value >= 100) {
    cem = value ~/ 100;
    value = value % 100;
    resultado = resultado + "$cem de 100";
  }
  if (value >= 50) {
    cinquenta = value ~/ 50;
    value = value %= 50;
    espaco = resultado == "" ? "" : ", ";
    resultado = resultado + "$espaco$cinquenta de 50";
  }
  if (value >= 20) {
    vinte = value ~/ 20;
    value = value %= 20;
    espaco = resultado == "" ? "" : ", ";
    resultado = resultado + "$espaco$vinte de 20";
  }
  if (value >= 10) {
    dez = value ~/ 10;
    value = value %= 10;
    espaco = resultado == "" ? "" : ", ";
    resultado = resultado + "$espaco$dez de 10";
  }

  final cincoTemp = value ~/ 5;
  if (cincoTemp > 0) {
    cinco += cincoTemp;
    value = value %= 5;
  }

  if (value % 2 != 0) {
    cinco--;
    value = value += 5;
  }

  if (cinco > 0) {
    espaco = resultado == "" ? "" : ", ";
    resultado = resultado + "$espaco$cinco de 5";
  }
  if (value >= 2) {
    dois = value ~/ 2;
    value = value %= 2;
    espaco = resultado == "" ? "" : ", ";
    resultado = resultado + "$espaco$dois de 2";
  }

  print(resultado);
}

// Nao deletar
void main() => readLine().listen(processLine);

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) => caixa(int.parse(line.split(' ').first));