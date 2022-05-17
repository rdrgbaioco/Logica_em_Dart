import 'dart:io';

class JogadorModel {
  String nome;
  int saques;
  int bloqueios;
  int ataques;
  int saquesacertados;
  int bloqueiosacertados;
  int ataquesacertados;

  JogadorModel({
    required this.nome,
    required this.saques,
    required this.bloqueios,
    required this.ataques,
    required this.saquesacertados,
    required this.bloqueiosacertados,
    required this.ataquesacertados,
  });

  factory JogadorModel.fromMap(Map<String, dynamic> json) {
    return JogadorModel(
      nome: json['nome'],
      saques: json['saques'],
      bloqueios: json['bloqueios'],
      ataques: json['ataques'],
      saquesacertados: json['saquesacertados'],
      bloqueiosacertados: json['bloqueiosacertados'],
      ataquesacertados: json['ataquesacertados'],
    );
  }

  Map<String, dynamic> toMap() =>
      {
        'nome': nome,
        'saques': saques,
        'bloqueios': bloqueios,
        'ataques': ataques,
        'saquesacertados': saquesacertados,
        'bloqueiosacertados': bloqueiosacertados,
        'ataquesacertados': ataquesacertados,
      };

}

void main() {
  print("\n----------------ESTATISTICAS DO TIME----------------\n");
  late List<JogadorModel> lista = [];
  bool sair = false;

  do {
    var selecionado;
    print("Digite 1 para Criar Jogador,");
    print("Digite 2 para as Estatisticas dos Jogadores,");
    print("Digite 3 para as Estatisticas Gerais do Time,");
    print("Digite 'Sair' para finalizar...");
    stdout.write("Informe a Opção: ");
    selecionado = stdin.readLineSync().toString().toUpperCase();

    if (selecionado == "1") {
      stdout.write("Informe o Nome do Jogador: ");
      final nome = stdin.readLineSync().toString();
      stdout.write("Informe a Quantidade de Saques: ");
      final saquesTotal = int.parse(stdin.readLineSync().toString());
      stdout.write("Agora os Saques com Sucesso: ");
      final saquesAcerto = int.parse(stdin.readLineSync().toString());
      stdout.write("Informe a Quantidade de Bloqueios: ");
      final bloqTotal = int.parse(stdin.readLineSync().toString());
      stdout.write("Agora os Bloqueios com Sucesso: ");
      final bloqAcerto = int.parse(stdin.readLineSync().toString());
      stdout.write("Informe a Quantidade de Ataques: ");
      final ataqTotal = int.parse(stdin.readLineSync().toString());
      stdout.write("Agora os Ataques com Sucesso: ");
      final ataqAcerto = int.parse(stdin.readLineSync().toString());

      lista.add(JogadorModel(
          nome: nome,
          saques: saquesTotal,
          bloqueios: bloqTotal,
          ataques: ataqTotal,
          saquesacertados: saquesAcerto,
          bloqueiosacertados: bloqAcerto,
          ataquesacertados: ataqAcerto,
      ));

    } else if (selecionado == "2") {
      print("----------------ESTATISTICAS----------------");
      for (var i = 0; i < lista.length; i++) {
        var saqueporcent = lista[i].saquesacertados * 100 / lista[i].saques;
        var bloqporcent = lista[i].bloqueiosacertados * 100 / lista[i].bloqueios;
        var ataqporcent = lista[i].ataquesacertados * 100 / lista[i].ataques;
        print("Nome: ${lista[i].nome}");
        print("Saque: ${lista[i].saquesacertados}/${lista[i].saques} ou seja (${saqueporcent.toStringAsFixed(2)}%)");
        print("Bloqueio: ${lista[i].bloqueiosacertados}/${lista[i].bloqueios} ou seja (${bloqporcent.toStringAsFixed(2)}%)");
        print("Ataque: ${lista[i].ataquesacertados}/${lista[i].ataques} ou seja (${ataqporcent.toStringAsFixed(2)}%)");
      }
    } else if (selecionado == "3") {
      print("----------------ESTATISTICAS GERAIS----------------");
      var saqueTotal = 0;
      var bloqTotal = 0;
      var ataqTotal = 0;
      var saqueAcertoTotal = 0;
      var bloqAcertoTotal = 0;
      var ataqAcertoTotal = 0;
      for (var i = 0; i < lista.length; i++) {
        saqueTotal += lista[i].saques;
        bloqTotal += lista[i].bloqueios;
        ataqTotal += lista[i].ataques;
        saqueAcertoTotal += lista[i].saquesacertados;
        bloqAcertoTotal += lista[i].bloqueiosacertados;
        ataqAcertoTotal += lista[i].ataquesacertados;
      }
      var saqueporcent = saqueAcertoTotal * 100 / saqueTotal;
      var bloqporcent = bloqAcertoTotal * 100 / bloqTotal;
      var ataqporcent = ataqAcertoTotal * 100 / ataqTotal;
      print("Saque: ${saqueAcertoTotal}/${saqueTotal} ou seja (${saqueporcent.toStringAsFixed(2)}%)");
      print("Bloqueio: ${bloqAcertoTotal}/${bloqTotal} ou seja (${bloqporcent.toStringAsFixed(2)}%)");
      print("Ataque: ${ataqAcertoTotal}/${ataqTotal} ou seja (${ataqporcent.toStringAsFixed(2)}%)");

    } else {
      print("\n----------OPÇÃO INVÁLIDA----------\n");
    }
  } while (sair == false);
}