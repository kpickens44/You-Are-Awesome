//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Krista Pickens on 1/14/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    @IBAction func msgButtonPressed(_ sender: UIButton) {
        msgLabel.text = "You Are Awesome!"
        imageView.image = UIImage(named: "image1")
    }
    
}

