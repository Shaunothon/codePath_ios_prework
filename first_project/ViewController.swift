//
//  ViewController.swift
//  first_project
//
//  Created by Shaun Sheffey on 4/11/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //  label names
    @IBOutlet weak var name_label: UILabel!
    @IBOutlet weak var college_label: UILabel!
    @IBOutlet weak var job_label: UILabel!
    
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        //  background color change
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        //  text color change
        let random_color_one = changeColor()
        name_label.textColor = random_color_one
        let random_color_two = changeColor()
        college_label.textColor = random_color_two
        let random_color_three = changeColor()
        job_label.textColor = random_color_three
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
}

