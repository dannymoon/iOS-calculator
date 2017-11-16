//
//  ViewController.swift
//  calculator
//
//  Created by Danny Moon on 11/4/17.
//  Copyright © 2017 Danny Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NumberLabel: UILabel!
    @IBOutlet weak var decimalKey: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var newOperation = true
    func AddnumberToInput(number:String) {
        var textNumber = String(NumberLabel.text!)
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        NumberLabel.text = textNumber
    }

    @IBAction func Button0(_ sender: Any) {
        AddnumberToInput(number: "0")
    }
    @IBAction func ButtonDot(_ sender: UIButton) {
        AddnumberToInput(number: ".")
    }
    @IBAction func Button1(_ sender: Any) {
        AddnumberToInput(number: "1")
    }
    @IBAction func Button2(_ sender: Any) {
        AddnumberToInput(number: "2")
    }
    @IBAction func Button3(_ sender: Any) {
        AddnumberToInput(number: "3")
    }
    @IBAction func Button4(_ sender: Any) {
        AddnumberToInput(number: "4")
    }
    @IBAction func Button5(_ sender: Any) {
        AddnumberToInput(number: "5")
    }
    @IBAction func Button6(_ sender: Any) {
        AddnumberToInput(number: "6")
    }
    @IBAction func Button7(_ sender: Any) {
        AddnumberToInput(number: "7")
    }
    @IBAction func Button8(_ sender: Any) {
        AddnumberToInput(number: "8")
    }
    @IBAction func Button9(_ sender: Any) {
        AddnumberToInput(number: "9")
    }
    var op = "+"
    var number1: Double?
    @IBAction func ButtonMulti(_ sender: Any) {
        op = "*"
        number1 = Double(NumberLabel.text!)
        newOperation = true
    }
    @IBAction func ButtonDiv(_ sender: Any) {
        op = "/"
        number1 = Double(NumberLabel.text!)
        newOperation = true
    }
    
    @IBAction func ButtonSubtract(_ sender: Any) {
        op = "-"
        number1 = Double(NumberLabel.text!)
        newOperation = true
    }
    
    @IBAction func ButtonAdd(_ sender: Any) {
        op = "+"
        number1 = Double(NumberLabel.text!)
        newOperation = true
    }
    
    @IBAction func ButtonClear(_ sender: Any) {
        NumberLabel.text = "0"
        newOperation = true
        decimalKey.isEnabled = true
    }
    
    @IBAction func ButtonChange(_ sender: Any) {
        var textNumber = String(NumberLabel.text!)
        textNumber = "-" + textNumber
        NumberLabel.text = textNumber
    }
    
    @IBAction func ButtonPercent(_ sender: Any) {
        var number1 = Double(NumberLabel.text!)
        number1 = number1!/100.0
        NumberLabel.text = String(number1!)
        newOperation = true
    }
    
    
    @IBAction func ButtonEqual(_ sender: Any) {
        let number2 = Double(NumberLabel.text!)
        var result:Double?
        switch op {
        case "*":
            result = number1! * number2!
        case "/":
            result = number1! / number2!
        case "-":
            result = number1! - number2!
        case "+":
            result = number1! + number2!
        default:
            result = 0.0
        }
        NumberLabel.text = String(result!)
        newOperation = true
    }
    
    
}

