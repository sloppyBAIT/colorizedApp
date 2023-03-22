//
//  ColorSettingsViewController.swift
//  colorizedApp
//
//  Created by Anton Stogov on 21/03/2023.
//

import UIKit

protocol ColorSettingsViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorViewController = segue.destination as? ColorSettingsViewController else { return }
        colorViewController.delegate = self
        colorViewController.viewColor = view.backgroundColor
    }
}

extension MainViewController: ColorSettingsViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

