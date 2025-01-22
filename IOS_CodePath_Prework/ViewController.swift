//
//  ViewController.swift
//  IOS_CodePath_Prework
//
//  Created by Majd Alsehnawi on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
            view.backgroundColor = randomColor
    }
    
    @IBAction func resetViewButton(_ sender: UIButton) {
        nameLabel.font = UIFont.systemFont(ofSize: 25)
        collegeLabel.font = UIFont.systemFont(ofSize: 25)
        jobLabel.font = UIFont.systemFont(ofSize: 25)
        view.backgroundColor = .systemBackground
    }
    
    
    @IBAction func randomFontButton(_ sender: UIButton) {
        nameLabel.font = randomFontGiver()
        collegeLabel.font = randomFontGiver()
        jobLabel.font = randomFontGiver()

    }
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var collegeLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
    
    
    let fonts: [UIFont] = [
        UIFont(name: "Avenir Next", size: 25) ?? UIFont.systemFont(ofSize: 25),
        UIFont(name: "Helvetica Neue", size: 50) ?? UIFont.systemFont(ofSize: 50),
            UIFont(name: "Comic Sans MS", size: 25) ?? UIFont.systemFont(ofSize: 25),
            UIFont(name: "Chalkduster", size: 30) ?? UIFont.systemFont(ofSize: 30),
            UIFont(name: "Papyrus", size: 35) ?? UIFont.systemFont(ofSize: 35),                  UIFont(name: "Marker Felt", size: 20) ?? UIFont.systemFont(ofSize: 20),
            UIFont(name: "Snell Roundhand", size: 25) ?? UIFont.systemFont(ofSize: 25),
            UIFont(name: "Zapfino", size: 40) ?? UIFont.systemFont(ofSize: 40)
        ]
    

    func randomFontGiver() -> UIFont {
        let ranNum = Int.random(in: 0...fonts.count - 1)
        
        return fonts[ranNum]
    }
    
   
    
    
    
}

