//
//  ViewController.swift
//  Curso Alura 1
//
//  Created by Erick Avila Menezes on 11/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet weak var felicidadeTextField: UITextField!

    @IBAction func adicionar(_ sender: Any) {

        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }

        guard let felicidadeDaRefeicao = felicidadeTextField.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }

        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)

        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
    }
}
