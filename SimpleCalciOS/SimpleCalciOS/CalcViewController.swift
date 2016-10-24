//
//  CalcViewController.swift
//  SimpleCalciOS
//
//  Created by Matt Bond on 10/23/16.
//  Copyright © 2016 Matt Bond. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {

    private var seperate: Bool = false
    private var exponentCalc: [Int] = []
    private var numbers: [Int] = []
    private var operand: String = ""
    private var left: Int = 0
    private var right: Int = 0
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func changeLabel(_ num: Int) {
        let newLabelText = "\(num)"
        self.displayLabel.text = newLabelText
    }
    
    private func pow(_ base: Int, _ exponent: Int) -> Int {
        if exponent == 0 {
            return 1
        } else {
            var total = 1
            for _ in 1...exponent {
                total = total * base
            }
            return total
        }
    }
    
    private func addToSide(_ num: Int) {
        if seperate {
            right += num * pow(10, exponentCalc.count - 1)
            self.changeLabel(right)
        } else {
            left += num * pow(10, exponentCalc.count - 1)
            self.changeLabel(left)
        }
    }
    
    @IBAction func numberOne(_ sender: AnyObject) {
        exponentCalc.append(1)
        self.addToSide(1)
    }
    
    @IBAction func numberTwo(_ sender: AnyObject) {
        exponentCalc.append(2)
        self.addToSide(2)
    }
    
    @IBAction func buttonThree(_ sender: AnyObject) {
        exponentCalc.append(3)
        self.addToSide(3)
    }
    
    @IBAction func buttonFour(_ sender: AnyObject) {
        exponentCalc.append(4)
        self.addToSide(4)
    }
    
    @IBAction func buttonFive(_ sender: AnyObject) {
        exponentCalc.append(5)
        self.addToSide(5)
    }
    
    @IBAction func buttonSix(_ sender: AnyObject) {
        exponentCalc.append(6)
        self.addToSide(6)
    }
    
    @IBAction func buttonSeven(_ sender: AnyObject) {
        exponentCalc.append(7)
        self.addToSide(7)
    }
    
    @IBAction func buttonEight(_ sender: AnyObject) {
        exponentCalc.append(8)
        self.addToSide(8)
    }
    
    @IBAction func buttonNine(_ sender: AnyObject) {
        exponentCalc.append(9)
        self.addToSide(9)
    }

    @IBAction func add(_ sender: AnyObject) {
        self.seperate = true
        self.operand = "+"
        exponentCalc.removeAll()
    }
    
    @IBAction func subtract(_ sender: AnyObject) {
        self.seperate = true
        self.operand = "-"
        exponentCalc.removeAll()
    }
    
    @IBAction func multiply(_ sender: AnyObject) {
        self.seperate = true
        self.operand = "*"
        exponentCalc.removeAll()
    }
    
    @IBAction func divide(_ sender: AnyObject) {
        self.seperate = true
        self.operand = "/"
        exponentCalc.removeAll()
    }
    
    @IBAction func mod(_ sender: AnyObject) {
        self.seperate = true
        self.operand = "%"
        exponentCalc.removeAll()
    }
    
    @IBAction func equal(_ sender: AnyObject) {
        if self.operand == "+" {
            self.changeLabel(left + right)
        } else if self.operand == "-" {
            self.changeLabel(left - right)
        } else if self.operand == "*" {
            self.changeLabel(left * right)
        } else if self.operand == "/" {
            self.changeLabel(left / right)
        } else if self.operand == "%" {
            self.changeLabel(left % right)
        }
        exponentCalc.removeAll()
        numbers.append(left)
        numbers.append(right)
    }
    
    @IBAction func count(_ sender: AnyObject) {
        self.changeLabel(numbers.count)
    }
    
    @IBAction func average(_ sender: AnyObject) {
        var total = 0
        for index in 0...numbers.count - 1 {
            total += numbers[index]
        }
        self.changeLabel(total / numbers.count)
    }
    
    @IBAction func factorial(_ sender: AnyObject) {
        var total = 0
        for index in 0...numbers.count - 1 {
            total += numbers[index]
        }
        self.changeLabel(total / numbers.count)
    }
    
    @IBAction func clear(_ sender: AnyObject) {
        exponentCalc.removeAll()
        numbers.removeAll()
    }
}
