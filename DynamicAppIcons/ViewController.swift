//
//  ViewController.swift
//  DynamicAppIcons
//
//  Created by Raju on 21/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeAppIconAction(_ sender: Any) {
        changeAppIcon("AlternateIcon")
    }
    
    @IBAction func resetAppIconAction(_ sender: Any) {
        changeAppIcon(nil)
    }
    
    private func changeAppIcon(_ iconName: String?) {
        guard (UIApplication.shared.supportsAlternateIcons == true) else { return }
        UIApplication.shared.setAlternateIconName(iconName) { error in
            if let error = error {
                print("App icon failed to change due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully")
            }
        }    }
}

