//
//  ViewController.swift
//  App 4 - Hangman
//
//  Created by John Wehrenberg on 6/30/17.
//  Copyright © 2017 Molly Wehrenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! SecondViewController
        dvc.wordGenerator = ["HAMILTON", "PANCAKE", "STRAWBERRY", "CHALKBOARD", "PICTURE", "WASHINGTON", "PRESIDENT", "DOLL", "TELEVISION", "BASKET", "LIPSTICK", "EARRINGS", "ENGAGEMENT", "WINDOW", "TRAVEL", "AMERICA", "FAMILY", "GREENHOUSE", "FIREPLACE", "NEWSPAPER", "SURFBOARD", "PLAYGROUND"]
    }

}

