//
//  RedViewController.swift
//  aoka-TaskApp7
//
//  Created by aoka on 2021/04/04.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    @IBOutlet private weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }
    
    @IBAction func answerButton(_ sender: Any) {
        let number = Int(textField.text!) ?? 0
        let number2 = Int(textField2.text!) ?? 0
        
        answerLabel.text = String(number + number2)
        
        textField.endEditing(true)
        textField2.endEditing(true)
    }
}
