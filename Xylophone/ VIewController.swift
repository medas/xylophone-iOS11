//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let note: String = "note" + String(sender.tag)

        let soundURL = Bundle.main.url(forResource: note, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()

//        let note: String = "note" + String(sender.tag)
//        if let soundURL = Bundle.main.url(forResource: note, withExtension: "wav") {
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
//
//            AudioServicesPlaySystemSound(mySound)
//        }
    }
    

}

