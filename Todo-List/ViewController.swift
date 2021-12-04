//
//  ViewController.swift
//  Todo-List
//
//  Created by Emre Kök on 4.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        label.text = "Hello World!"
    }
    
}

