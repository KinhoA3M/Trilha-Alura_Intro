//
//  Item.swift
//  Curso Alura 1
//
//  Created by Erick Avila Menezes on 15/03/21.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
