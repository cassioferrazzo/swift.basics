
import UIKit

/*:
 
 Agora vamos exercitar nossas habilidades com Programação Orientada a Objetos.
 
 Juntos vamos construir uma estrutura de artistas para nosso futuro aplicativo de músicas. Cada artista terá seus posts na rede social e seus albuns, com musicas, para as pessoas conseguirem ouvir.
 
 As classes necessárias serão:

 - Artista
 - Post
 - Album
 - Musica
 
 - callout(Exercício 1): Crie a classe Post de forma que ela tenha os seguintes atributos:
    - Descricao
    - Hora
    - Numero de likes
    - Numero de comentarios
    - Numero de compartilhamentos
    - Nome da imagem
 
 */
class Post {
    let descricao: String
    let dataHora: NSDate
    var numeroLikes: Int
    var numeroComentarios: Int
    var numeroCompartilhamentos: Int
    let nomeImagem: String
    
    init(descricao: String, dataHora: NSDate, nomeImagem: String){
        self.descricao = descricao
        self.dataHora = dataHora
        self.numeroLikes = 0
        self.numeroComentarios = 0
        self.numeroCompartilhamentos = 0
        self.nomeImagem = nomeImagem
    }
}




/*:
 - callout(Exercício 2): Crie a classe Musica de forma que ela tenha os seguintes atributos:
    - Titulo
    - Posição
    - Duração em segundos
 */
class Musica{
    let titulo: String
    let posicao: Int
    let duracaoSegundos: Int
    
    init(titulo:String, posicao: Int, duracaoSegundos: Int){
        self.titulo = titulo
        self.posicao = posicao
        self.duracaoSegundos = duracaoSegundos
    }
}





/*:
 - callout(Exercício 3): Crie a classe Album de forma que ela tenha os seguintes atributos:
    - Titulo
    - Nome da imagem da capa do album
    - As musicas do album
 */
class Album{
    let titulo: String
    let nomeImagemCapa: String
    let musicas: [Musica]
    
    init (titulo: String, nomeImagemCapa: String, musicas: [Musica]){
        
        self.titulo = titulo
        self.nomeImagemCapa = nomeImagemCapa
        self.musicas = musicas
    }
}



/*:
 - callout(Exercício 4): Crie a classe Artista de forma que ela tenha os seguintes atributos:
 - Nome
 - Lista de Posts
 - Lista de Albuns
 
 */
class Artista{
    
    let nome: String
    var posts: [Post]?
    var albuns: [Album]?
    
    init (nome: String){
        self.nome = nome
        self.posts = nil
        self.albuns = nil
    }
}


/*:
 
 Boas práticas
 
 - Lembre-se, o nome de CLASSES sempre começa com letra MAIUSCULA.
 - O nome dos PROPRIEDADES e MÉTODOS sempre começam com letra MINÚSCULA
 - Use CAMEL CASE (tiagoGomesPereira) e não SNAKE CASE (tiago_gomes_pereira)
 - MÉTODOS e PROPRIEDADES NÃO devem ter o mesmo NOME
 
 */
