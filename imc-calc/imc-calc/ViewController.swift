//
//  ViewController.swift
//  imc-calc
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
    
    
    @IBOutlet weak var peso: UITextField!
    

    @IBOutlet weak var altura: UITextField!
    
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func calcula(_ sender: Any) {
        
        let valorPeso :Float! = Float(peso.text!)
        
        let valorAltura :Float! = Float(altura.text!)
        
        let altura = valorAltura * valorAltura
        
        let alturaQuadrado = valorPeso/(pow(altura,2))
        
        let finalzao = valorPeso/alturaQuadrado
        
        let final :String! = String(finalzao.self)
        
        result.text! = final
    }
}


