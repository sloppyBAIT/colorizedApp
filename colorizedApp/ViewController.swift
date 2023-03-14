//
//  ViewController.swift
//  colorizedApp
//
//  Created by Anton Stogov on 14/03/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var blue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 20
        
    }

    
    @IBAction func rgbSlider(_ sender: UISlider) {
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

