//
//  ViewController.swift
//  colorizedApp
//
//  Created by Anton Stogov on 14/03/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var red: UILabel!
    @IBOutlet var green: UILabel!
    @IBOutlet var blue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 20
        
    }

    
    @IBAction func sliderAction(_ sender: UISlider) {
        viewColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 2
        )

        red.text = String(format: "%.2f", redSlider.value)
        green.text = String(format: "%.2f", greenSlider.value)
        blue.text = String(format: "%.2f", blueSlider.value)
    }
    
}

