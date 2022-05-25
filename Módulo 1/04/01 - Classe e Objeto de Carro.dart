
class Carro {
  String fabricante;
  String modelo;
  String cor;
  String combustivel;
  double potencia;

  // Construtor
  Carro({required this.fabricante, required this.modelo, required this.cor, required this.combustivel, required this.potencia}) {
  }

  // ToString
  @override
  String toString() {
    return 'Carro: $modelo, $fabricante, $cor, $combustivel, $potencia';
  }
}

void main() {
  Carro carro1 = Carro(fabricante: 'Ford', modelo: 'Fiesta', cor: 'Branco', combustivel: 'flex', potencia: 1.0);
  Carro carro2 = Carro(fabricante: 'Toyota', modelo: 'SW4', cor: 'Preto', combustivel: 'Gasolina', potencia: 3.0);
  Carro carro3 = Carro(fabricante: 'VolksWagen', modelo: 'Polo', cor: 'Azul', combustivel: 'Flex', potencia: 1.6);
  print("Carros\n");
  print("Fabricante: ${carro1.fabricante}\nCarro: ${carro1.modelo}\nCor: ${carro1.cor}\nCombustível: ${carro1.combustivel}\nPotência: ${carro1.potencia}\n");
  print("Fabricante: ${carro2.fabricante}\nCarro: ${carro2.modelo}\nCor: ${carro2.cor}\nCombustível: ${carro2.combustivel}\nPotência: ${carro2.potencia}\n");
  print("Fabricante: ${carro3.fabricante}\nCarro: ${carro3.modelo}\nCor: ${carro3.cor}\nCombustível: ${carro3.combustivel}\nPotência: ${carro3.potencia}\n");
}