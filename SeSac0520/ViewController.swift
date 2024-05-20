//
//  ViewController.swift
//  SeSac0520
//
//  Created by 최민경 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    
    var count = [0, 0, 0]
    
    var oneCount = 0
    var twoCount = 0
    var threeCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // labelName: 매개변수(parameter)
        // oneLabel, twoLabel.. : 전달인자(Argument)
        designLabelUI(oneLabel, thisIsTextColor: .blue)
        designLabelUI(twoLabel, thisIsTextColor: .purple)
        designLabelUI(threeLabel, thisIsTextColor: .red)
      
        designButtonUI(oneButton, titleColor: .blue, title: "클릭") // (): 함수 호출 연산자
        designButtonUI(twoButton, titleColor: .green, title: "클릭2")
        designButtonUI(threeButton, titleColor: .brown, title: "클릭3")
    }
    
    // 1. 어떤 버튼을 클릭했는지 어떻게 아나요?
    // -> currentTitle(옵셔널 및 버전 조심)
    // -> tag
    @IBAction func oneButtonClicked(_ sender: UIButton) {
        
        count[sender.tag] = count[sender.tag] + 1
        
    
        oneLabel.text = "\(count[0])번"
        twoLabel.text = "\(count[1])번"
        threeLabel.text = "\(count[2])번"
    }
    
    
    
    // 매개변수 (Parameter)
    // 외부 매개변수(Argument Label) ex. thisIsTextColor
    // 내부 매개변수(Parameter Name) ex. colorName
    // _ : 와일드카드식별자(
    func designLabelUI(_ a : UILabel, thisIsTextColor colorName: UIColor) {
        a.text = "0번"
        a.textColor = colorName
        a.font = .boldSystemFont(ofSize: 30)
        a.textAlignment = .center
    }


    func designButtonUI(_ buttonName: UIButton, titleColor colorName: UIColor, title : String){
        buttonName.setTitleColor(colorName, for: .normal)
        buttonName.setTitle(title, for: .normal)
    
    }
    
    


}

