//
//  ViewController.swift
//  dados
//
//  Created by Bryan Barreto on 12/08/20.
//  Copyright © 2020 Bryan Barreto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* Array com todas as imagens dos dados*/
    let diceArray:Array<String> = ["one","two","three","four","five","six","zero"]
    
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       /* Codigo que executa quando a tela é carregada */
        dice1ImageView.image = #imageLiteral(resourceName: "zero")
        dice2ImageView.image = #imageLiteral(resourceName: "zero")
    }

    @IBAction func rollDiceButtonPress(_ sender: UIButton) {
        /* funcao de click do botao */
        dice1ImageView.image = UIImage(named: diceArray[randomNumber()])
        dice2ImageView.image = UIImage(named: diceArray[randomNumber()])
    }
    
    func randomNumber()->Int{
        return Int.random(in: 0...5)
    }
    
}

