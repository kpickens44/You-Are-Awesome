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
        let awesomemsg = "You Are Awesome!"
        let greatmsg = "You Are Great!"
        let bombmsg = "You Are Da Bomb!"
        
        
        if msgLabel.text == awesomemsg {
            msgLabel.text = greatmsg
            imageView.image = UIImage(named: "image2")
        } else if msgLabel.text == greatmsg {
            msgLabel.text = bombmsg
            imageView.image = UIImage(named: "image3")
        } else {
            msgLabel.text = awesomemsg
            imageView.image = UIImage(named: "image1")
        }
    }
    
}
