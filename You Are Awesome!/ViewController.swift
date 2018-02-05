//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Teddy Murphy on 1/27/18.
//  Copyright © 2018 Murphy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var soundSwitch: UISwitch!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 5
    let numberOfSounds = 5
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - My Own Functions
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {        // Can we load the sound?
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
        } else {
            print("ERROR: file \(soundName) didn't load")
        }
        
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        return newIndex
    }
    
    // MARK: - Actions
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if !soundSwitch.isOn && soundNumber != -1 {
            //Stop playing sound
            awesomePlayer.stop()
        }
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You Are A Genius!",
                        "You Are Bright!",
                        "This app is looking fabulous!"]
    
        // Show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        // Show an image
        awesomeImage.isHidden = false
    
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        // Check for status of sound switch
        if soundSwitch.isOn == true {
            //Randomize number for sound
            soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
            
            // Play a sound
            let soundName = "sound\(soundNumber)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
     
        
    }
    
}
