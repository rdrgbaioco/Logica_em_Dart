import 'Classe Funcionario.dart';

class Gerente extends Funcionario {
  Gerente(super.matricula, super.nome, super.sobrenome, super.salario, super.horastrabalhadas);

  @override
  double calcularSalario() {
    double salario = super.calcularSalario();
    return salario + (salario * 0.35);
  }
}
