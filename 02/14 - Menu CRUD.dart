import 'dart:io';

void main() {
  print("\n----------MENU CRUD (CREATE, READ, UPDATE, DELETE)----------\n");
  List<String> listaUsuarios = [];
  bool sair = false;

  do {
    var selecionado;
    print("Digite C para criar um usuário,");
    print("Digite R para ler os usuários,");
    print("Digite U para atualizar um usuário,");
    print("Digite D para deletar um usuário ou S para sair:");
    stdout.write("Informe a Opção: ");
    stdout.write("Informe a Opção: ");
    selecionado = stdin.readLineSync().toString().toUpperCase();

    if (selecionado == "C" || selecionado == "c") {
      stdout.write("Informe seu NOME: ");
      final nome = stdin.readLineSync().toString();
      stdout.write("Informe sua IDADE: ");
      final idade = int.parse(stdin.readLineSync().toString());
      listaUsuarios.add("Usuário: $nome, Idade: $idade");
    } else if (selecionado == "R" || selecionado == "r") {
      print("\n----------USUÁRIOS----------\n");
      for (var i = 0; i < listaUsuarios.length; i++) {
        print("${i + 1} - ${listaUsuarios[i]}");
      }
    } else if (selecionado == "U" || selecionado == "u") {
      stdout.write("Informe o número do usuário que deseja atualizar: ");
      final numero = int.parse(stdin.readLineSync().toString());
      stdout.write("Informe o novo nome: ");
      final nome = stdin.readLineSync().toString();
      stdout.write("Informe a nova idade: ");
      final idade = int.parse(stdin.readLineSync().toString());
      listaUsuarios[numero - 1] = "Usuário: $nome, Idade: $idade";
    } else if (selecionado == "D" || selecionado == "d") {
      stdout.write("Informe o número do usuário que deseja deletar: ");
      final numero = int.parse(stdin.readLineSync().toString());
      listaUsuarios.removeAt(numero - 1);
    } else if (selecionado == "S" || selecionado == "s") {
      print("\n-----------SAINDO-----------\n");
      sair = true;
    } else {
      print("\n----------OPÇÃO INVÁLIDA----------\n");
    }
  } while (sair == false);
}