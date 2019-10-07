//
//  ViewController.swift
//  Moar Button !
//
//  Created by Khutjo MAPUTLA on 2019/10/07.
//  Copyright © 2019 Khutjo MAPUTLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var StrNumber1 = "0"
    var StrNumber2 = "0"
    var IntNumber1 = 0
    var IntNumber2 = 0
    var hold = 0;
    @IBOutlet weak var label: UILabel!
    
    func ConCatNum (caller: Int){
        hold = IntNumber1
        IntNumber1 &*= 10
        IntNumber1 &+= caller
        print(caller)
        StrNumber1 = String(IntNumber1)
        label.text = StrNumber1
    }
    
    func ClearScreen(){
        IntNumber1 = 0
        StrNumber1 = "0"
        label.text = StrNumber1
    }
    
    @IBAction func AC(_ sender: Any) {
        ClearScreen()
        print("AC")
    }
    @IBAction func one(_ sender: Any) {
        ConCatNum(caller: 1)
    }
    @IBAction func two(_ sender: Any) {
        ConCatNum(caller: 2)
    }
    @IBAction func three(_ sender: Any) {
        ConCatNum(caller: 3)
    }
    @IBAction func four(_ sender: Any) {
        ConCatNum(caller: 4)
    }
    @IBAction func five(_ sender: Any) {
        ConCatNum(caller: 5)
    }
    @IBAction func six(_ sender: Any) {
        ConCatNum(caller: 6)
    }
    @IBAction func saven(_ sender: Any) {
        ConCatNum(caller: 7)
    }
    @IBAction func eight(_ sender: Any) {
        ConCatNum(caller: 8)
    }
    @IBAction func nine(_ sender: Any) {
        ConCatNum(caller: 9)
    }
    @IBAction func zero(_ sender: Any) {
        ConCatNum(caller: 0)
    }
    @IBAction func devide(_ sender: Any) {
        label.text = "/"
        print("/")
    }
    @IBAction func multiply(_ sender: Any) {
        label.text = "*"
        print("*")
    }
    @IBAction func subtract(_ sender: Any) {
        label.text = "-"
        print("-")
    }
    @IBAction func add(_ sender: Any) {
        label.text = "+"
        print("+")
    }
    @IBAction func invert(_ sender: Any) {
        label.text = "NEG"
        print("NEG")
    }
    @IBAction func eqal(_ sender: Any) {
        label.text = "="
        print("=")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

