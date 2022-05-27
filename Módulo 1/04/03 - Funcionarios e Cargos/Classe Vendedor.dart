import 'Classe Funcionario.dart';

class Vendedor extends Funcionario {
  Vendedor(super.matricula, super.nome, super.sobrenome, super.salario, super.horastrabalhadas);


  @override
  double calcularSalario() {
    double salario = super.calcularSalario();
    return salario + (salario * 0.25);
  }
}