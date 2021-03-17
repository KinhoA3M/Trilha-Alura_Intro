//
//  Alerta.swift
//  Curso Alura 1
//
//  Created by Erick Avila Menezes on 17/03/21.
//

import UIKit

class Alerta {
    
    let controller : UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe() {
        let alerta = UIAlertController(title: "Desculpe", message: "não foi possível atualizar a tabela", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alerta.addAction(ok)
        controller.present(alerta, animated: true, completion: nil)
    }
}
