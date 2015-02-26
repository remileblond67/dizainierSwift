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
    @IBOutlet weak var swiGeek: UISwitch!
    @IBOutlet weak var sldValue: UISlider!
    @IBOutlet weak var btnReset: UIButton!
    
    var curValue: Int = 0;
    
    let magicNumber: Int = 42;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeValue(sender: AnyObject) {
        
        if sender === stpValue {
            println("Ca vient du stepper")
            curValue = Int(stpValue.value)
        } else if sender === segUnit {
            println("Ca vient des unités")
            println(segUnit.selectedSegmentIndex)
            curValue = segUnit.selectedSegmentIndex + segDix.selectedSegmentIndex*10
        } else if sender === segDix {
            println("Ca vient des dizaines")
            curValue = segUnit.selectedSegmentIndex + segDix.selectedSegmentIndex*10
        } else if sender === sldValue {
            println("Ca vient du slider")
            curValue = Int(sldValue.value)
        } else if sender === btnReset {
            println("Ca vient du reset")
            curValue = 0
        }
        
        println(curValue)
        
        // Affichage de la valeur
        if swiGeek.on {
            txtValue.text = String(format: "%x", curValue)
        } else {
            txtValue.text = String(format: "%2.0d", curValue)
        }
        if curValue == magicNumber {
            txtValue.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        } else {
            txtValue.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        // Mise à jour des contrôleurs
        stpValue.value = Double(curValue)
        sldValue.value = Float(curValue)
        segUnit.selectedSegmentIndex = curValue % 10
        segDix.selectedSegmentIndex = curValue / 10
    }
    

}

