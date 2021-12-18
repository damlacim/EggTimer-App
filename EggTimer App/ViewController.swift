//
//  ViewController.swift
//  EggTimer App
//
//  Created by Damla Çim on 15.12.2021.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.titleLabel?.text ?? "Soft"
        print(eggTimes[hardness])
    }
    
}

