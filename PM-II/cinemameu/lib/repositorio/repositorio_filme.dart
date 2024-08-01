import 'package:cinemameu/entidade/filme.dart';


class RepositorioFilme {

  List<Filme> select() {

    return <Filme>[

      Filme(
      titulo: "Deadpool & Wolverine",
        poster: "https://midianinja.org/wp-content/uploads/2024/07/Deadpool-Wolverine-a-Marvel-contra-ataca-nos-cine0326311000202407251909.jpg",
        sinopse: "Wolverine está se recuperando quando cruza seu caminho com Deadpool. Juntos, eles formam uma equipe e enfrentam um inimigo em comum.",
        duracao: 156,
        classificacao: "16+",
      ),
      Filme(
        titulo: "Corra!", 
        poster: "https://www.culturaerealidade.com.br/wp-content/uploads/2020/11/Corra-1024x577-1.jpg", 
        sinopse: "Chris é um jovem fotógrafo negro que está prestes a conhecer os pais de Rose, sua namorada caucasiana. Na luxuosa propriedade dos pais dela, Chris percebe que a família esconde algo muito perturbador.", 
        duracao: 210, 
        classificacao: "16+",
      ),
    ];
  }
}