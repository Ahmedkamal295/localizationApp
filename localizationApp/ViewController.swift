//
//  ViewController.swift
//  localizationApp
//
//  Created by Ahmed kamal on 5/10/21.
//

import UIKit
import MOLH
class ViewController: UIViewController {

    //MARK:- outLet
    @IBOutlet weak var btnArabic: UIButton!
    @IBOutlet weak var btnEnglish: UIButton!
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var UserNameTF: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if MOLHLanguage.currentAppleLanguage() == "ar"{
            UserNameTF.textAlignment = .right
        }
    }

    //MARK:- action Buttons
    @IBAction func ActionLogin(_ sender: Any) {
        let alert = UIAlertController(title: "Error".localized,message: "ErrorMsg".localized,preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "Dismiss".localized,style: .cancel, handler: nil))
         self.present(alert, animated: true)
     
     }

    @IBAction func btnArabic(_ sender: Any) {
        MOLH.setLanguageTo("ar")
        MOLH.reset()
      
    }
    
    @IBAction func btnEnglish(_ sender: Any) {
        MOLH.setLanguageTo("en")
        MOLH.reset()
        
     
    }
}
