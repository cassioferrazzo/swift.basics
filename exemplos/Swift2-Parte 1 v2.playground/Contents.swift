
import UIKit

/*:
 Variáveis e Constantes
 
 - var: permite que o valor seja modificado
 - let: não permite alterações, cria uma constante
*/
// Strings
var greeting = "Olá, bem vindo ao playground!"
let mensagem: String = "Olá novamente!"


// Inteiros
let idade = 24
let maiorIdade: Int = 18

// Float e Double
let sempreDouble = 10.0

let GRAVIDADE_TERRA: Float = 9.78
let PI: Double = 3.141592

// Uma tupla
var coordenada = (4, 80)
var ondeEstou = String("Você está em x:\(coordenada.0) y:\(coordenada.1)")

/*:
 Operadores
 */
var num1: Float = 7.7
var num2: Float = 48.0

var num3 = num1

/*:
 - Aritméticos
 */
num1 + num2     // Soma
num1 - num2     // Subtração
num1 / num2     // Divisão
num1 * num2     // Multiplicação
num2 % num1     // Resto da divisão (módulo)

/*:
 - Lógicos
 */
num1 == num2    // Igual
num1 != num2    // Diferente

num1 > num2     // Maior que
num1 >= num2    // Maior ou igual à

num1 < num2     // Menor que
num1 <= num2    // Menor ou igual à


/*: 
 Tuplas
 
 Consistem em listas simples, não tipadas
 */
let bandas = ("Beatles", "Queen", "The Clash", "The Cure", "Rolling Stones")
print("Era um garoto que como eu, amava os \(bandas.0) e os \(bandas.4)")

var filme = (nome: "Jurassic Park", ano: 1993, director: "Steven Spielbert", IMDB: 8.1)
print("\(filme.nome) estreou em \(filme.1)")

/*:
 Arrays

 Um lista de elementos do mesmo tipo
 */
// Array de Doubles
// - PI, Napier, Áureo
var constantesMatematicas = [3.141592, 2.718281, 1.611803]

// Adicionando um elemento ao array
let numeroDeEuler = 0.577215
constantesMatematicas.append(numeroDeEuler)

// Iterando pelos elementos de um array
for constante in constantesMatematicas {
    print("Constante matematica: \(constante)")
}

// Iterando pelos elementos de um array com indice
for (indice, valor) in constantesMatematicas.enumerate() {
    print("Posição \(indice): constante matematica: \(valor)")
}

// Array contendo elementos de tipos diferentes
var array: [Any] = [1, true, "Swift"]

/*:
 Dicionários

 Estrutura composta sempre por duas informações: chave e valor
 */
// Aqui definimos a chave como um Int e o valor eh uma String
var albunsDoEngenheirosDoHawaii: Dictionary<Int, String> = [
    1990: "O Papa é Pop",
    1986: "Longe Demais das Capitais",
    1995: "Simples de Coração",
    1999: "Tchau Radar!"
]

// Acessando um valor no dicionário
albunsDoEngenheirosDoHawaii[2004] = "Acústico MTV"
albunsDoEngenheirosDoHawaii[2000] = "10.000 Destinos"

// Removendo um valor
albunsDoEngenheirosDoHawaii.removeValueForKey(2000)

// Quantos elementos temos no dicionario?
let howManyAlbuns = albunsDoEngenheirosDoHawaii.count

// O dicionario está vazio?
let isTheDictionaryEmpty = albunsDoEngenheirosDoHawaii.isEmpty

// Iterando pelos elementos de um dicionário
for (ano, album) in albunsDoEngenheirosDoHawaii {
    print("\(album) foi lançado no ano de \(ano)")
}

// Declarando um dicionário
var swiftVersions : [String:Int] = ["Swift 1": 2014, "Swift 2":2015, "Swift 3":2016]

// Acessando um elemento do dicionário
let anoDoSwift1 = swiftVersions["Swift 1"]

// Iterando nesse dicionário
for version in swiftVersions {
    print("\(version.0): \(version.1)")
}
/*: 
 Switch

 Estrutura utilizada para definir uma ação baseado em um valor
*/
var respostaFundamental = 42

