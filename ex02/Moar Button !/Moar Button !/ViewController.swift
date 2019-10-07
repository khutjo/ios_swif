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
    var GloOp =  0
    var hold = 0;
    @IBOutlet weak var label: UILabel!
    
    func PutOut(){
        StrNumber1 = String(IntNumber1)
        label.text = StrNumber1
    }
    func ConCatNum (caller: Int){
        hold = IntNumber1
        IntNumber1 &*= 10
        if (hold > 0 && IntNumber1 < 0) || (hold < 0 && IntNumber1 > 0 ){
            IntNumber1 = hold
            return
        }
        IntNumber1 &+= caller
        if (hold > 0 && IntNumber1 < 0) || (hold < 0 && IntNumber1 > 0 ){
            IntNumber1 = hold
            return
        }
        print(caller)
        PutOut()
    }
    
    func DoOp(){
        if GloOp == 1{
            IntNumber1 = IntNumber1 + IntNumber2
        }
        if GloOp == 2{
            IntNumber1 = IntNumber1 - IntNumber2
        }
        if GloOp == 3{
            IntNumber1 = IntNumber1 * IntNumber2
        }
        if GloOp == 4{
            IntNumber1 = IntNumber1 / IntNumber2
        }
    }
    
    func AddDoOp(op: Int){
        if GloOp != 0{
            DoOp()
        }
        if op == 1{
            GloOp = 1
        }
        if op == 2{
            GloOp = 2
        }
        if op == 3{
            GloOp = 3
        }
        if op == 4{
            GloOp = 4
        }
        IntNumber2 = IntNumber1
        PutOut()
    }
    
    func ClearScreen(){
        IntNumber1 = 0
        StrNumber1 = "0"
        IntNumber2 = 0
        StrNumber2 = "0"
        GloOp = 0
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
        AddDoOp(op: 4)
        print("/")
    }
    @IBAction func multiply(_ sender: Any) {
        AddDoOp(op: 3)
        print("*")
    }
    @IBAction func subtract(_ sender: Any) {
        AddDoOp(op: 2)
        print("-")
    }
    @IBAction func add(_ sender: Any) {
        AddDoOp(op: 1)
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

