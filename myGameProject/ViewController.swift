//
//  ViewController.swift
//  myGameProject
//
//  Created by User on 2016/07/22.
//  Copyright © 2016 bananakingdom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var firstCardImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        let randomNumber = arc4random_uniform(13)+1
        let cardName = String(format: "card%i", randomNumber)
        self.firstCardImage.image = UIImage(named: cardName)
    }

}

