//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Krista Pickens on 1/14/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var msgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 viewDidLoad has run!")
        msgLabel.text = "Fabulous? That's You!"
    }

    @IBAction func msgButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        msgLabel.text = "You Are Awesome!"
    }
    
}