switch respostaFundamental {
    case 1..<5: print("valores entre 1 até 4")
    case 6...17: print("valores entre 6 até 17")
    case 42: print("A resposta da vida, universo e tudo mais")
    case 56...60, 90, 100: print("Aleatório")
    default: print("NDA")
}

/*:
 Estruturas de repetição

 Existem algumas sintaxes possíveis para realizar repetições
 
 - For
 */
for numero in 1...7 {
    print(numero)
}

// Essa sintaxe está para ficar obsoleta
// o próprio compilador dá um alerta
for var numero = 1; numero <= 7; numero++ {
    print(numero)
}

// Essa é a forma recomendada
for numero in 1...7 {
    print(numero)
}

for numero in 1..<8 {
    print(numero)
}

/*:
 - While
 */
var numero = 0

while numero <= 6 {
    numero++ // obsoleta
//    numero += 1 // recomendada
    print(numero)
}

/*: 
 - Repeat 
 */
repeat {
    print("Pelo menos uma vez", terminator: ".")
} while false

/*:
 Enum
 */

// Criando um Enum
enum Side: String {
    case L = "Light"
    case D = "Dark"
}

enum Status: Int {
    case Ativo = 0
    case Inativo = 1
    case Bloqueado = 2
}

// Utilizando um Enum
var statusUsuario: Status = Status.Ativo

print(statusUsuario)

switch(statusUsuario) {
case .Ativo:
    print("Usuário ativo! :-)")
case .Inativo:
    print("Atenção! Usuário inativo.")
case .Bloqueado:
    print("Usuário bloqueado :-(")
}

/*:
 Struct
 
 Classes e structs podem armazenar métodos e propriedades
 
 Structs não suportam herança, é mais recomendado utilizar apenas para armazenamento de informações

 */
struct Monitor {
    // Propriedades da struct
    var largura = 0
    var altura = 0
    
    // Propriedade computada
    var resolucao: String {
        return "\(self.altura)x\(self.largura)"
    }
    
    // Inicializador
    init(largura: Int, altura: Int) {
        self.largura = largura
        self.altura = altura
    }
    
    // Métodos da struct
    func quantidadeDePixels() -> Int {
        return altura * largura
    }
}

// Criando uma nova estrutura
var meuMonitor: Monitor = Monitor(largura: 600, altura: 800)

// Propriedades da estrutura
meuMonitor.largura
meuMonitor.altura
meuMonitor.resolucao

// Chamando um método da struct
meuMonitor.quantidadeDePixels()


/*:
 Classes
 
 Aqui entram os conceitos de orientação a objetos.
 
 Atributos e métodos (de instância e de classe), herança, encapsulamento, polimorfismo.
 Temos de tudo!
 
 */
// Nova classe Humano
class Humano {
    // Atributos
    var nome: String
    var idade: Int
    
    // Inicializador
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    // Método
    func falar() -> String {
        return "Olá, meu nome é \(self.nome)."
    }
    
    // Método de classe
    static func isMamifero() -> Bool {
        return true
    }
}

// Herança
class Atleta: Humano {
    // Atributos privados
    private var esporte: String
    
    // Inicializador
    init(nome: String, idade: Int, esporte: String) {
        self.esporte = esporte
        super.init(nome: nome, idade: idade)
    }
    
    // Método do atleta apra praticar esporte
    func praticarEsporte() -> String {
        return "\(self.nome) está praticando \(self.esporte)."
    }
    
    // Sobrescrita do método de falar do Humano
    override func falar() -> String {
        return "Meu nome é \(self.nome) e eu pratico \(self.esporte)."
    }
}

// Instanciado novos objetos
let humaninho = Humano(nome: "Jon", idade: 16)
let atletinha = Atleta(nome: "Maria", idade: 20, esporte: "curling")

// Vamos testar se um Atleta é um Humano
atletinha is Humano

// Os dois podem falar, pois os dois são Humanos
humaninho.falar()
atletinha.falar()

// Mas apenas o Atleta pratica esportes
atletinha.praticarEsporte()
/*:
 Protocolos
 
 - Semelhante ao conceito de interface.
 
 - Uma classe que implementa um protocolo deve implementar os métodos que o protocolo possui
 */

