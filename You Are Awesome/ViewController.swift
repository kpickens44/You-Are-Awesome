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
    
    var imageNumber = -1
    var msgNumber = -1
    let totalNumberOfImages = 9
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func msgButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You are Fantastic!",
                        "When the Genius Bar needs help, they call you!",
                        "Fabulous? That's You!",
                        "You've Got The Design Skills of Jony Ive"]
      
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while msgNumber == newMessageNumber
        msgNumber = newMessageNumber
        msgLabel.text = messages[msgNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")

    }
    
}
