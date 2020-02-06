//
//  ViewController.swift
//  prototype
//
//  Created by Student on 05/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var campoTexto: UITextField!
    
    
    @IBOutlet weak var titulo: UILabel!
    

    @IBAction func trocarNome(_ sender: Any) {
        
        titulo.text! = campoTexto.text!
        campoTexto.text! = ""
        
    }
    
}

