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
            let newLabelText = "\(numbers[numbers.count - 1])"
            self.displayLabel.text = newLabelText
        } else {
            self.displayLabel.text = " "
        }
    }
    
    @IBAction func numberOne(_ sender: AnyObject) {
        numbers.append(1)
    }
    
    @IBAction func numberTwo(_ sender: AnyObject) {
        numbers.append(2)
    }
    
    @IBAction func buttonThree(_ sender: AnyObject) {
        numbers.append(3)
    }
    
    @IBAction func buttonFour(_ sender: AnyObject) {
        numbers.append(4)
    }
    
    @IBAction func buttonFive(_ sender: AnyObject) {
        numbers.append(5)
    }
    
    @IBAction func buttonSix(_ sender: AnyObject) {
        numbers.append(6)
    }
    
    @IBAction func buttonSeven(_ sender: AnyObject) {
        numbers.append(7)
    }
    
    @IBAction func buttonEight(_ sender: AnyObject) {
        numbers.append(8)
    }
    
    @IBAction func buttonNine(_ sender: AnyObject) {
        numbers.append(9)
    }
    
    @IBAction func equal(_ sender: AnyObject) {
        
    }
    
    @IBAction func add(_ sender: AnyObject) {
        
    }
    
    @IBAction func subtract(_ sender: AnyObject) {
    
    }
    
    @IBAction func multiply(_ sender: AnyObject) {
    
    }
    
    @IBAction func divide(_ sender: AnyObject) {
    
    }
    
    @IBAction func mod(_ sender: AnyObject) {
    
    }
    
    @IBAction func count(_ sender: AnyObject) {
    
    }
    
    @IBAction func average(_ sender: AnyObject) {
    
    }
    
    @IBAction func factorial(_ sender: AnyObject) {
    
    }
    
    @IBAction func clear(_ sender: AnyObject) {
        numbers.removeAll()
    }


}
