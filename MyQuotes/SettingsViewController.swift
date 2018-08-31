//
//  SettingsViewController.swift
//  MyQuotes
//
//  Created by Pulkit Aggarwal on 31/08/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet var settingsLabels: [UILabel]!
    

    @IBOutlet weak var switchBorder: UISwitch!
    
    @IBOutlet weak var segmentedTheme: UISegmentedControl!
    
    @IBOutlet weak var stepperFavourite: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func segmentedChanges(_ sender: Any) {
        
            let index = segmentedTheme.selectedSegmentIndex
            var tintcolor:UIColor
            
            if index == 0
            {
                theme = UIColor.black
                tintcolor = UIColor.white

                
            }
            else
            {
                theme = UIColor.white
                tintcolor = UIColor.black

            }
            view.backgroundColor = theme
            for label in settingsLabels
            {
                label.textColor = tintcolor
            }
            segmentedTheme.tintColor = tintcolor
            switchBorder.onTintColor = tintcolor
            stepperFavourite.tintColor = tintcolor

        }

    
    @IBAction func switchChanged(_ sender: Any) {
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
    }
}
