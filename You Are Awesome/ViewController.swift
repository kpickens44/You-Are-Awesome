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
    
    var imageNumber = 0
    var msgNumber = 0
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
        msgLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
//        msgLabel.text = messages[msgNumber]
//        msgNumber += 1
//        if msgNumber == messages.count {
//            msgNumber = 0
//        }
        
        // let imageName = "image" + String(imageNumber)
 //       let imageName = "image\(imageNumber)"
 //       imageView.image = UIImage(named: imageName)
 //       imageNumber = imageNumber + 1
//      if imageNumber == 10 {
 //           imageNumber = 0
  //      }
        
      
        
        //        let awesomemsg = "You Are Awesome!"
        //        let greatmsg = "You Are Great!"
        //        let bombmsg = "You Are Da Bomb!"
        //
        //
        //        if msgLabel.text == awesomemsg {
        //            msgLabel.text = greatmsg
        //            imageView.image = UIImage(named: "image1")
        //        } else if msgLabel.text == greatmsg {
        //            msgLabel.text = bombmsg
        //            imageView.image = UIImage(named: "image2")
        //        } else {
        //            msgLabel.text = awesomemsg
        //            imageView.image = UIImage(named: "image0")
        //        }
    }
    
}
