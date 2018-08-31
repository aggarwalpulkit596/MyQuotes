//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by Pulkit Aggarwal on 30/08/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

var theme : UIColor = UIColor.black

class HomeViewController: UIViewController {
    
    var quoteArray = ["quote0","quote1","quote2","quote3","quote4","quote5","quote6","quote7","quote8","quote9"]
    var arrayIndex = 0


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = theme
    }
    @IBOutlet weak var quoteImgView: UIImageView!
    
    
    @IBAction func favouriteClicked(_ sender: Any) {
        let savingDefaults = UserDefaults.standard
        savingDefaults.set(arrayIndex, forKey: "favourite")
    }
    @IBAction func previousclicked(_ sender: Any) {
        if arrayIndex > 0
        {
            arrayIndex -= 1
            
            let imageName = quoteArray[arrayIndex]
            let quoteImage = UIImage(named: imageName)
            quoteImgView.image = quoteImage
        }
    }
    
    @IBAction func nextclicked(_ sender: Any) {
        
        if arrayIndex<quoteArray.count-1
        {
            arrayIndex += 1
            
            let imageName = quoteArray[arrayIndex]
            let quoteImage = UIImage(named: imageName)
            quoteImgView.image = quoteImage
        }
    }
}
