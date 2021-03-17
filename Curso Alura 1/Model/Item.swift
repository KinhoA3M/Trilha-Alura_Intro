//
//  Item.swift
//  Curso Alura 1
//
//  Created by Erick Avila Menezes on 15/03/21.
//

import UIKit

class Item: NSObject, NSCoding {

    
    //MARK: Atributos
    
    let nome: String
    let calorias: Double
    
    //MARK: - Init
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
    
    //MARK: - NSCoding
    
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(calorias, forKey: "calorias")
    }
    
    required init?(coder Decoder: NSCoder) {
        nome = Decoder.decodeObject(forKey: "nome") as! String
        calorias = Decoder.decodeDouble(forKey: "calorias")
    }
}
