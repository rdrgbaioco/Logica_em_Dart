import 'dart:io';

void main() {
  stdout.write("Total de Parcelas: ");
  final parcelasTotal = int.parse(stdin.readLineSync().toString());
  stdout.write("Valor da Parcela: ");
  final valorParcela = double.parse(stdin.readLineSync().toString());
  stdout.write("Parcelas Pagas: ");
  final parcelasPagas = int.parse(stdin.readLineSync().toString());

  final saldoDevedor = (parcelasTotal - parcelasPagas) * valorParcela;
  final totalPagar = parcelasTotal * valorParcela;
  print("Total a Pagar: R\$ ${totalPagar.toStringAsFixed(2)}");
  print("Saldo Devedor: R\$ $saldoDevedor");
} //108