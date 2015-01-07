//
//  ViewController.swift
//  Device
//
//  Created by Marco F.A. Corzani on 06.12.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
        
            self.label.text = "Das ist ein IPad"
    } else {
        
        var detectionSize:CGFloat = 0
        
        if self.interfaceOrientation == .Portrait{
            detectionSize = self.view.bounds.height
        }else {
            detectionSize = self.view.bounds.width
        }
        
        
        // Gerät nach der Höhe ermitteln
        //switch self.view.bounds.height {
        
        //So egal wie rum es gehalten wird!
        switch detectionSize {
        
        case 480:
            self.label.text = "Das ist ein IPhone 4"
        case 568:
            self.label.text = "Das ist ein IPhone 5"
        case 667:
            self.label.text = "Das ist ein IPhone 6"
        case 736:
            self.label.text = "Das ist ein IPhone 6 Plus"
            
        default:
            self.label.text = "Das ist was ganz anderes"
        }
        
      }
        
    }
    
        
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

