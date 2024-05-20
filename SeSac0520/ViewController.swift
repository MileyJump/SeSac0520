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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // labelName: 매개변수(parameter)
        // oneLabel, twoLabel.. : 전달인자(Argument)
        designLabelUI(oneLabel, thisIsTextColor: .blue)
        designLabelUI(twoLabel, thisIsTextColor: .purple)
        designLabelUI(threeLabel, thisIsTextColor: .red)
      
        designButtonUI(oneButton, titleColor: .blue, title: "클릭") // (): 함수 호출 연산자
        designButtonUI(twoButton, titleColor: .green, title: "클릭")
        designButtonUI(threeButton, titleColor: .brown, title: "클릭")
    }
    
    @IBAction func oneButtonClicked(_ sender: UIButton) {
        oneLabel.text = "4567"
    }
    
    // 매개변수 (Parameter)
    // 외부 매개변수(Argument Label) ex. thisIsTextColor
    // 내부 매개변수(Parameter Name) ex. colorName
    // _ : 와일드카드식별자(
    func designLabelUI(_ a : UILabel, thisIsTextColor colorName: UIColor) {
        a.text = "0"
        a.textColor = colorName
        a.font = .boldSystemFont(ofSize: 30)
        a.textAlignment = .center
    }


    func designButtonUI(_ buttonName: UIButton, titleColor colorName: UIColor, title : String){
        buttonName.setTitleColor(colorName, for: .normal)
        buttonName.setTitle(title, for: .normal)
    
    }
    
    


}

