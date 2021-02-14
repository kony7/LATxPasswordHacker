//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 小西星七 on 2021/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password = Int.random(in: 0...9999)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start() {
        
        for i in 0...9999 {
            
            if i != password{
                
                countLabel.text = String(i)
                
                RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
                
            }else{
                
                var digits = [Int]()
                
                for _ in 0...3 {
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
                
                countLabel.text = "Password is \(i)!!"
            }
        }
        
    }
    
    @IBAction func reset() {
        
        password = Int.random(in: 0...9999)
        
        countLabel.text = "STARTボタンを押して解析開始"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
    }
}

