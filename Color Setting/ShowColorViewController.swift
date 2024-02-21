//
//  ShowColorViewController.swift
//  Color Setting
//
//  Created by Алексей Попов on 20.02.2024.
//

import UIKit

protocol SettingsColorDelegate:AnyObject {
    func setColor(_ color: UIColor?)
}

final class ShowColorViewController: UIViewController {
            
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? SettingsViewController
        settingsVC?.delegate = self
        settingsVC?.settingsColorVC = view.backgroundColor
    }
}

// MARK: - SettingsColorDelegate
extension ShowColorViewController: SettingsColorDelegate {
    func setColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
}
 


