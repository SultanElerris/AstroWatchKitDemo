//
//  InterfaceController.swift
//  AstroWatchKitTableDemo WatchKit Extension
//
//  Created by Nick McCardel on 11/18/14.
//  Copyright (c) 2014 Blue House Laboratories. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var astroBodies = ["Sun", "Mercury", "Venus", "Earth", "Moon", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]
    
    //Yes, Pluto. Anarchy in the UK.
    
    var context: AnyObject?
    
    @IBOutlet weak var astroTable: WKInterfaceTable!
    
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        loadTableData()
        
        // Configure interface objects here.
        NSLog("%@ init", self)
    }
    
    private func loadTableData() {
        
        astroTable.setNumberOfRows(astroBodies.count, withRowType: "AstroTableRowController")
        
        for (index, astroName) in enumerate(astroBodies) {
            
            let row = astroTable.rowControllerAtIndex(index) as AstroTableRowController
            
            row.astroLabel.setText(astroName)
            
            row.astroImage.setImage(UIImage(named: astroName))
            
        }
        
    }

    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        
        var context = astroBodies[rowIndex]
        
        pushControllerWithName("AstroDetailController", context: context)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
