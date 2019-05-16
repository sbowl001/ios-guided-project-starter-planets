//
//  SettingsViewController.swift
//  Planets
//
//  Created by Stephanie Bowles on 5/16/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var plutoSwitch: UISwitch!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.updateViews()
    }
    
    private func updateViews() {
        let userDefaults = UserDefaults.standard
        self.plutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
    }

    @IBAction func plutoSwitchToggled(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
 
}

extension String {
    static var shouldShowPlutoKey = "shouldShowPlutoKey"
}
