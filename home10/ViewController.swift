//
//  ViewController.swift
//  home10
//
//  Created by  Yaroslav on 19.08.21.
//

import UIKit

class ViewController: UIViewController {
  
    
    var secondNumber:Double = 0
    var firstNumber:Double = 0
    var operation:Int = 0
    var proverka:Bool = false
    
    @IBOutlet weak var Label1:UILabel!

    var currentImput:Double {
        get {
            return Double(Label1.text!)!
        }
        set {
            
            Label1.text = "\(newValue)"
            proverka = false
        }
    }
    var tochka = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
}

   
    @IBAction func Number(_ sender: UIButton) {
        
        if proverka == true {
        Label1.text! = String(sender.tag)
            proverka = false
        } else {
            Label1.text! += String(sender.tag)
        }
        secondNumber = Double(Label1.text!)!
        
        
    }
    
   
    @IBAction func Simvol(_ sender: UIButton) {
        
        if Label1.text != "" && sender.tag != 10 && sender.tag != 15  {
            
            firstNumber = Double(Label1.text!)!
           
            }
     
            if sender.tag == 11 {
                Label1.text = "/"
            }
            if sender.tag == 12 {
                Label1.text = "*"
            }
            if sender.tag == 13 {
                Label1.text = "-"
            }
            if sender.tag == 14 {
                Label1.text = "+"
            } else if sender.tag == 15 {
            
                
                
                
                if operation == 11 {
                    Label1.text = String(firstNumber / secondNumber)
                } else if operation == 12 {
                    Label1.text = String(firstNumber * secondNumber)
                } else if operation == 13 {
                    Label1.text = String(firstNumber - secondNumber)
                } else if operation == 14 {
                    Label1.text = String(firstNumber + secondNumber)
                }
                } else if sender.tag == 10 {
                    Label1.text = ""
                    firstNumber = 0
                    secondNumber = 0
                    operation = 0
                    tochka = false
            }
            
        tochka = false
            operation = sender.tag
            proverka = true
        }
    @IBAction func plusMinus (_ sender: UIButton){
        if sender.tag == 16 {
            currentImput = -currentImput
        }
    }
    @IBAction func procent (_ sender: UIButton){
        if sender.tag == 17 {
            if firstNumber == 0 {
                currentImput = currentImput / 100
            } else {
                secondNumber = firstNumber * currentImput / 100
            }
        }
        proverka = false
    }
    @IBAction func tochka (_ sender: UIButton){
        if sender.tag == 18 {
            if !tochka && Label1.text != "" {
                Label1.text = Label1.text! + "."
            tochka = true
            } else if Label1.text == ""{
                Label1.text! += "0."
                tochka = true
            }
        }
    }
    }
    
    
    
    

