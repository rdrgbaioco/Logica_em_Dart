import 'Classe Caixa.dart';
import 'Classe Gerente.dart';
import 'Classe Vendedor.dart';

void main() {

  Caixa caixa =  Caixa(1579, "Ana", "Oliveira", 1212, 230);
  Vendedor vendedor = Vendedor(1601, "João", "Silva", 1212, 230);
  Gerente gerente = Gerente(1603, "Maria", "Souza", 1212, 230);

  print("\nMatricula: ${caixa.matricula}");
  print("Nome: ${caixa.nome}");
  print("Sobrenome: ${caixa.sobrenome}");
  print("Horas Trabalhadas: ${caixa.horastrabalhadas}");
  print("Salário: ${caixa.calcularSalario().toStringAsFixed(2)}");

  print("\nMatricula: ${vendedor.matricula}");
  print("Nome: ${vendedor.nome}");
  print("Sobrenome: ${vendedor.sobrenome}");
  print("Horas Trabalhadas: ${vendedor.horastrabalhadas}");
  print("Salário: ${vendedor.calcularSalario().toStringAsFixed(2)}");

  print("\nMatricula: ${gerente.matricula}");
  print("Nome: ${gerente.nome}");
  print("Sobrenome: ${gerente.sobrenome}");
  print("Horas Trabalhadas: ${gerente.horastrabalhadas}");
  print("Salário: ${gerente.calcularSalario().toStringAsFixed(2)}");
}