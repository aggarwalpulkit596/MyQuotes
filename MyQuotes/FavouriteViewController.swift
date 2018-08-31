//
//  FavouriteViewController.swift
//  MyQuotes
//
//  Created by Pulkit Aggarwal on 31/08/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class FavouriteViewController: UIViewController {
    @IBOutlet weak var favouriteImgView: UIImageView!
    let defaults = UserDefaults.standard

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = theme
        let savingDefaults = UserDefaults.standard
        let indexSaved = savingDefaults.integer(forKey: "favourite")
        
        let imageName = "quote\(indexSaved)"
        let quoteImage = UIImage(named: imageName)
        favouriteImgView.image = quoteImage
        let themeValue = defaults.integer(forKey: "theme")
        if themeValue == 0
        {
            view.backgroundColor = UIColor.black
        }
        else{
            view.backgroundColor = UIColor.white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


    }


}
