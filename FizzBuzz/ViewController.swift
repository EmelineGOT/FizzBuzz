//
//  ViewController.swift
//  FizzBuzz Game
//
//  Created by Emeline Got on 07/10/2017.
//  Copyright © 2017 Emeline Got. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var fizzBuzzLabel: UILabel!
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var currentNumber:Int = 1
    var lostNumber:Int = 0
    var gameOver:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = .gray
        
        numberButton.setTitle("\(currentNumber)", for: .normal)
        self.fizzBuzzLabel.text = "3/5"
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func numerButtonPressed(_ sender: Any) {
        gameOver=(lostNumber==5)
        
        if (currentNumber % 3 == 0){
            lostNumber += 1
            return
        }
        
        if (currentNumber % 5 == 0){
            lostNumber += 1
            return
        }
        
        if (currentNumber % 15 == 0){
            lostNumber += 1
            return
        }
        
        currentNumber+=1
        numberButton.setTitle("\(currentNumber)", for: .normal)
        
        if (gameOver) {
            self.scoreLabel.text = "Game Over"
        }
    }
    
    @IBAction func fizzButtonPressed(_ sender: Any) {

        if (currentNumber%3==0){
            if (currentNumber % 5 != 0){
                currentNumber+=1
                numberButton.setTitle("\(currentNumber)", for: .normal)
                
        }
        }
        
        
        
    }
    
    @IBAction func fizzBuzzButtonPressed(_ sender: Any) {
        if (currentNumber%15==0){
            currentNumber+=1
            numberButton.setTitle("\(currentNumber)", for: .normal)
        }
        
        
    }
    
    @IBAction func buzzButtonPressed(_ sender: Any) {
        if (currentNumber%5==0){
            if (currentNumber % 3 != 0){
                currentNumber+=1
                numberButton.setTitle("\(currentNumber)", for: .normal)
            }
        }
        
        
        
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        currentNumber=1
        numberButton.setTitle("\(currentNumber)", for: .normal)
    }
    
    
}

