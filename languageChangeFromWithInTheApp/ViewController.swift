

//  ViewController.swift
//  languageChangeFromWithInTheApp
//
//  Created by Himansu Sekhar Panigrahi on 23/01/20.
//  Copyright © 2020 Himansu Sekhar Panigrahi. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var lblFname: UILabel!
    
    @IBOutlet weak var lblLname: UILabel!
    
    
    
    @IBOutlet weak var segControl: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        segControl.addTarget(self, action: #selector(segControlEH), for: UIControl.Event.valueChanged)
       
    }
    
    
    @objc func segControlEH()
    {
        if(segControl.selectedSegmentIndex == 0)
        {
            lblFname.text = "FirstNameKey".localizableString(loc: "en")
            
            lblLname.text = "LastNameKey".localizableString(loc: "en")
        }
        else
        {
            lblFname.text = "FirstNameKey".localizableString(loc: "es")
            
            lblLname.text = "LastNameKey".localizableString(loc: "es")
        }
    }
    
    
    


}

extension String
{
    func localizableString(loc:String) -> String
    {
        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
        
        let bundle = Bundle(path: path!)
        
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}