protocol TriAtleta {
    func correr() -> String
    func nadar() -> String
    func pedalar() -> String
}

class Pessoa: TriAtleta {
    // Aqui estão os atributos da classe Pessoa
    let nome: String
    let idade: Int
    var maiorDeIdade: Bool {
        get {
            return self.idade > 18
        }
    }
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    // Agora temos que implementar os métodos do protocolo TriAtleta
    func correr() -> String {
        return "\(self.nome): Estou correndo!"
    }
    
    func nadar() -> String {
        return "\(self.nome): Estou nadando!"
    }
    
    func pedalar() -> String {
        return String("\(self.nome): Estou pedalando!")
    }
}

// Vamos testar agora
// Criamos uma função que recebe uma pessoa pra disputar o triatlo
func iniciarTriatlo(pessoa: Pessoa) {
    pessoa.correr()
    pessoa.nadar()
    pessoa.pedalar()
}

// Instaciamos um objeto da classe Pessoa
let tiago: Pessoa = Pessoa(nome: "Tiago", idade: 24)

// Iniciamos o triatlo com essa pessoa
iniciarTriatlo(tiago)

/*:
 - callout(Exercicio): Vamos testar o que aprendemos até aqui. Modifique as classes abaixo de forma que elas implementem o protocolo Veiculo.
 */
protocol Veiculo {
    var velocidadeMaxima: Int { get set }
    var isMotorLigado: Bool { get set }
    
    func ligar()
    func mover()
    func desligar()
}

class Carro: Veiculo {
    
    var velocidadeMaxima: Int
    var isMotorLigado: Bool

    init (velocidadeMaxima: Int, isMotorLigado: Bool){
        self.isMotorLigado = isMotorLigado
        self.velocidadeMaxima = velocidadeMaxima
    }
    
    func ligar(){
        self.isMotorLigado = true
        print("Carro ligado.")
        
    }
    func mover(){
        if(self.isMotorLigado){
            print("Carro em movimento: \(self.velocidadeMaxima) Km\\h")
        }else{
            print("N~ao 'e poss'ivel movimentar um carro desligado.");
        }
        
    }
    func desligar(){
        self.isMotorLigado = false
        print("Carro desligado.")
    }
}

class Barco: Veiculo {

    var velocidadeMaxima: Int
    var isMotorLigado: Bool
    
    init (velocidadeMaxima: Int, isMotorLigado: Bool){
        self.isMotorLigado = isMotorLigado
        self.velocidadeMaxima = velocidadeMaxima
    }
    
    func ligar(){
        self.isMotorLigado = true
        print("Barco ligado.")
        
    }
    func mover(){
        if(self.isMotorLigado){
            print("Barco em movimento: : \(self.velocidadeMaxima) N'os")
        }else{
            print("N~ao 'e poss'ivel movimentar um barco desligado.");
        }
            
    }
    func desligar(){
        self.isMotorLigado = false
        print("Barco desligado.")
    }
}

class Helicoptero: Veiculo {
    
    var velocidadeMaxima: Int
    var isMotorLigado: Bool
    
    init (velocidadeMaxima: Int, isMotorLigado: Bool){
        self.isMotorLigado = isMotorLigado
        self.velocidadeMaxima = velocidadeMaxima
    }
    
    func ligar(){
        self.isMotorLigado = true
        print("Helicoptero ligado")
        
    }
    func mover(){
        if(self.isMotorLigado){
            print("Helicoptero em movimento: \(self.velocidadeMaxima) Km\\h")
        }else{
            print("N~ao 'e poss'ivel movimentar um helic'optero desligado.");
        }
    
    }
    func desligar(){
        self.isMotorLigado = false
        print("Helicoptero desligado")
    }
}

let mustang: Carro = Carro(velocidadeMaxima: 300, isMotorLigado: false)
mustang.ligar()
mustang.velocidadeMaxima = 100
mustang.mover()
mustang.desligar()

var barquinho: Barco = Barco(velocidadeMaxima: 60, isMotorLigado: true)
barquinho.mover()
barquinho.desligar()

let helicoptero: Helicoptero = Helicoptero(velocidadeMaxima: 400, isMotorLigado: false)
helicoptero.mover()

