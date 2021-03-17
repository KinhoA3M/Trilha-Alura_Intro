//
//  Refeicao.swift
//  Curso Alura 1
//
//  Created by Erick Avila Menezes on 15/03/21.
//

import UIKit

class Refeicao: NSObject, NSCoding {
    
    //MARK: - Variaveis
    
    var nome: String
    var felicidade: Int
    var itens: Array<Item> = []

    //MARK: Init
    
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    //MARK: - NSCoding
    
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(felicidade, forKey: "felicidade")
        coder.encode(itens, forKey: "itens")
    }
    
    required init?(coder Decoder: NSCoder) {
        nome = Decoder.decodeObject(forKey: "nome") as! String
        felicidade = Decoder.decodeInteger(forKey: "felicidade")
        itens = Decoder.decodeObject(forKey: "itens") as! Array<Item>
    }
    
    //MARK: - Métodos
    
    func totalDeCalorias() -> Double {
        var total = 0.0

        for item in itens {
            total += item.calorias
        }

        return total
    }
    
    func detalhes() -> String {
        var mensagem = "Felicidade: \(felicidade)"
        
        for item in itens {
            mensagem += ",\(item.nome) - calorias: \(item.calorias)"
        }
        
        return mensagem
    }
}
