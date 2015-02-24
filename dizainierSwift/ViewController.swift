//
//  ViewController.swift
//  dizainierSwift
//
//  Created by Rémi LEBLOND on 24/02/2015.
//  Copyright (c) 2015 Rémi LEBLOND. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stpValue: UIStepper!
    @IBOutlet weak var segUnit: UISegmentedControl!
    @IBOutlet weak var segDix: UISegmentedControl!
    @IBOutlet weak var txtValue: UITextField!
    @IBOutlet weak var btnReset: UIButton!
    @IBOutlet weak var swiGeek: UISwitch!
    
    var curValue: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeValue(sender: AnyObject) {
        txtValue.text = String(format: "%2.0f", stpValue.value)
    }
    

}

