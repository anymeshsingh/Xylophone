//
//  ViewController.swift
//  Xylophone
//
//  Created by Animesh Singh on 13/03/2019.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    let audioArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let note = audioArray[sender.tag-1]
        
        playSound(note: note)

    }
    
    func playSound(note: String){
        let soundURL = Bundle.main.url(forResource: note, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
  

}

