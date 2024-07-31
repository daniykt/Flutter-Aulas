import 'package:cinemameu/entidade/cinema.dart';

// Define uma classe chamada 'RepositorioCinema' que atua como um repositório de cinemas
class RepositorioCinema {
  // Método 'select' que retorna uma lista de objetos 'Cinema'
  List<Cinema> select() {
    // Retorna uma lista de cinemas predefinidos
    return <Cinema>[
      // Instância do primeiro cinema com suas propriedades definidas
      Cinema(
        nome: "Cine Teatro Matão", 
        latitude: -21.6015644, 
        longitude: -48.3688865, 
        endereco: "Rua João Pessoa, 842 - Centro", 
        telefone: "1633847777", 
        salas: 2, 
      ),
      // Instância do segundo cinema com suas propriedades definidas
      Cinema(
        nome: "Cinemec Taquaritinga", 
        latitude: -21.4057353, 
        longitude: -48.5079264, 
        endereco: "Rua da República, 929", 
        telefone: "1633847778",
        salas: 1, 
      ),
    ];
  }
}