//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

var audioPlayer : AVAudioPlayer!
let soundNote = ["C", "D", "E", "F", "G", "A", "B"]


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        var tag = sender.tag
        let url = Bundle.main.url(forResource: "\(soundNote[tag])", withExtension: "wav")
             
            audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer.play()
        
    }
    
}

