//
//  ViewController.swift
//  High School Schedule
//
//  Created by JAM2 on 5/27/15.
//  Copyright (c) 2015 JAM2. All rights reserved.
//

import UIKit

var classDict = ["aPeriod": "", "bPeriod": "", "cPeriod": "", "dPeriod": "", "ePeriod": "", "fPeriod": "", "xPeriod": "", "sport": ""]

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var field: UITextField!
    
    func updateClasses(className:String) {
        
        classDict[className] = field.text
        
        field.text = ""
        
    }
    
    @IBAction func aPeriodButton(sender: UIButton) {
        
        updateClasses("aPeriod")
        
    }
    
    @IBAction func bPeriodButton(sender: UIButton) {
        
        updateClasses("bPeriod")
        
    }
    
    @IBAction func cPeriodButton(sender: UIButton) {
        
        updateClasses("cPeriod")
        
    }
    
    @IBAction func dPeriodButton(sender: UIButton) {
        
        updateClasses("dPeriod")
        
    }
    
    @IBAction func ePeriodButton(sender: UIButton) {
        
        updateClasses("ePeriod")
        
    }
    
    @IBAction func fPeriodButton(sender: UIButton) {
        
        updateClasses("fPeriod")
        
    }
    
    @IBAction func xPeriodButton(sender: UIButton) {
        
        updateClasses("xPeriod")
        
    }
    
    @IBAction func sportButton(sender: UIButton) {
        
        updateClasses("sport")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

