
void main() {
  String numeros = "";
  for (var i = 1; i <= 48; i++) {
    if (i % 2 == 0) {
      numeros = numeros == "" ? numeros + "$i" : numeros + ", $i";
    }
    if (i == 48) {
      numeros = numeros + ".";
    }
  }
  print("$numeros");
}