//
//  InterfaceController.swift
//  WatchkitApp Extension
//
//  Created by Christian Baltzer on 25.06.18.
//  Copyright © 2018 Christian Baltzer. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var Ausgabe: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        //Ausgabe.text = "hello World!"
        
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
