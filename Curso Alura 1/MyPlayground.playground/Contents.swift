import UIKit

// Criar a Primeira Refeição

let nome: String = "Macarrão"
let felicidade: String = "5"

//Criar Segunda Refeição

let nome2:  String = "Churros"
let felicidade2: String = "4"

//----------------

// Criar Classe que agrupe as Características

class Refeicao {
    var nome: String = "Macarrão"
    let felicidade: String = "5"
}

//Instanciando a classe

let refeicao: Refeicao = Refeicao()

refeicao.nome = "Arroz"

refeicao.nome = "Feijão"

print(refeicao.nome)

class Refeicao2 {
    var nome: String = "Churros"
    var felicidade: String = "4"
}

var refeicao2 = Refeicao2()

print(refeicao2.nome)


