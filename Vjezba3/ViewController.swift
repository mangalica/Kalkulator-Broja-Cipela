//
//  ViewController.swift
//  Vjezba3
//
//  Created by Magdalena Kozomara on 05.04.15.
//  Copyright (c) 2015 Vladimir Kozomara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var konacniBrojCipelaLabel: UILabel!
    
    @IBOutlet weak var unesiteBrojCipelaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Izracun za MUSKE cipele

    @IBAction func brojCipelaZaNuskarceDugmePritisnuto(sender: UIButton) {
        var stringUneseniBrojCipela = unesiteBrojCipelaTextField.text
        var integerUneseniBrojCipela = stringUneseniBrojCipela.toInt()!
        
        let konstantaBrojaCipela = 30
        
        integerUneseniBrojCipela += konstantaBrojaCipela
        
        konacniBrojCipelaLabel.hidden = false
        konacniBrojCipelaLabel.text = "Vas broj cipela prema evropskom mjerenju je \(integerUneseniBrojCipela)."
        unesiteBrojCipelaTextField.text = ""
        unesiteBrojCipelaTextField.resignFirstResponder()
    }
    
    // Izracun za ZENSKE cipele

    @IBAction func brojCipelaZaZeneDugmePritisnuto(sender: UIButton) {
        
        let stringUneseniBrojCipela = unesiteBrojCipelaTextField.text
        var doubleUneseniBrojCipela = Double((stringUneseniBrojCipela as NSString).doubleValue)
        let konstantaZenskogBrojaCipela = 30.5
        
        doubleUneseniBrojCipela += konstantaZenskogBrojaCipela
        
        konacniBrojCipelaLabel.hidden = false
        konacniBrojCipelaLabel.text = "Vas broj cipela prema evropskom mjerenju je \(doubleUneseniBrojCipela)."
        
        unesiteBrojCipelaTextField.text = ""
        unesiteBrojCipelaTextField.resignFirstResponder()
    }
}

