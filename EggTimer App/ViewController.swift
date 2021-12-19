//
//  ViewController.swift
//  EggTimer App
//
//  Created by Damla Çim on 15.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.titleLabel?.text ?? "Soft"
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        if secondPassed < totalTime {
            secondPassed += 1
            let percentageProgress = Float(secondPassed) / Float(totalTime)
            progressBar.progress = percentageProgress
            
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
        }
    }
    
}

