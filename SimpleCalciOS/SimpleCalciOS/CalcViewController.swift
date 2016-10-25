//
//  CalcViewController.swift
//  SimpleCalciOS
//
//  Created by Matt Bond on 10/23/16.
//  Copyright © 2016 Matt Bond. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {

    private var numbers: [Int] = []
    private var allNumbers: [Int] = []
    private var left: Int = 0
    private var right: Int = 0
    private var operand: String = ""
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func changeLabel() {
        if numbers.count > 0 {
            var newLabelText = ""
            for index in 0...numbers.count - 1 {
                let num = numbers[index]
                newLabelText += "\(num)"
            }
            self.displayLabel.text = newLabelText
        } else {
            self.displayLabel.text = ""
        }
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
    
    @IBAction func numberOne(_ sender: AnyObject) {
        numbers.insert(1, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func numberTwo(_ sender: AnyObject) {
        numbers.insert(2, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func buttonThree(_ sender: AnyObject) {
        numbers.insert(3, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func buttonFour(_ sender: AnyObject) {
        numbers.insert(4, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func buttonFive(_ sender: AnyObject) {
        numbers.insert(5, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func buttonSix(_ sender: AnyObject) {
        numbers.insert(6, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func buttonSeven(_ sender: AnyObject) {
        numbers.insert(7, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func buttonEight(_ sender: AnyObject) {
        numbers.insert(8, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func buttonNine(_ sender: AnyObject) {
        numbers.insert(9, at: numbers.count)
        self.changeLabel()
    }
    
    @IBAction func buttonZero(_ sender: AnyObject) {
        numbers.insert(0, at: numbers.count)
        self.changeLabel()
    }
    
    private func sum() -> Int {
        var total = 0
        var index = 0
        while index < numbers.count {
            total += numbers[index] * self.pow(10, numbers.count - (1 + index))
            index += 1
        }
        return total;
    }

    @IBAction func add(_ sender: AnyObject) {
        self.operand = "+"
        self.left = self.sum()
        numbers.removeAll()
    }
    
    @IBAction func subtract(_ sender: AnyObject) {
        self.operand = "-"
        self.left = self.sum()
        numbers.removeAll()
    }
    
    @IBAction func multiply(_ sender: AnyObject) {
        self.operand = "*"
        self.left = self.sum()
        numbers.removeAll()
    }
    
    @IBAction func divide(_ sender: AnyObject) {
        self.operand = "/"
        self.left = self.sum()
        numbers.removeAll()
    }
    
    @IBAction func mod(_ sender: AnyObject) {
        self.operand = "%"
        self.left = self.sum()
        numbers.removeAll()
    }
    
    @IBAction func equal(_ sender: AnyObject) {
        self.right = self.sum()
        if self.operand == "+" {
            print("\(left) + \(right)")
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
        numbers.removeAll()
        allNumbers.append(left)
        allNumbers.append(right)
    }

    @IBAction func count(_ sender: AnyObject) {
        self.changeLabel(allNumbers.count)
    }
    
    @IBAction func average(_ sender: AnyObject) {
        var total = 0
        for index in 0...allNumbers.count - 1 {
            total += allNumbers[index]
        }
        self.changeLabel(total / allNumbers.count)
    }
    
    @IBAction func factorial(_ sender: AnyObject) {
        
    }
    
    @IBAction func clear(_ sender: AnyObject) {
        numbers.removeAll()
        allNumbers.removeAll()
        self.changeLabel()
        self.left = 0
        self.right = 0
        self.operand = ""
    }
}
