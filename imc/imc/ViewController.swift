//
//  ViewController.swift
//  imc
//
//  Created by Student on 06/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var pesoUser: UITextField!
    @IBOutlet weak var alturaUser: UITextField!
    @IBOutlet weak var resultadoImc: UILabel!
    
    
    @IBAction func calculateImc(_ sender: Any) {
        
        let valorPeso :Float! = Float(pesoUser.text!)
        let valorAltura :Float! = Float(alturaUser.text!)
        
        let alturaMultiplicada :Float! = Float(pow(valorAltura,2))
        
        let resultImc :Float! = Float(valorPeso/alturaMultiplicada)
        
        let rounded :Float! = Float(round(resultImc))
        
        resultadoImc.text! = String(format: "%.10f", resultImc)
        

        
    }
    
}
