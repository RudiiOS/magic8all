//
//  ViewController.swift
//  Magic8all
//
//  Created by Leart on 12/15/18.
//  Copyright © 2018 RudiLeart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5", ]
    
    var randNumb: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            randAnswer()
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randAnswer()
    }
    
    func randAnswer(){
        randNumb = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randNumb])
    }
    
}

