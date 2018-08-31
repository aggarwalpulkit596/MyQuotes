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
    
    let defaults = UserDefaults.standard
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
        
        let themeValue = defaults.integer(forKey: "theme")
        if themeValue == 0
        {
            segmentedTheme.selectedSegmentIndex = themeValue
            view.backgroundColor = UIColor.black
            changeTheme(tintcolor: .white)
        }
        else
        {
            segmentedTheme.selectedSegmentIndex = themeValue
            view.backgroundColor = UIColor.white
            changeTheme(tintcolor: .black)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func segmentedChanges(_ sender: Any) {
        
            let index = segmentedTheme.selectedSegmentIndex
            defaults.set(index, forKey: "theme")
        
            if index == 0
            {
                theme = UIColor.black
                changeTheme(tintcolor: .white)

            }
            else
            {
                theme = UIColor.white
                changeTheme(tintcolor: UIColor.black) //UIColor Optional

            }
            view.backgroundColor = theme


        }

    
    @IBAction func switchChanged(_ sender: Any) {
    }

    func changeTheme(tintcolor: UIColor)
    {
        for label in settingsLabels
        {
            label.textColor = tintcolor
        }
        segmentedTheme.tintColor = tintcolor
        switchBorder.onTintColor = tintcolor
        stepperFavourite.tintColor = tintcolor
    }
    
}
