//
//  SecondViewController.swift
//  App 4 - Hangman
//
//  Created by John Wehrenberg on 6/30/17.
//  Copyright © 2017 Molly Wehrenberg. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var wordInUse: UILabel!
    
    var wordGenerator = [String]()
    var randomIndex = 0
    var wordUsedForCurrentGame = ""
    var currentWordLetters = [Character]()
    var numberOfCharactersInWord = 0
    var emptyInitializer = ""
    var indexOfLetterChosen = 0
    var stringBeforeLetter = ""
    var stringAfterLetter = ""
    var stringAfterLetterPlaces = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordGenerator = ["HAMILTONE", "JEFFERSON", "HEY", "WOWOWE", "YUPE"]
        randomIndex = Int(arc4random_uniform(UInt32(wordGenerator.count)))
        wordUsedForCurrentGame = wordGenerator[randomIndex]
        currentWordLetters = [Character](wordUsedForCurrentGame.characters)
        print(currentWordLetters)
        numberOfCharactersInWord = wordUsedForCurrentGame.characters.count
        emptyInitializer = String(repeating : "_ ", count : numberOfCharactersInWord)
        wordInUse.text = emptyInitializer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func testForLetterInWord(givenLetter : Character) {
        if currentWordLetters.contains(givenLetter){
            print("YES")
            indexOfLetterChosen = currentWordLetters.index(of: givenLetter)!
            print(indexOfLetterChosen)
            currentWordLetters.remove(at : indexOfLetterChosen)
            print(currentWordLetters)
            stringBeforeLetter = String(repeating : "_ ", count : indexOfLetterChosen)
            stringAfterLetterPlaces = numberOfCharactersInWord - (indexOfLetterChosen + 1)
            stringAfterLetter = String(repeating : "_ ", count : stringAfterLetterPlaces)
            wordInUse.text = stringBeforeLetter + String(givenLetter) + " " + stringAfterLetter
        }
    }
    
    @IBAction func onQ(_ sender: Any) {
    }
    @IBAction func onW(_ sender: Any) {
    }
    @IBAction func onE(_ sender: Any) {
        testForLetterInWord(givenLetter: "E")
    }
    
}
