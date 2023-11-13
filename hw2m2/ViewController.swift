//
//  ViewController.swift
//  hw2m2
//
//  Created by Мадина Валиева on 12.11.2023.
//

import UIKit
//HomeWork2M2
protocol ViewControllerDelegate {
    func setTextAnalise(number1: String, number2:String, operation: String, result: String)
}

class ViewController: UIViewController, ViewControllerDelegate {
    
    func setTextAnalise(number1: String, number2:String, operation: String, result: String) {
        viewLabelNumberOne.text = number1
        viewLabelNumberTwo.text = number2
        viewLabelResult.text = result
        viewLabelOperation.text = operation
        
    }
    
    lazy var button: UIButton = {
        let btn = UIButton(frame: CGRect(x: 50, y: 400, width: 300, height: 37), primaryAction: UIAction(handler: { _ in
            let vc = SecondViewController()
            vc.delegate = self
            vc.textField.text = self.viewLabelNumberOne.text
            vc.textField2.text = self.viewLabelNumberTwo.text
            self.navigationController?.pushViewController(vc, animated: true)
        }))
        
        btn.setTitle("Рассчитать", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.backgroundColor = UIColor(red: 0, green: 0.52, blue: 1, alpha: 1).cgColor
        return btn
    }()
    
    var viewLabelCalculate: UILabel = {
        let labelCalculate = UILabel()
        labelCalculate.frame = CGRect(x: 40, y: 100, width: 158, height: 60)
        labelCalculate.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        labelCalculate.font = UIFont.boldSystemFont(ofSize: 24)
        labelCalculate.text = "Калькулятор"
        return labelCalculate
    }()
    
    var viewLabelResults: UILabel = {
        let labelResult = UILabel()
        labelResult.frame = CGRect(x: 155, y: 200, width: 82, height: 19)
        labelResult.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        labelResult.font = UIFont.boldSystemFont(ofSize: 14)
        labelResult.text = "Результат"
        return labelResult
    }()
    
    
    var viewLabelNumberOne: UILabel = {
        let labelNumberOne = UILabel()
        labelNumberOne.frame = CGRect(x: 40, y: 225, width: 150, height: 40)
        labelNumberOne.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        labelNumberOne.font = UIFont.boldSystemFont(ofSize: 40)
    
        return labelNumberOne
    }()
    var viewLabelNumberTwo: UILabel = {
        let labelNumberTwo = UILabel()
        labelNumberTwo.frame = CGRect(x: 160, y: 225, width: 150, height: 40)
        labelNumberTwo.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        labelNumberTwo.font = UIFont.boldSystemFont(ofSize: 40)
        return labelNumberTwo
    }()
    var viewLabelResult: UILabel = {
        let labelNumberResult = UILabel()
        labelNumberResult.frame = CGRect(x: 240, y: 225, width: 150, height: 40)
        labelNumberResult.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        labelNumberResult.font = UIFont.boldSystemFont(ofSize: 40)
        labelNumberResult.text = " "
        return labelNumberResult
    }()
    var viewLabelOperation: UILabel = {
        let labelNumberOperation = UILabel()
        labelNumberOperation.frame = CGRect(x: 120, y: 225, width: 150, height: 40)
        labelNumberOperation.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        labelNumberOperation.font = UIFont.boldSystemFont(ofSize: 40)
        labelNumberOperation.text = " "
        return labelNumberOperation
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(viewLabelCalculate)
        view.addSubview(viewLabelResults)
        view.addSubview(viewLabelNumberOne)
        view.addSubview(viewLabelNumberTwo)
        view.addSubview(viewLabelResult)
        view.addSubview(viewLabelOperation)
        view.addSubview(button)
        
        
    }
    

}
