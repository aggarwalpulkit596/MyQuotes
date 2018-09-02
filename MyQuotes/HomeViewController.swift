//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by Pulkit Aggarwal on 30/08/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

var theme : UIColor = UIColor.black
var imageBorder = false

class HomeViewController: UIViewController {
    
    var quoteArray = ["quote0","quote1","quote2","quote3","quote4","quote5","quote6","quote7","quote8","quote9"]
    var arrayIndex = 0
    let defaults = UserDefaults.standard

    @IBOutlet var homeButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = theme
        let themeValue = defaults.integer(forKey: "theme")
        if themeValue == 0
        {
            view.backgroundColor = UIColor.black
            setButtonBorder(color: .white)
        }
        else{
            view.backgroundColor = UIColor.white
            setButtonBorder(color: .black)
        }
        if imageBorder
        {
            quoteImgView.layer.borderColor = UIColor.red.cgColor
            quoteImgView.layer.borderWidth = 5.0
        }
        else
        {
            quoteImgView.layer.borderWidth = 0.0
        }
        quoteImgView.layer.cornerRadius = 5.0
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
    func setButtonBorder(color: UIColor){
        
        for buttons in homeButtons
        {
            buttons.layer.cornerRadius = 25.0
            buttons.layer.borderWidth = 3.5
            buttons.layer.borderColor = color.cgColor
        }
    }
}
