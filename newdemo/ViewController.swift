//
//  ViewController.swift
//  newdemo
//
//  Created by Jack Huang on 2018/8/14.
//  Copyright © 2018 Jack Huang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //音調＆速度Label顯示到小數點第二位
    @IBAction func changeSlider(_ sender: Any) {
        speedRateText.text = String(format: "%.2f", speedRate.value)
        voiceTypeText.text = String(format: "%.2f", voiceType.value)
    }
    
    //outlet專區
    @IBOutlet weak var speedRateText: UILabel!
    @IBOutlet weak var voiceType: UISlider!
    @IBOutlet weak var voiceTypeText: UILabel!
    @IBOutlet weak var speedRate: UISlider!
    @IBOutlet weak var loveTextField: UITextField!
    
    //說中文加入音調＆速度功能
    @IBAction func buttunPressed(_ sender: Any) {
        
        let speechUtterance = AVSpeechUtterance(string: loveTextField.text!)
        let synthesizer = AVSpeechSynthesizer()
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        speechUtterance.pitchMultiplier = voiceType.value
        speechUtterance.rate = speedRate.value
        synthesizer.speak(speechUtterance)


    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

