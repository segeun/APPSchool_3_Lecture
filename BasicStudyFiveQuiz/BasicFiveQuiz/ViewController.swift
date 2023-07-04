//
//  ViewController.swift
//  BasicFiveQuiz
//
//  Created by 최세근 on 2023/06/21.
//

import UIKit



class ViewController: UIViewController {
    
    
    var resultNumbers: [Int] = [0, 0, 0]
    var userNumbers: [Int] = [-1, -1, -1]

    
    @IBOutlet weak var resultLabel: UILabel!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startGame()
        
    }
    
    
//    @IBAction func pressNumberButton(_ sender: UIButton) {
//
//        let userNumber = sender.tag
//
//        printContent("\(userNumber)번 버튼이 눌렸습니다.")
//
//        if resultNumber == userNumber {
//            resultLabel.text = "맞췄습니다"
//        } else if resultNumber < userNumber {
//            resultLabel.text = "더 큰 숫자로"
//        } else {
//            resultLabel.text = "더 빼도록"
//        }
//    }
    
    
    @IBAction func pressNumber1Button(_ sender: UIButton) {
        
        let userNumber = sender.tag
        
        print("첫번째 숫자를 맞추기 위한 \(userNumber)번 버튼이 눌림")
        
        updateUserNumbers(group: 0, number: userNumber)
    }
    
    
    @IBAction func pressNumber2Button(_ sender: UIButton) {
        
        let userNumber = sender.tag
        
        print("첫번째 숫자를 맞추기 위한 \(userNumber)번 버튼이 눌림")
        updateUserNumbers(group: 1, number: userNumber)

    }
    
    
    @IBAction func pressNumber3Button(_ sender: UIButton) {
        
        let userNumber = sender.tag
        
        print("첫번째 숫자를 맞추기 위한 \(userNumber)번 버튼이 눌림")
        updateUserNumbers(group: 2, number: userNumber)

    }
    
    
 
    
    
    @IBAction func pressNewGameButton(_ sender: Any) {
        startGame()
    }
    
    func startGame() {
        resultLabel.text = "숫자를 선택"
        
        let resultNumber1 = Int.random(in: 0...10)
        let resultNumber2 = Int.random(in: 0...10)
        let resultNumber3 = Int.random(in: 0...10)

        resultNumbers = [resultNumber1, resultNumber2, resultNumber3]
        userNumbers = [-1, -1, -1]
        
        print("\(resultNumbers)")
    }
    
    func updateUserNumbers(group: Int, number: Int) {
        userNumbers[group] = number
        print("\(userNumbers)")
        
        
        var correctCount: Int = 0
        
        
        
        for index in 0...2 {
            if resultNumbers[index] == userNumbers[index] {
                print("\(index)번째 숫자 맞춤")
                correctCount += 1
            }
        }
        
        
        
        if correctCount == 3 {
            resultLabel.text = "정답"
        } else {
            var resultText: String = ""
            
            for userNumber in userNumbers {
                if userNumber > -1 {
                    resultText += "\(userNumber)"
                } else {
                    resultText += " _ "
                }
            }
            
            resultText += " : \(correctCount)개 맞춤"
            
            resultLabel.text = resultText
            
        }

    }
    
}

