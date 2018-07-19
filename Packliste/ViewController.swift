//
//  ViewController.swift
//  Packliste
//
//  Created by Christian Baltzer on 06.06.18.
//  Copyright © 2018 Christian Baltzer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var work = Core()
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var was: UISegmentedControl!
    @IBOutlet weak var wieviel: UISegmentedControl!
    @IBOutlet weak var wie: UISegmentedControl!
    
    
    @IBAction func weiter(_ sender: Any) {
        work.SliderUpdate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        work = Core(withLabel: Name, withSegment: was, withSegment: wieviel, withSegment: wie)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

