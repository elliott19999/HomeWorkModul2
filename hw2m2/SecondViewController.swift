//
//  SecondViewController.swift
//  hw2m2
//
//  Created by Мадина Валиева on 12.11.2023.
//

import UIKit

class SecondViewController: UIViewController {
        
    
    var delegate: ViewControllerDelegate?
    
        var viewLabel4: UILabel = {
        let label4 = UILabel()
        label4.frame = CGRect(x: 40, y: 100, width: 180, height: 60)
        label4.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label4.font = UIFont.boldSystemFont(ofSize: 24)
        label4.text = "Ввести данные"
        return label4
    }()
        lazy var textField: UITextField = {
        let field = UITextField (frame: CGRect(x: 45, y: 200, width: 120, height: 50))
        field.placeholder = "первое число"
        field.backgroundColor = .init(red: 0.953, green: 0.953, blue: 0.953, alpha: 1)
        field.tag = 1
        return field
    }()
    lazy var textField2: UITextField = {
    let field2 = UITextField (frame: CGRect(x: 190, y: 200, width: 120, height: 50))
    field2.placeholder = "второе число"
    field2.backgroundColor = .init(red: 0.953, green: 0.953, blue: 0.953, alpha: 1)
    field2.tag = 2
    return field2
    }()
    
    lazy var buttonPlus: UIButton = {
        let btnPlus = UIButton(frame: CGRect(x: 48, y: 300, width: 50, height: 55), primaryAction: btnActionPlus)
        btnPlus.setTitle("+", for: .normal)
        btnPlus.setTitleColor(.white, for: .normal)
        btnPlus.layer.backgroundColor = UIColor(red: 0, green: 0.52, blue: 1, alpha: 1).cgColor
        return btnPlus
    }()
    
    lazy var btnActionPlus = UIAction { _ in
        if let textFromFirstTextField = self.textField.text, let textFromSecondTextField = self.textField2.text {
            if let value1 = Int(textFromFirstTextField), let value2 = Int(textFromSecondTextField) {
              
                let res = value1 + value2
                self.delegate?.setTextAnalise(number1: "\(value1) +", number2: "\(value2)", result: "=  \(res)")
            }
        }
    }
    lazy var buttonMinus:UIButton = {
        let btnMinus = UIButton(frame: CGRect(x: 120, y: 300, width: 50, height: 55), primaryAction: btnActionMinus)
        btnMinus.setTitle("-", for: .normal)
        btnMinus.setTitleColor(.white, for: .normal)
        btnMinus.layer.backgroundColor = UIColor(red: 0, green: 0.52, blue: 1, alpha: 1).cgColor
        return btnMinus
    }()
    lazy var btnActionMinus = UIAction { _ in
        if let textFromFirstTextField = self.textField.text, let textFromSecondTextField = self.textField2.text {
            if let value1 = Int(textFromFirstTextField), let value2 = Int(textFromSecondTextField) {
    
                let res = value1 - value2
                self.delegate?.setTextAnalise(number1: "\(value1) -", number2: "\(value2)", result: "=\(res)")
                
            }
        }
    }
    lazy var buttonDivision:UIButton = {
        let btnDivision = UIButton(frame: CGRect(x: 190, y: 300, width: 50, height: 55), primaryAction: btnActionDivision)
        btnDivision.setTitle("/", for: .normal)
        btnDivision.setTitleColor(.white, for: .normal)
        btnDivision.layer.backgroundColor = UIColor(red: 0, green: 0.52, blue: 1, alpha: 1).cgColor
        return btnDivision
    }()
    lazy var btnActionDivision = UIAction { _ in
        if let textFromFirstTextField = self.textField.text, let textFromSecondTextField = self.textField2.text {
            if let value1 = Int(textFromFirstTextField), let value2 = Int(textFromSecondTextField), value2 != 0 {
                let res = value1/value2
                self.delegate?.setTextAnalise(number1: "\(value1)  /", number2: "\(value2)", result: "=\(res)")
            } else {
            self.delegate?.setTextAnalise(number1: "Error!", number2: " ", result: " ")
               
                
            }
        }
    }
    lazy var buttonMulti:UIButton = {
        let btnMulti = UIButton(frame: CGRect(x: 260, y: 300, width: 50, height: 55), primaryAction: btnActionMulti)
        btnMulti.setTitle("*", for: .normal)
        btnMulti.setTitleColor(.white, for: .normal)
        btnMulti.layer.backgroundColor = UIColor(red: 0, green: 0.52, blue: 1, alpha: 1).cgColor
        return btnMulti
    }()
    lazy var btnActionMulti = UIAction { _ in
        if let textFromFirstTextField = self.textField.text, let textFromSecondTextField = self.textField2.text {
            if let value1 = Int(textFromFirstTextField), let value2 = Int(textFromSecondTextField) {
                let res = value1*value2
                self.delegate?.setTextAnalise(number1: "\(value1)  *", number2: "\(value2)", result: "=  \(res)")
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textField)
        view.addSubview(textField2)
        view.addSubview(viewLabel4)
        view.addSubview(buttonPlus)
        view.addSubview(buttonMinus)
        view.addSubview(buttonDivision)
        view.addSubview(buttonMulti)
        
    }
    
}



