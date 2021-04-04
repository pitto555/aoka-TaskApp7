//
//  GreenViewController.swift
//  aoka-TaskApp7
//
//  Created by aoka on 2021/04/04.
//

import UIKit

class GreenViewController: UIViewController {

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
        
        let answer = number - number2
        
        answerLabel.text = "\(answer)"
        
        textField.endEditing(true)
        textField2.endEditing(true)
    }
}
