//
//  ViewController.swift
//  libPdSwift
//
//  Created by Benjamin Godwin on 7/29/19.
//  Copyright © 2019 Benjamin Godwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var patch:PDPatch?
    
    @IBAction func onSwitchChange(_ sender: UISwitch) {
        
        patch?.onOff(sender.isOn)
        print("patch is on: \(sender.isOn)")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Create an instance of the main.pd patch
        patch = PDPatch(file: "main.pd")
    }


}

