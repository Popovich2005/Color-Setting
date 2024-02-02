//
//  ViewController.swift
//  Color Setting
//
//  Created by Алексей Попов on 02.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var currecterColorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currecterColorView.layer.cornerRadius = 10
        
        redLabel.text = String(0.0)
        greenLabel.text = String(0.0)
        blueLabel.text = String(0.0)
    }

    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        settingColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        settingColor()
    }
    
    @IBAction func blueSliderActoin() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        settingColor()
    }
    
    func settingColor() {
        currecterColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
}

