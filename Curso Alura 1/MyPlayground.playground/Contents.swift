import UIKit

class Refeicao {
    var nome: String?
    var felicidade: String?
}

//Instanciando a classe

let refeicao = Refeicao()
refeicao.nome = "Macarrao"

 //Cuidado => forced unwrap
//print(refeicao.nome!)

if refeicao.nome != nil {
    print(refeicao.nome!)
}

//Boas práticas para extrair valores opcionais:

if let nome = refeicao.nome {
    print(nome)
}

//guard let (pode chamar variavel de fora da condicional

func exibeNomeDaRefeicao() {
    if let nome = refeicao.nome {
        print(nome)
    }
    
    guard let nome = refeicao.nome else {
        print("Sem Valor")
        return
    }
    
    print(nome)
}

exibeNomeDaRefeicao()

let numero = Int("5")

if let n = numero {
    print(n)
} else {
    print("Erro ao converter para int")
}



