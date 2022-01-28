//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Krista Pickens on 1/14/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    
    var imageNumber = -1
    var msgNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 9
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch{
                print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
                }
        }else{
            print("ERROR: Could not read data from file sound0")
        }
    }

    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func msgButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You are Fantastic!",
                        "When the Genius Bar needs help, they call you!",
                        "Fabulous? That's You!",
                        "You've Got The Design Skills of Jony Ive"]
      
        msgNumber = nonRepeatingRandom(originalNumber: msgNumber, upperLimit: messages.count-1)
        msgLabel.text = messages[msgNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfSounds-1)
        imageView.image = UIImage(named: "image\(imageNumber)")

        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        if playSoundSwitch.isOn { //if playSoundSwitch is on
            playSound(name: "sound\(soundNumber)") // then play the sound
        }

    }
    @IBAction func playSoundToggled(_ sender: UISwitch) {
       // do not try to stop audioPlayer if audioPlayer is still nil
        if !sender.isOn && audioPlayer != nil { //if .isOn is NOT true
                audioPlayer.stop() //stop playing
            }
        }
    }

