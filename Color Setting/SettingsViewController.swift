//
//  ViewController.swift
//  Color Setting
//
//  Created by Алексей Попов on 02.02.2024.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    var currentColor: UIColor?
    
    var settingsColorVC: UIColor?
    
    weak var delegate: SettingsColorDelegate?
        
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
        
        getColor()
        settingColor()
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }

    @IBAction func doneButtonAction() {
        delegate?.setColor(currentColor)
        dismiss(animated: true)
    }
    
    @IBAction func redSliderAction() {
        redLabel.text = string(from: redSlider)
        settingColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = string(from: greenSlider)
        settingColor()
    }
    
    @IBAction func blueSliderActoin() {
        blueLabel.text = string(from: blueSlider)
        settingColor()
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func settingColor() {
         currentColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
        currecterColorView.backgroundColor = currentColor
    }
    
    private func getColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        settingsColorVC?.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
    }
}

