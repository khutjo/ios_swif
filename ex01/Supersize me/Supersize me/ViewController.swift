//
//  ViewController.swift
//  Supersize me
//
//  Created by Khutjo MAPUTLA on 2019/10/07.
//  Copyright © 2019 Khutjo MAPUTLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func buttom(_ sender: Any) {
        label.text = "you did it good job"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

