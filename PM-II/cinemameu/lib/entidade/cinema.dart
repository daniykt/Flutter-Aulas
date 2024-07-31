// Define a classe Cinema que representa um cinema com várias propriedades
class Cinema {
  // Declara as propriedades da classe Cinema
  final String nome;
  final double latitude;
  final double longitude;
  final String endereco;
  final String telefone;
  final int salas;

// Construtor da classe Cinema que inicializa todas as propriedades
 Cinema({
    required this.nome, // Parâmetro obrigatório para inicializar a propriedade nome
    required this.latitude, // Parâmetro obrigatório para inicializar a propriedade latitude
    required this.longitude, // Parâmetro obrigatório para inicializar a propriedade longitude
    required this.endereco, // Parâmetro obrigatório para inicializar a propriedade endereco
    required this.telefone, // Parâmetro obrigatório para inicializar a propriedade telefone
    required this.salas, // Parâmetro obrigatório para inicializar a propriedade salas
  });
}
