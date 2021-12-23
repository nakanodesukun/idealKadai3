//
//  ViewController.swift
//  Understading
//
//  Created by 中野翔太 on 2021/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var firstLabel: UILabel!
    @IBOutlet private weak var secondLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!
    
    
    
    @IBAction func resultButton(_ sender: Any) {
        guard let num1 = firstTextField.text.flatMap({ Int($0) }), let num2 = secondTextField.text.flatMap({ Int($0) }) else { resultLabel.text = "数値を入力して下さい"
            return
        }
//        三項演算子で判別
        let leftNum = leftSwitch.isOn ? -num1: num2
        let rightNum = rightSwitch.isOn ? -num2 : num2
        
        firstLabel.text = String(leftNum)
        secondLabel.text = String(rightNum)
        resultLabel.text = String(leftNum + rightNum)
        
    }
  
}
