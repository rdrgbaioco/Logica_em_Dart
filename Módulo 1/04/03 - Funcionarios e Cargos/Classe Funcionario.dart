

abstract class Funcionario {
  int matricula, horastrabalhadas;
  String nome, sobrenome;
  double salario;


  Funcionario(
      this.matricula,
      this.nome,
      this.sobrenome,
      this.salario,
      this.horastrabalhadas,
      );

  double calcularSalario() {
    if (this.horastrabalhadas > 220) {
      int nmrHorasExtras = this.horastrabalhadas - 220;
      double valorHora = this.salario / 220;
      double valorHorasExtras = valorHora / 2 + valorHora;
      double totalHorasExtras = valorHorasExtras * nmrHorasExtras;
      return this.salario + totalHorasExtras;
    }
    return this.salario;
  }
}